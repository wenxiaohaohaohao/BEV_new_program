# NEV Model Project

**Project title**

Decentralized Industrial Policy over the Industry Life Cycle: Creative
Destruction or Aggregate Misallocation? Evidence from China's NEV Industry

**中文主线**

产业生命周期中的地方分散化产业政策：创造性破坏还是总量错配——来自中国新能源汽车产业的证据

**Current phase:** model architecture consolidation

**Project root:** this directory

**Last reorganized:** 2026-06-09

## Scope

This project studies the dynamic welfare effect of decentralized expansionary
local industrial policy over the industry life cycle of a strategic emerging
industry. The life cycle is not an exogenous sequence of stages, and the model
does not assume that industrial policy suddenly stops working after a calendar
date or maturity threshold. It is the dynamic path jointly determined by local
policy, firm entry, capacity investment, demand absorption, price adjustment,
utilization, profit, and capital returns.

Local expansionary policy can be a discovery mechanism when it lowers entry and
capacity-expansion costs, mobilizes private capital, and accelerates firm
experimentation, cost decline, technological learning, and selection. Because
capacity investment is lagged and partly irreversible, simultaneous expansion by
many local governments can make future capacity release concentrated. When
effective demand cannot absorb new capacity at the same speed, utilization
falls, prices compress, profits fall, and the NEV-sector MPK declines relative
to the outside sector.

The core comparison is between `decentralized local implementation` and
`implementable centralized coordination`. The key transition condition is:

$$
\zeta_{rt}^{L,NEV}(Z_t)>0
\quad \text{but} \quad
\zeta_{rt}^{C,NEV}(Z_t)\leq0.
$$

Here $Z_t$ is shorthand for already defined endogenous model objects such as
capacity, effective demand, prices, utilization, profits, and MPK gaps. It is
not a new state variable. The condition says that decentralized local expansion
can remain locally rational when the aggregate return to the same expansionary
policy has already fallen or turned negative. The sign of $W^D-W^{CP}$ is an
object for theory discipline and quantification, not a maintained conclusion.

Model discipline is provenance-controlled: every primitive in the baseline must
come from an existing literature or be a direct NEV mapping of an existing
object. The decentralized policy block follows Chen-Liu-Song, the dynamic
industrial-policy and capacity blocks follow Barwick-Kalouptsidi-Zahur and
Kalouptsidi, the industry-life-cycle interpretation follows Klepper, and the
misallocation block follows Hsieh-Klenow and related macro misallocation work.

This directory is intentionally self-contained. It does not depend on the parent
AI compute-subsidy project and can later be moved into a separate Git repository.
Files under `legacy/` preserve earlier plans, source notes, and alternative
designs, but they are not current model specifications.

## Start here

Read the project in this order:

1. [`PROJECT_STATUS.md`](PROJECT_STATUS.md): current phase, unresolved decisions,
   and the next milestone.
2. [`REORGANIZATION_LOG.md`](REORGANIZATION_LOG.md): what changed in the 2026-06
   cleanup and where old materials went.
3. `NEV 项目当前主轴 Notes.pdf`: current project axis and title.
4. [`model_notes/00_POST_REVISION_MODEL_SKELETON.md`](model_notes/00_POST_REVISION_MODEL_SKELETON.md):
   the unified closure contract after the review revisions.
5. [`model_notes/00_MASTER_model_memo.md`](model_notes/00_MASTER_model_memo.md):
   the current accepted baseline.
6. The relevant module under `model_notes/` for assumptions, alternatives, and
   open questions.
7. `references/模型模块审计与文献来源纪律_NEV项目.md` and
   `references/基准模型变量收紧与文献来源纪律_NEV项目.md`: provenance and source
   discipline inputs for the active baseline.
8. [`model_notes/99_decision_log.md`](model_notes/99_decision_log.md): accepted
   and rejected modeling decisions.
9. [`AGENTS.md`](AGENTS.md): operating rules for Codex and other contributors.

## Source-of-truth hierarchy

| Priority | Location | Meaning |
|---|---|---|
| 1 | `NEV 项目当前主轴 Notes.pdf` plus Decision 33-34 in `model_notes/99_decision_log.md` | Current project axis and title |
| 2 | `model_notes/00_POST_REVISION_MODEL_SKELETON.md` | Closure contract for the accepted baseline |
| 3 | `model_notes/00_MASTER_model_memo.md` | Accepted baseline summary |
| 4 | `references/模型模块审计与文献来源纪律_NEV项目.md` and `references/基准模型变量收紧与文献来源纪律_NEV项目.md` | Provenance discipline inputs |
| 5 | `model_notes/01_...08_*.md` | Module detail, alternatives, and open questions |
| 6 | `model_notes/99_decision_log.md` | Reasons for accepted and rejected choices |
| 7 | `legacy/` | Historical context only; never authoritative by itself |

