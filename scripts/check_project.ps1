$ErrorActionPreference = "Stop"

$projectRoot = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
$errors = [System.Collections.Generic.List[string]]::new()
$warnings = [System.Collections.Generic.List[string]]::new()
$strictUtf8 = [System.Text.UTF8Encoding]::new($false, $true)

function Add-Error {
    param([string]$Message)
    $errors.Add($Message)
}

$requiredFiles = @(
    ".codex/config.toml",
    ".editorconfig",
    ".gitignore",
    "AGENTS.md",
    "PROJECT_STATUS.md",
    "README.md",
    "code/README.md",
    "data/README.md",
    "legacy/README.md",
    "outputs/README.md",
    "paper/README.md",
    "references/README.md",
    "scripts/check_project.ps1"
)

foreach ($relativePath in $requiredFiles) {
    $fullPath = Join-Path $projectRoot $relativePath
    if (-not (Test-Path -LiteralPath $fullPath -PathType Leaf)) {
        Add-Error "Missing required file: $relativePath"
    }
}

$expectedModules = @(
    "00_POST_REVISION_MODEL_SKELETON.md",
    "00_MASTER_model_memo.md",
    "01_research_mechanism.md",
    "02_environment_firms.md",
    "03_government_game.md",
    "04_planner_equilibrium.md",
    "05_quantification_solution.md",
    "06_counterfactuals.md",
    "07_literature_positioning.md",
    "08_extensions.md",
    "99_decision_log.md"
)

$moduleDirectory = Join-Path $projectRoot "model_notes"
$actualModules = @(
    Get-ChildItem -LiteralPath $moduleDirectory -File -Filter "*.md" |
        Select-Object -ExpandProperty Name |
        Sort-Object
)

foreach ($module in $expectedModules) {
    if ($module -notin $actualModules) {
        Add-Error "Missing model module: model_notes/$module"
    }
}

foreach ($module in $actualModules) {
    if ($module -notin $expectedModules) {
        $warnings.Add("Unexpected Markdown file in model_notes: $module")
    }
}

$activeMarkdown = @(
    Get-ChildItem -LiteralPath $projectRoot -Recurse -File -Filter "*.md" |
        Where-Object { $_.FullName -notlike (Join-Path $projectRoot "legacy\*") }
)

foreach ($file in $activeMarkdown) {
    try {
        $text = [System.IO.File]::ReadAllText($file.FullName, $strictUtf8)
    }
    catch {
        Add-Error "Invalid UTF-8: $($file.FullName.Substring($projectRoot.Length + 1))"
        continue
    }

    if ($text.Contains([char]0xFFFD)) {
        Add-Error "Replacement character found: $($file.FullName.Substring($projectRoot.Length + 1))"
    }

    if ($text -match "(?m)[A-Za-z]:\\") {
        Add-Error "Absolute Windows path found in active Markdown: $($file.FullName.Substring($projectRoot.Length + 1))"
    }

    $matches = [regex]::Matches($text, "\[[^\]]+\]\((?<target>[^)]+)\)")
    foreach ($match in $matches) {
        $target = $match.Groups["target"].Value.Trim().Trim("<", ">")
        if (
            $target.StartsWith("http://") -or
            $target.StartsWith("https://") -or
            $target.StartsWith("mailto:") -or
            $target.StartsWith("#")
        ) {
            continue
        }

        $targetWithoutAnchor = $target.Split("#")[0]
        if ([string]::IsNullOrWhiteSpace($targetWithoutAnchor)) {
            continue
        }

        $decodedTarget = [System.Uri]::UnescapeDataString($targetWithoutAnchor)
        $resolvedTarget = [System.IO.Path]::GetFullPath(
            (Join-Path $file.DirectoryName $decodedTarget)
        )

        if (-not $resolvedTarget.StartsWith($projectRoot, [System.StringComparison]::OrdinalIgnoreCase)) {
            Add-Error "Link leaves project root in $($file.Name): $target"
        }
        elseif (-not (Test-Path -LiteralPath $resolvedTarget)) {
            Add-Error "Broken local link in $($file.Name): $target"
        }
    }
}

$legacyRoot = Join-Path $projectRoot "legacy"
$legacyReadmePath = Join-Path $legacyRoot "README.md"
if (Test-Path -LiteralPath $legacyReadmePath) {
    $legacyReadme = [System.IO.File]::ReadAllText($legacyReadmePath, $strictUtf8)
    $legacyPayloads = Get-ChildItem -LiteralPath $legacyRoot -Recurse -File |
        Where-Object { $_.FullName -ne $legacyReadmePath }

    foreach ($payload in $legacyPayloads) {
        if (-not $legacyReadme.Contains($payload.Name)) {
            Add-Error "Legacy file is not documented: $($payload.Name)"
        }
    }
}

$masterPath = Join-Path $moduleDirectory "00_MASTER_model_memo.md"
if (Test-Path -LiteralPath $masterPath) {
    $masterText = [System.IO.File]::ReadAllText($masterPath, $strictUtf8)
    if ($masterText -notmatch "\*\*Last updated:\*\* \d{4}-\d{2}-\d{2}") {
        Add-Error "MASTER memo is missing an ISO-format Last updated date."
    }
}

foreach ($warning in $warnings) {
    Write-Warning $warning
}

if ($errors.Count -gt 0) {
    Write-Host "Project check failed with $($errors.Count) error(s):" -ForegroundColor Red
    foreach ($message in $errors) {
        Write-Host "  - $message" -ForegroundColor Red
    }
    exit 1
}

Write-Host "Project check passed." -ForegroundColor Green
Write-Host "  Active Markdown files checked: $($activeMarkdown.Count)"
Write-Host "  Model modules checked: $($actualModules.Count)"
Write-Host "  Warnings: $($warnings.Count)"
