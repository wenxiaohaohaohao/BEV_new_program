# Project Status

**As of:** 2026-06-08

**Phase:** model architecture consolidation after third-round critique

**Implementation status:** no numerical code, data pipeline, or paper draft yet

## Confirmed project direction

- Topic: state-contingent industrial policy, local competition, overcapacity,
  aggregate capital misallocation, and welfare in China's NEV industry.
- Baseline policy object: one local expansionary policy wedge.
- NEV installed capacity $H^N$ is the sector-specific NEV capital stock.
- Product demand is CES-derived; the baseline no longer uses a standalone
  inverse demand equation.
- Positive equilibrium: simultaneous Markov-Nash competition among local
  governments.
- Main normative benchmark: constrained planner / centralized policy equilibrium
  $CP$, not a first-best allocation planner.
- Baseline labor market: fixed regional labor endowments and regional wages.
- Planned numerical implementation: Julia, only after the static two-region
  proof and model closure are complete.

## Current authoritative artifacts

- `model_notes/00_MASTER_model_memo.md`
- Modules `01` through `08`
- `model_notes/99_decision_log.md`

The third-round critique acceptance notes in `legacy/model_drafts/` are review
inputs, not authoritative specifications. Their accepted content has been
translated into the active modules and decision log.

## Resolved by the third-round update

1. NEV capital/capacity duplication: resolved by defining $H^N$ as installed
   sector-specific capital/capacity.
2. Demand-system inconsistency: resolved by using CES-derived NEV demand.
3. Government budget closure at the modeling level: resolved by adding fiscal
   outlay $\phi sH$ and local budget constraints.
4. Local objective double-counting: reduced to output, employment, and fiscal
   surplus.
5. Planner benchmark ambiguity: resolved by making $CP$ the main benchmark and
   first-best only an appendix upper bound.
6. Labor-market inconsistency: resolved by fixed regional labor endowments.
7. Learning-law inconsistency: resolved by removing knowledge depreciation and
   excluding own output from the spillover term.

## Unresolved items before coding

1. The closed symmetric two-region static model.
2. Local government FOC and constrained-planner FOC.
3. Sufficient conditions for $s^D>s^{CP}$.
4. Strategic complement/substitute characterization in the policy game.
5. Formal implications for capacity, utilization, MPK gap, and welfare.
6. Empirical construction and identification of the policy wedge $s_{r,t}$.
7. Calibration or external discipline for CES elasticity and learning parameters.
8. Measurement of idle-capacity cost and fiscal outlay $\phi sH$.
9. Literature-gap verification against recent single-industry macro,
   misallocation, industrial policy, and NEV demand papers.

These are open research decisions, not implementation tasks. Resolve them in the
relevant module and decision log before treating them as code specifications.

## Next milestone

Produce a fully closed, symmetric two-region static model with:

- explicit state/control definitions;
- CES-derived product demand;
- NEV installed capacity as sector-specific capital;
- fixed regional labor-market clearing;
- local fiscal budget constraints;
- local-government and constrained-planner first-order conditions;
- sufficient conditions for $s^D>s^{CP}$;
- capacity, utilization, MPK, and welfare implications.

Only after this milestone should the project create a Julia environment or the
first solver entry point under `code/`.
