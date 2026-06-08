# AGENTS.md

## Project boundary

- Treat this directory as the complete NEV macro-model project root.
- Do not modify parent or sibling directories. They belong to the separate AI
  compute-subsidy project.
- Do not introduce dependencies on files outside this directory.
- Keep the project movable: use paths relative to this root in code, notes,
  scripts, LaTeX, and configuration.

## Communication

- Reply in the same language as the user. Keep technical terms in English where
  that is clearer.
- Explain conclusions, changes, reasons, and validation results to a researcher
  who is not reading the implementation.
- Be direct and precise. Distinguish established results, modeling assumptions,
  open questions, and recommendations.
- When several options are viable, list their advantages and disadvantages and
  state the recommended option with reasons.

## Authoritative files

Use this order when sources conflict:

1. `model_notes/00_POST_REVISION_MODEL_SKELETON.md`: closure contract for the
   accepted baseline.
2. `model_notes/00_MASTER_model_memo.md`: accepted baseline summary.
3. Module notes `model_notes/01_...08_*.md`: detailed specifications,
   alternatives, and open questions.
4. `model_notes/99_decision_log.md`: accepted/rejected decisions and reasons.
5. `legacy/`: historical context only.

Do not treat a legacy draft as a current instruction. If useful legacy material
is reintroduced, review it against the active model, place it in the relevant
module with an explicit status label, and record any resolved choice in the
decision log.

## Model invariants

Unless the decision log is deliberately changed, preserve these baseline choices:

- A single local expansionary policy wedge `s_{r,t}` represents the policy bundle.
- Industrial policy is state-contingent; the planner is not a no-policy benchmark.
- Local governments play a Markov-Nash policy game.
- Involution is an equilibrium outcome, not an exogenous shock.
- The planner internalizes learning spillovers, idle capacity, and aggregate
  misallocation.
- The baseline equilibrium follows the closure conditions stated in the skeleton
  and summarized in the MASTER memo.
- Supply-chain IO, differentiated demand/BLP, soft budget constraints,
  international trade, and financial frictions remain extensions.

A substantive change to an invariant requires:

1. updating the affected module;
2. recording the accepted and rejected alternatives in `99_decision_log.md`;
3. updating the skeleton when the closure contract changes;
4. updating the MASTER only after the choice is resolved;
5. updating code and paper text only after the notes are consistent.

## File responsibilities

- `model_notes/`: model design, equations, economic intuition, decisions.
- `code/`: executable numerical implementation and tests. The currently planned
  implementation language is Julia; do not create a second implementation
  language without documenting why.
- `data/`: documentation and local data layout. Never commit confidential,
  licensed, or large raw data.
- `paper/`: LaTeX manuscript and stable paper assets.
- `references/`: bibliography metadata and reference notes.
- `outputs/`: generated tables, figures, logs, and numerical results.
- `scripts/`: reproducible project checks and pipeline entry points.
- `legacy/`: superseded or alternative materials, with archive documentation.

## Research workflow

1. Identify the affected module before editing.
2. Put unresolved alternatives and questions in that module, not in MASTER.
3. Use the existing status labels consistently.
4. Check equations, notation, state variables, timing, and market clearing across
   all affected modules.
5. Record resolved choices in the decision log with reasons.
6. Update the skeleton if the closure contract changes.
7. Update MASTER only with the accepted specification.
8. Update paper or code after the active notes agree.

Do not invent citations, data availability, calibration targets, or empirical
results. Verify literature and data claims from primary sources where possible.
Label conjectures and proposed moments as such.

## Code and reproducibility

- Keep one documented entry point for each reproducible pipeline.
- Use deterministic output names and project-relative paths.
- Separate source code from generated output.
- Track Julia `Project.toml` and `Manifest.toml` when implementation begins.
- Add focused tests for equilibrium conditions, accounting identities, solver
  convergence, and counterfactual comparisons.
- Do not hand-edit generated tables or figures.
- Do not add placeholder numerical results.

For Stata, MATLAB, and LaTeX work, follow the machine-level instructions inherited
from the enclosing workspace. Formal research programs must remain in `.do`, `.m`,
or `.tex` files and be runnable in batch mode.

## Archive policy

- Move superseded files to the appropriate `legacy/` category instead of deleting
  them.
- Update `legacy/README.md` whenever a file is added, renamed, or restored.
- Preserve original filenames unless a collision makes that impossible.
- `legacy/` content is not part of routine searches for the current specification
  unless the task explicitly concerns history or migration.

## Validation

Before reporting completion, run:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\check_project.ps1
```

When code or a paper exists, also run the relevant unit tests, numerical smoke
test, and LaTeX compile. Report which checks ran and any check that could not run.
