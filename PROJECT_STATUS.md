# Project Status

**As of:** 2026-06-18

**Phase:** provenance-controlled baseline consolidation before numerical code

**Implementation status:** no numerical code, data pipeline, or paper draft yet

## Confirmed project direction

- Title: `Decentralized Industrial Policy and Dynamic Capacity Misallocation:
  Evidence from China's NEV Industry`.
- 中文主线：地方分散化产业政策如何通过部分不可逆的耐用品产能积累，在需求吸收不足时造成动态产能错配和地方—中央福利回报偏离。
- Topic: a macro-industrial allocation problem in China's NEV industry:
  decentralized local policy pushes durable and partly irreversible capacity
  investment; when installed capacity grows faster than effective demand,
  utilization, prices, and NEV-sector capital returns fall relative to the
  outside sector.
- Framing: NEV is the empirical setting, not the source of macro content. The
  macro object is the dynamic allocation of scarce capital between the NEV
  sector and the outside sector, disciplined by MPK/MRPK gaps and the
  $D$ versus $CP$ welfare comparison.
- Mechanism: local policy platforms lower the cost of NEV capacity investment.
  Firms respond through $I^H_{rt}$, which accumulates into
  $H^N_{r,t+1}=(1-\delta_H)H^N_{r,t}+I^H_{rt}$. Because capacity is durable,
  partly irreversible, and built with lags, simultaneous regional expansion can
  create dynamic capacity misallocation when demand absorption is insufficient.
- Main question: when does local expansion remain rational from the local
  return perspective while the aggregate return to another unit of capacity
  support is nonpositive?
- Transition condition:
  $\zeta_{rt}^{L,NEV}(Z_t)>0$ but
  $\zeta_{rt}^{C,NEV}(Z_t)\leq0$, where $Z_t$ is shorthand for already defined
  endogenous model objects, not a new state variable.
- Core benchmark: compare `decentralized local implementation` with
  `implementable centralized coordination`.
- Acceptable welfare outcomes: $W^D<W^{CP}$, $W^D\approx W^{CP}$, or
  $W^D>W^{CP}$. Each outcome has a valid interpretation; the project should not
  pre-commit to the first case before quantification.
- Baseline discipline: no uncited primitive. The policy block follows
  Chen-Liu-Song, including local/central intervention indexes and policy
  platform measurement; the irreversible-capacity and demand-absorption block
  follows Aggregate Demand and Irreversible Investment; entry, investment,
  capacity, idle capacity, and welfare counterfactual discipline follow
  Barwick-Kalouptsidi-Zahur; MPK/MRPK gaps and aggregate losses follow
  Hsieh-Klenow and related macro misallocation work; Klepper supplies only
  background life-cycle language.
- Baseline policy object: one local expansionary policy wedge.
- Firms are active private responders to policy and market states; the first
  model represents this through a reduced-form entry/capacity response, not a
  full heterogeneous-firm dynamic state.
- NEV installed capacity $H^N$ is the sector-specific NEV capital stock.
- Aggregate capital clearing is $K_t=K_t^O+\sum_rH_{r,t}^N$.
- Product demand / demand absorption is disciplined by $D_t^N(P_t^N)$ and
  realized sales relative to installed durable capacity; the baseline no longer
  uses a standalone inverse demand equation.
- Positive equilibrium: simultaneous Markov-Nash competition among local
  governments.
- Main normative benchmark: constrained planner / centralized policy equilibrium
  $CP$, not a first-best allocation planner.
- Baseline labor market: fixed regional labor endowments and regional wages.
- Learning, selection, and innovation are optional benefit-side or extension
  mechanisms. They do not define the clean baseline unless tied to sourced
  learning-by-doing or productivity evidence.
- Supply-chain finance, supplier innovation, official-promotion incentives,
  resident saving, full tax systems, exports, BLP demand, business stealing,
  financing/valuation channels, full dynamic IO estimation, and full firm
  heterogeneity remain extensions.
