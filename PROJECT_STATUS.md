# Project Status

**As of:** 2026-06-08

**Phase:** model architecture consolidation

**Implementation status:** no numerical code, data pipeline, or paper draft yet

## Confirmed project direction

- Topic: state-contingent industrial policy, local competition, overcapacity,
  aggregate capital misallocation, and welfare in China's NEV industry.
- Baseline policy object: one local expansionary policy wedge.
- Positive equilibrium: Markov-Nash competition among local governments.
- Normative benchmark: a planner choosing state-contingent policy, not a
  permanent zero-policy benchmark.
- Main dynamic mechanism: decentralized support persists beyond the socially
  optimal intensity and duration.
- Planned numerical implementation: Julia, after the baseline equations and
  timing are sufficiently stable.

## Current authoritative artifacts

- `model_notes/00_MASTER_model_memo.md`
- Modules `01` through `08`
- `model_notes/99_decision_log.md`

The 2026-06-08 cleanup moved earlier plans, drafts, source notes, and alternative
designs to `legacy/`. Those files remain available for provenance and future
selective reuse but are not current specifications.

## Unresolved items before coding

1. State variables, timing, and the minimum closed two-region equilibrium.
2. Conditions for Nash existence/uniqueness and for `s^D > s^P`.
3. Capital mobility across regions and sectors.
4. Government budget closure and the empirical interpretation of policy cost.
5. The baseline inverse-demand functional form.
6. Measurement or calibration of idle-capacity cost.
7. Numerical construction of the planner's policy function.
8. Calibration of the productivity-enhancing policy used in counterfactual 5.
9. Literature-gap verification against recent single-industry macro and
   misallocation papers.

These are open research decisions, not missing implementation tasks. Resolve them
in the relevant module and decision log before treating them as baseline.

## Next milestone

Produce a fully closed, symmetric two-region steady-state model with:

- explicit timing and state/control definitions;
- household, firm, local-government, and planner first-order conditions;
- all eight equilibrium conditions written as a solvable system;
- a clear decentralized-versus-planner wedge decomposition;
- a minimal parameter table and identification mapping;
- numerical tests specified before heterogeneous firms or extensions are added.

Only after this milestone should the project create a Julia environment and the
first solver entry point under `code/`.
