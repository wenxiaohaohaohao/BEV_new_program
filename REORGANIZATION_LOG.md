# Reorganization Log

**Date:** 2026-06-08

**Scope:** `BEV_new_program` only

**Result:** `NEV_model_project` is now the single project root for the NEV macro
model work.

## What changed

- The outer `BEV_new_program` directory now contains only `NEV_model_project`.
- Earlier plans, drafts, source notes, and alternative empirical designs were
  moved into `legacy/` inside the project so the future standalone NEV workspace
  remains self-contained.
- Active model notes now link to their historical sources in `legacy/`.
- Project-level Codex instructions, project-local settings, directory contracts,
  and a validation script were added.
- No files outside `BEV_new_program` were modified.

## Active project files

| Area | Current role |
|---|---|
| `README.md` | Project entry point and source-of-truth hierarchy |
| `PROJECT_STATUS.md` | Current phase, open decisions, and next milestone |
| `AGENTS.md` | Codex/contributor operating rules |
| `.codex/config.toml` | Project-local sandbox and approval defaults |
| `model_notes/` | Current model specification and decision log |
| `code/`, `data/`, `paper/`, `references/`, `outputs/` | Formal project scaffold with README contracts |
| `scripts/check_project.ps1` | Structural validation script |
| `legacy/` | Historical archive, not authoritative baseline |

## Legacy classification

| Category | Files | Interpretation |
|---|---|---|
| `legacy/planning/` | `Claude.md`; `NEV_model_notes_Codex_plan.md`; `NEV_model_notes_简化结构_确认版.md` | Superseded planning and module-structure files |
| `legacy/model_drafts/` | `NEV_model_memo_en.md`; `NEV_model_memo_en.pdf`; `NEV_产业政策_地方竞争_模型整合notes.md`; `内卷在模型中的位置_notes.md`; `地方政府博弈_notes.md`; `宏观模型_单一政策wedge_修正版.md` | Historical model sources; not current baseline, but useful for selective reuse |
| `legacy/alternative_designs/` | `NEV_替代NAIZ_产业政策内卷研究方案_给Codex.md`; `新能源汽车_产业政策价格战供应链创新_给Codex执行版 (1).md` | Alternative supply-chain/empirical research route; separate from the current macro-model baseline |

## Current source-of-truth rule

Use `model_notes/00_MASTER_model_memo.md` as the accepted baseline. Use modules
`01` through `08` for detail, alternatives, and open questions. Use
`model_notes/99_decision_log.md` for resolved choices. Use `legacy/` only for
history or selective reuse after checking against the active model.

## Validation command

Run from `NEV_model_project`:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\check_project.ps1
```
