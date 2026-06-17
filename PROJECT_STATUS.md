# Project Status

**As of:** 2026-06-17

**Phase:** provenance-controlled baseline consolidation before numerical code

**Implementation status:** no numerical code, data pipeline, or paper draft yet

## Confirmed project direction

- Topic: the dual role of decentralized local industrial policy across
  development stages of a strategic emerging industry, using China's NEV industry
  as the empirical setting.
- Framing: early local-government and private-capital coordination can support
  industry takeoff, cost decline, and firm screening when learning externalities,
  weak market formation, and supply-chain coordination failures bind. In the
  scale-competition stage, continued expansionary investment attraction,
  subsidies, and capacity support can generate duplicated entry, low utilization,
  price compression, capital-return gaps, and aggregate resource misallocation.
- Main question: when local government competition is discovery and creative
  destruction, and when it becomes duplicated capacity and aggregate
  misallocation.
- Core benchmark: compare `decentralized local implementation` with
  `implementable centralized coordination`.
- Acceptable welfare outcomes: $W^D<W^{CP}$, $W^D\approx W^{CP}$, or
  $W^D>W^{CP}$. Each outcome has a valid interpretation; the project should not
  pre-commit to the first case before quantification.
- Baseline discipline: no uncited primitive. The policy block follows
  Chen-Liu-Song; entry, investment, capacity, idle capacity, and welfare
  counterfactual discipline follow Barwick-Kalouptsidi-Zahur; capacity,
  demand-absorption, and price-response discipline follow Kalouptsidi; industry
  life-cycle language follows Klepper; MPK/MRPK gaps and aggregate losses follow
  Hsieh-Klenow and related macro misallocation work.
- Baseline policy object: one local expansionary policy wedge.
- Firms are active private responders to policy and market states; the first
  model represents this through a reduced-form entry/capacity response, not a
  full heterogeneous-firm dynamic state.
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
  spillovers with exogenous frontier $\bar A_{t+1}=(1+g_A)\bar A_t$. The exact
  functional form is a bridge that must remain tied to learning-by-doing
  literature before paper drafting.
- Supply-chain finance, supplier innovation, BLP demand, business stealing,
  financing/valuation channels, and full firm heterogeneity remain extensions.
- Planned numerical implementation: Julia, only after the static two-region
  proof has been reviewed against the state-contingent lifecycle framing.

## Current authoritative artifacts

- `model_notes/00_POST_REVISION_MODEL_SKELETON.md`
- `model_notes/00_MASTER_model_memo.md`
- Modules `01` through `08`
- `model_notes/99_decision_log.md`
- `references/模型模块审计与文献来源纪律_NEV项目.md`
- `references/基准模型变量收紧与文献来源纪律_NEV项目.md`

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
11. Firm passivity concern: resolved by adding reduced-form active firm response
    while keeping full heterogeneous-firm dynamics outside the baseline.
12. JMP positioning risk: resolved by keeping the $D$ versus $CP$ welfare
    comparison, MPK gaps, and creative-destruction versus misallocation trade-off
    as the main axis.
13. Low-price welfare objection: resolved by treating price declines as
    potentially welfare-improving and by defining the welfare comparison as a
    net state-contingent object, not a preset loss claim.
14. Positive-NEV-literature boundary: resolved by positioning existing work as
    explaining how China's NEV industry rose, while this paper asks whether the
    decentralized local implementation that supported that rise also produced
    duplicated capacity and aggregate misallocation once the industry entered
    the scale-competition stage.
15. Static proof closure: Module 4 now contains the closed symmetric two-region
    static model with resource feasibility, outside-sector capital opportunity
    cost, local FOC, constrained-planner FOC, and state-contingent welfare
    classification.
16. Provenance discipline: resolved by making `00_MASTER_model_memo.md` the
    active provenance table and by banning uncited conceptual state variables
    from the baseline.

## Unresolved items before coding

1. Stress-test the closed static proof against the lifecycle framing and confirm
   that all welfare statements remain state-contingent.
2. Verify exact bibliographic metadata and citation claims for Chen-Liu-Song,
   Barwick-Kalouptsidi-Zahur, Kalouptsidi, Klepper, Hsieh-Klenow, and related
   macro misallocation papers before paper drafting.
3. Strategic complement/substitute characterization in the early-stage policy
   game.
4. Dynamic policy-exit mechanism after the static proof.
5. Empirical construction and identification of the policy wedge $s_{r,t}$.
6. Validation of demonstration-city / pilot designation before using it as
   policy variation.
7. Calibration or external discipline for CES elasticity and learning parameters.
8. Measurement of gross subsidy cost, net NEV fiscal cost, debt cost, and idle
   capacity cost.
9. Measurement or validation of firm/project entry responses without requiring
    a full dynamic firm-entry model.
10. Literature-gap verification against recent single-industry macro,
    misallocation, industrial policy, and NEV demand papers.
11. Measurement of effective demand and the consumer or final-good benefit from
    lower NEV prices.

These are open research decisions, not implementation tasks. Resolve them in the
relevant module and decision log before treating them as code specifications.

## Next milestone

Review the fully closed, symmetric two-region static model with:

- every primitive traced to the MASTER provenance table;
- explicit state/control definitions;
- CES-derived product demand;
- NEV installed capacity as sector-specific capital;
- outside-sector capital and resource feasibility;
- fixed regional labor-market clearing;
- total-tax-base local budget constraints;
- reduced-form private firm capacity response to the policy wedge;
- local-government and constrained-planner first-order conditions;
- sufficient conditions for $s^D>s^{CP}$ in the scale-competition or
  misallocation-dominant regime;
- duplicated-capacity, utilization, MPK, and consumer-benefit-adjusted
  welfare-regime
  implications.

Only after this review should the project create a Julia environment or the
first solver entry point under `code/`.