If two files conflict, use the higher-priority source and record any substantive
resolution in the decision log.

## Core workflow

```text
discussion
-> check 00_POST_REVISION_MODEL_SKELETON
-> identify module (01-08)
-> update only that module
-> label the content status
-> record a resolved modeling choice in 99_decision_log
-> update 00_MASTER only after the module is stable
-> translate a stable MASTER into paper text and Julia code
```

## Module map

| File | Scope |
|---|---|
| [`00_POST_REVISION_MODEL_SKELETON.md`](model_notes/00_POST_REVISION_MODEL_SKELETON.md) | Closure contract for the post-review baseline |
| [`00_MASTER_model_memo.md`](model_notes/00_MASTER_model_memo.md) | Current accepted baseline |
| [`01_research_mechanism.md`](model_notes/01_research_mechanism.md) | Research question, mechanism, and welfare regimes |
| [`02_environment_firms.md`](model_notes/02_environment_firms.md) | Environment, household, firms, and learning-by-doing |
| [`03_government_game.md`](model_notes/03_government_game.md) | Local government objective and Markov-Nash game |
| [`04_planner_equilibrium.md`](model_notes/04_planner_equilibrium.md) | Planner problem and full equilibrium definition |
| [`05_quantification_solution.md`](model_notes/05_quantification_solution.md) | Moments, identification, and solution algorithm |
| [`06_counterfactuals.md`](model_notes/06_counterfactuals.md) | Five counterfactual groups |
| [`07_literature_positioning.md`](model_notes/07_literature_positioning.md) | Literature positioning |
| [`08_extensions.md`](model_notes/08_extensions.md) | Extensions outside the baseline |
| [`99_decision_log.md`](model_notes/99_decision_log.md) | Accepted and rejected modeling decisions |

## Directory map

| Directory | Purpose |
|---|---|
| `model_notes/` | Active model specification and decisions |
| `code/` | Future Julia implementation and tests |
| `data/` | Data documentation and local data locations |
| `paper/` | Future LaTeX manuscript |
| `references/` | Bibliography and reference metadata |
| `outputs/` | Reproducible tables, figures, logs, and generated results |
| `scripts/` | Project checks and future pipeline entry points |
| `legacy/` | Superseded plans, drafts, and alternative designs |

The scaffold does not pretend that code, data, or a paper already exists. Each
directory contains a README defining what belongs there before implementation
begins.

## Model maintenance rules

- `00_MASTER_model_memo.md` receives only accepted baseline content.
- No uncited primitive enters the baseline. Every state, policy wedge, demand
  object, price mechanism, welfare object, and counterfactual must have a source
  in the provenance table or be recorded as an extension.
- Module notes use these status labels:
  `[Accepted baseline]`, `[Alternative]`, `[Open question]`, `[Rejected]`,
  `[Main-text candidate]`, and `[Appendix candidate]`.
- Do not rewrite the whole model after each discussion. Update the affected
  module, then update the decision log and MASTER when the choice is settled.
- Do not promote supply-chain IO, BLP demand, soft budget constraints, trade,
  financial frictions, entry-cost wedges, or full heterogeneous-firm dynamics
  into the baseline without a recorded decision.
- Do not introduce conceptual state variables such as `LearningState`,
  `SelectionState`, `InvolutionState`, `CapacityPressureState`,
  `MisallocationState`, or `ScaleCompetitionState` into the baseline. Use
  sourced objects such as $A_t$, entry, investment, capacity, utilization,
  prices, profits, and MPK/MRPK gaps instead.
- Historical files in `legacy/` may be consulted for context but must not silently
  override active notes.

## Codex setup

Project-specific instructions are in `AGENTS.md`. Conservative project settings
are in `.codex/config.toml`; Codex loads project-scoped settings only after the
directory is trusted.

Run the structural check from this directory:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\check_project.ps1
```

The check verifies required files, module names, UTF-8 readability, internal
Markdown links, archive documentation, and accidental absolute paths.

## Future separation

When this project is split from the AI workspace, move the entire
`NEV_model_project` directory as one unit. Then initialize its own Git repository
at this directory. No path inside the active project should need to be rewritten.
