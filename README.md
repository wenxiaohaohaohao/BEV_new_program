# NEV Model Project

**Project title**

Decentralized Industrial Policy and Dynamic Capacity Misallocation: Evidence
from China's NEV Industry

**中文主线**

地方分散化产业政策如何通过部分不可逆的耐用品产能积累，在需求吸收不足时造成动态产能错配和地方—中央福利回报偏离。

**Current phase:** model architecture consolidation

**Project root:** this directory

**Last reorganized:** 2026-06-09

## Scope

This project studies a macro-industrial allocation problem. Decentralized local
governments support NEV expansion according to local returns, and firms respond
by investing in durable, partially irreversible capacity. Because capacity
investment has construction lags and cannot be costlessly reversed, simultaneous
local expansion can make future installed capacity exceed effective demand
absorption. The resulting decline in utilization, price compression, and lower
NEV-sector MPK relative to the outside sector is the project's dynamic capacity
misallocation mechanism.

The core comparison is between `decentralized local implementation` and
`implementable centralized coordination`. The key transition condition is:

$$
\zeta_{rt}^{L,NEV}(Z_t)>0
\quad \text{but} \quad
\zeta_{rt}^{C,NEV}(Z_t)\leq0.
$$

The core comparison is not policy versus no policy. It is the welfare
comparison between decentralized local implementation $D$ and implementable
centralized coordination $CP$:

$$W^D-W^{CP}.$$

The central transition condition is that decentralized local expansion remains
locally rational while the aggregate return to the same expansionary policy has
fallen or turned negative. The sign of $W^D-W^{CP}$ is a quantitative object,
not a maintained conclusion.

Model discipline is provenance-controlled: every primitive in the baseline must
come from an existing literature or be a direct NEV mapping of an existing
object. The decentralized-policy block follows Chen-Liu-Song. The
irreversible-capacity and demand-absorption block follows Aggregate Demand and
Irreversible Investment. The industrial-policy, entry, investment, capacity, and
welfare-counterfactual block follows Barwick-Kalouptsidi-Zahur. MPK/MRPK gaps
follow Hsieh-Klenow and related macro misallocation work. Klepper supplies only
background life-cycle language.

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
3. `NEV_干净主轴_项目介绍与工作区更新指令.md`: current clean project axis and
   workspace update source.
4. `NEV项目_宏观定位说明.pdf`: macro-industrial allocation positioning source.
5. [`model_notes/00_POST_REVISION_MODEL_SKELETON.md`](model_notes/00_POST_REVISION_MODEL_SKELETON.md):
   the unified closure contract after the review revisions.
6. [`model_notes/00_MASTER_model_memo.md`](model_notes/00_MASTER_model_memo.md):
   the current accepted baseline.
7. The relevant module under `model_notes/` for assumptions, alternatives, and
   open questions.
8. `references/模型模块审计与文献来源纪律_NEV项目.md` and
   `references/基准模型变量收紧与文献来源纪律_NEV项目.md`: provenance and source
   discipline inputs for the active baseline.
9. [`model_notes/99_decision_log.md`](model_notes/99_decision_log.md): accepted
   and rejected modeling decisions.
10. [`AGENTS.md`](AGENTS.md): operating rules for Codex and other contributors.

## Source-of-truth hierarchy

| Priority | Location | Meaning |
|---|---|---|
| 1 | `NEV_干净主轴_项目介绍与工作区更新指令.md` and `NEV项目_宏观定位说明.pdf` | Current clean axis and macro positioning |
| 2 | `model_notes/99_decision_log.md` | Accepted and rejected framing decisions |
| 3 | `model_notes/00_POST_REVISION_MODEL_SKELETON.md` | Closure contract for the accepted baseline |
| 4 | `model_notes/00_MASTER_model_memo.md` | Accepted baseline summary |
| 5 | `references/模型模块审计与文献来源纪律_NEV项目.md` and `references/基准模型变量收紧与文献来源纪律_NEV项目.md` | Provenance discipline inputs |
| 6 | `model_notes/01_...08_*.md` | Module detail, alternatives, and open questions |
| 7 | `NEV 项目当前主轴 Notes.pdf` | Historical broader lifecycle framing |
| 8 | `legacy/` | Historical context only; never authoritative by itself |

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
| [`02_environment_firms.md`](model_notes/02_environment_firms.md) | Capacity, demand absorption, outside sector, firms, and optional learning |
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
- Do not promote supply-chain IO, supplier innovation, official-promotion
  incentives, resident saving, full tax systems, exports, BLP demand, full
  dynamic IO estimation, financial frictions, entry-cost wedges, or full
  heterogeneous-firm dynamics into the baseline without a recorded decision.
- Do not introduce conceptual state variables such as `LearningState`,
  `SelectionState`, `InvolutionState`, `CapacityPressureState`,
  `MisallocationState`, `ScaleCompetitionStage`, `ScaleCompetitionState`, or
  `PostSuccess` into the baseline. Use sourced objects such as investment,
  durable capacity, demand absorption, utilization, prices, profits, and
  MPK/MRPK gaps instead.
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