- Planned numerical implementation: Julia, only after the dynamic capacity
  misallocation proof and empirical fact chain have been reviewed.

## Current authoritative artifacts

- `model_notes/00_POST_REVISION_MODEL_SKELETON.md`
- `model_notes/00_MASTER_model_memo.md`
- Modules `01` through `08`
- `model_notes/99_decision_log.md`
- `NEV_干净主轴_项目介绍与工作区更新指令.md`
- `NEV项目_宏观定位说明.pdf`
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
9. Learning-law inconsistency: resolved by removing learning from the required
   clean baseline and treating it as an optional benefit-side mechanism that
   needs separate citation discipline.
10. State-space overexpansion: baseline state vector reduced to
   $\{H^N,B,s_{-1}\}$ by region; $A^N$ enters only if an explicit learning
   block is later promoted.
11. Firm passivity concern: resolved by adding reduced-form active firm response
    while keeping full heterogeneous-firm dynamics outside the baseline.
12. JMP positioning risk: resolved by positioning the project as
    macro-industrial allocation / dynamic capacity misallocation, not a generic
    industry-level policy or IO project.
13. Low-price welfare objection: resolved by treating price declines as
    potentially welfare-improving and by defining the welfare comparison as a
    net state-contingent object, not a preset loss claim.
14. Positive-NEV-literature boundary: resolved by treating NEV policy success as
    background. The paper asks whether decentralized implementation pushes too
    much durable capacity into NEV relative to outside-sector returns and
    effective demand.
15. Static proof closure: Module 4 now contains the closed symmetric two-region
    static model with resource feasibility, outside-sector capital opportunity
    cost, local FOC, constrained-planner FOC, and state-contingent welfare
    classification.
16. Provenance discipline: resolved by making `00_MASTER_model_memo.md` the
    active provenance table and by banning uncited conceptual state variables
    from the baseline.

## Unresolved items before coding

1. Rewrite the closed static proof around durable capacity accumulation,
   outside-sector opportunity cost, demand absorption, and MPK/MRPK gaps.
2. Verify exact bibliographic metadata and citation claims for Chen-Liu-Song,
   Aggregate Demand and Irreversible Investment, Barwick-Kalouptsidi-Zahur,
   Hsieh-Klenow, Klepper, and related macro misallocation papers before paper
   drafting.
3. Construct the local NEV expansionary policy platform index.
4. Build the minimum empirical fact chain: policy platform to investment;
   investment to future capacity; capacity relative to demand to utilization and
   price compression; high policy/capacity exposure to MPK gap.
5. Validate capacity data: planned, under-construction, installed, and effective
   capacity.
6. Measure effective demand and the consumer or final-good benefit from lower
   NEV prices.
7. Measure gross policy cost, net NEV fiscal cost, idle-capacity cost, and
   misallocation cost.
8. Discipline the minimum calibration parameters before any welfare
   quantification.

These are open research decisions, not implementation tasks. Resolve them in the
relevant module and decision log before treating them as code specifications.

## Next milestone

Review the fully closed, symmetric two-region static model with the clean
dynamic-capacity-misallocation framing:

- every primitive traced to the MASTER provenance table;
- explicit state/control definitions;
- demand absorption $D_t^N(P_t^N)$;
- NEV installed durable capacity as sector-specific capital;
- outside-sector capital and resource feasibility;
- fixed regional labor-market clearing;
- total-tax-base local budget constraints;
- reduced-form private firm capacity response to the policy wedge;
- local-government and constrained-planner first-order conditions expressed as
  local versus central policy returns;
- sufficient conditions for $s^D>s^{CP}$ when
  $\zeta^{L,NEV}(Z_t)>0$ but $\zeta^{C,NEV}(Z_t)\leq0$;
- dynamic capacity misallocation, utilization, price compression, MPK/MRPK gap,
  and welfare-decomposition implications.

Only after this review should the project create a Julia environment or the
first solver entry point under `code/`.
