# Project Status

**As of:** 2026-06-08

**Phase:** post-review model closure before formal derivation

**Implementation status:** no numerical code, data pipeline, or paper draft yet

## Confirmed project direction

- Topic: state-contingent industrial policy, local competition, overcapacity,
  aggregate capital misallocation, and welfare in China's NEV industry.
- Baseline policy object: one local expansionary policy wedge.
- NEV installed capacity $H^N$ is the sector-specific NEV capital stock.
- Aggregate capital clearing is $K_t=K_t^O+\sum_rH_{r,t}^N$.
- Product demand is CES-derived; the baseline no longer uses a standalone
  inverse demand equation.
- Positive equilibrium: simultaneous Markov-Nash competition among local
  governments.
- Main normative benchmark: constrained planner / centralized policy equilibrium
  $CP$, not a first-best allocation planner.
- Baseline labor market: fixed regional labor endowments and regional wages.
- Baseline learning: combined frontier-gap local learning and cross-regional
  spillovers with exogenous frontier $\bar A_{t+1}=(1+g_A)\bar A_t$.
- Planned numerical implementation: Julia, only after the static two-region
  proof and model closure are complete.

## Current authoritative artifacts

- `model_notes/00_POST_REVISION_MODEL_SKELETON.md`
- `model_notes/00_MASTER_model_memo.md`
- Modules `01` through `08`
- `model_notes/99_decision_log.md`

The review files in `legacy/model_drafts/` are inputs, not authoritative
specifications. Their accepted content has been translated into the active
modules and decision log.

## Resolved by review integration

1. NEV capital/capacity duplication: resolved by defining $H^N$ as installed
   sector-specific capital/capacity.
2. Resource-constraint double-counting: resolved by distinguishing outside-sector
   investment $I^{K,O}$ from NEV capacity investment $I^H$.
3. Demand-system inconsistency: resolved by using CES-derived NEV demand.
4. Government tax-base ambiguity: resolved by using total regional output
   $\tau_r(Y_{r,t}^N+Y_{r,t}^O)$.
5. Policy-cost double-counting: resolved by deleting baseline $\kappa s^2/2$ and
   keeping fiscal outlay $\phi sH$ plus adjustment cost.
6. Local objective double-counting: reduced to output, employment, and fiscal
   surplus.
7. Planner benchmark ambiguity: resolved by making $CP$ the main benchmark and
   first-best only an appendix upper bound.
8. Labor-market inconsistency: resolved by fixed regional labor endowments.
9. Learning-law inconsistency: resolved by frontier-gap local learning plus
   cross-regional spillovers and exogenous frontier growth.
10. State-space overexpansion: baseline state vector reduced to
   $\{H^N,A^N,B,s_{-1}\}$ by region.

## Unresolved items before coding

1. The closed symmetric two-region static model.
2. Local government FOC and constrained-planner FOC.
3. Sufficient conditions for $s^D>s^{CP}$.
4. Strategic complement/substitute characterization in the early-stage policy
   game.
5. Formal implications for capacity, utilization, MPK gap, and welfare.
6. Empirical construction and identification of the policy wedge $s_{r,t}$.
7. Validation of demonstration-city / pilot designation before using it as
   policy variation.
8. Calibration or external discipline for CES elasticity and learning parameters.
9. Measurement of gross subsidy cost, net NEV fiscal cost, debt cost, and idle
   capacity cost.
10. Literature-gap verification against recent single-industry macro,
    misallocation, industrial policy, and NEV demand papers.

These are open research decisions, not implementation tasks. Resolve them in the
relevant module and decision log before treating them as code specifications.

## Next milestone

Produce a fully closed, symmetric two-region static model with:

- explicit state/control definitions;
- CES-derived product demand;
- NEV installed capacity as sector-specific capital;
- outside-sector capital and resource feasibility;
- fixed regional labor-market clearing;
- total-tax-base local budget constraints;
- local-government and constrained-planner first-order conditions;
- sufficient conditions for $s^D>s^{CP}$;
- capacity, utilization, MPK, and welfare implications.

Only after this milestone should the project create a Julia environment or the
first solver entry point under `code/`.
