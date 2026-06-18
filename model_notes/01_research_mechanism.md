# Module 1: Research Question, Core Mechanism, and Dynamic Capacity Misallocation

## 1. Purpose

This module records the paper's research question, the core mechanism, and the
formal definition of dynamic capacity misallocation after the clean-axis update.
It uses the constrained planner / centralized policy equilibrium as the main
benchmark.

This module follows the provenance-controlled baseline in
`00_MASTER_model_memo.md`. The formal model uses sourced objects such as policy
platforms, investment, durable capacity, demand absorption, prices, utilization,
profits, and MPK/MRPK gaps.

---

## 2. Research question [Accepted baseline]

This paper studies how decentralized local industrial policy can generate
dynamic capacity misallocation in a strategic emerging industry. Local
governments support NEV expansion according to local returns, while firms
respond by investing in durable and partly irreversible capacity. Because
capacity investment has construction lags and cannot be costlessly reversed,
simultaneous regional expansion may cause future installed capacity to exceed
effective demand absorption. Utilization then falls, NEV prices compress,
producer returns decline, and the NEV-sector MPK falls relative to the outside
sector.

The paper compares decentralized local implementation with implementable
centralized coordination and asks whether decentralized implementation pushes
too much durable capacity into NEV relative to aggregate demand and
outside-sector capital returns.

The paper does not argue that industrial policy is always harmful, and it does
not argue that lower NEV prices are mechanically welfare-reducing. The claim is
state-contingent:

- When local and aggregate returns to capacity support are positive,
  expansionary industrial policy can raise welfare.
- When capacity pressure, weak demand absorption, price compression, low
  utilization, and MPK gaps make the central return to further NEV expansion
  fall, coordinated policy should become less expansionary.
- Decentralized local governments may maintain $s^D > s^{CP}$ when
  $\zeta_{rt}^{L,NEV}(Z_t)>0$ but $\zeta_{rt}^{C,NEV}(Z_t)\leq0$, because each
  region values local investment, employment, output, and tax-base gains while
  only partially internalizing national duplicated capacity and aggregate
  misallocation.
- Firms are not passive recipients of policy. They enter or expand capacity in
  response to policy support, expected demand, expected prices, financing
  conditions, and productivity. Their private responses can be rational even when
  simultaneous durable-capacity investment is excessive in the aggregate.
- The main welfare object is $W^D-W^{CP}$, the net value of decentralized local
  implementation relative to coordinated policy after crediting consumer
  surplus, producer surplus, and optional learning benefits and subtracting
  fiscal, idle-capacity, and capital-misallocation costs.

Existing studies explain how China's NEV industry rose. This paper asks whether
decentralized implementation pushes durable NEV capacity beyond effective demand
absorption and outside-sector return discipline.

The paper is not a no-policy benchmark exercise. A no-policy economy is useful
as a counterfactual, but the main normative comparison is decentralized local
policy versus centralized constrained policy.

---

## 3. Core mechanism [Accepted baseline]

$$
\underbrace{\zeta_{rt}^{L,NEV}-\zeta_{rt}^{C,NEV}}_{\text{Chen-Liu-Song local-central gap}}
\Rightarrow
\underbrace{s_{r,t}}_{\text{composite local policy wedge}}
\Rightarrow
\underbrace{I_{r,t}^H,\ H_{r,t+1}^N}_{\text{durable capacity investment}}
\Rightarrow
\underbrace{D_t^N(P_t^N),\ u_t^N,\ P_t^N,\ \pi_t^N}_{\text{demand absorption and returns}}
\Rightarrow
\underbrace{MPK_t^N-MPK_t^O}_{\text{dynamic capital misallocation}}
\Rightarrow
\underbrace{\zeta_{rt}^{L,NEV}(Z_t)-\zeta_{rt}^{C,NEV}(Z_t)}_{\text{local-central return gap}}
\Rightarrow
\underbrace{\text{Net welfare comparison}}_{W^D-W^{CP}\lessgtr0}.
$$

Entry is retained as a mechanism and empirical fact, but it is not the core
state transition. Klepper-style industry life-cycle language is background
narrative only. It does not create a separate `ScaleCompetitionState`,
`ScaleCompetitionStage`, `PostSuccess`, `SelectionState`, or `InvolutionState`.

**Step 1: Local policy game and durable-capacity investment**

Each local government chooses $s_{r,t}$ to increase local NEV activity,
  employment, and fiscal surplus. The fiscal outlay $\phi s_{r,t}H_{r,t}^N$ is
  local, but the national consumer benefit from lower prices, producer
  price/revenue compression, cross-region spillovers, fiscal financing costs, and
  aggregate MPK loss are not fully internalized by any single region. The
decentralized FOC can imply a higher policy wedge than the constrained-planner
FOC when local expansionary returns remain positive but central returns fall or
turn negative. This is not imposed globally. In other states, local information,
investment-attraction capacity, and private-capital mobilization may justify
decentralized intensity.

In Chen-Liu-Song notation, this is a comparison between the local intervention
index $\zeta_{rt}^{L,NEV}$ and the central intervention index
$\zeta_{rt}^{C,NEV}$.

Firms then respond privately. A higher local policy wedge raises the private
return to NEV capacity expansion by lowering effective capital costs and by
signaling local support. Expected demand growth, expected NEV prices, financing
conditions, and productivity can reinforce this response. The first baseline
proof only needs a reduced-form positive capacity-investment response; a full
heterogeneous-firm entry model is an extension.

**Step 2: Durable capacity to demand absorption, price compression, and consumer benefit**

The final-good CES aggregator implies NEV relative demand. With the final-good
price normalized to one,

$$P_t^N=\eta_N\left(\frac{Y_t}{Y_t^N}\right)^{1/\varepsilon}.$$

As decentralized policy expands NEV installed capacity, the same action can
create benefits and costs. It can increase consumer surplus through lower
prices and may generate producer or learning benefits if demand and technology
conditions support them. It can also compress producer revenue, lower
utilization, rely on implicit subsidies, and misallocate capital. The welfare
sign is the net of these channels.

**Step 3: Price compression to low utilization and MPK gap**

NEV installed capacity $H_{r,t}^N$ is the sector-specific capital stock. When
aggregate NEV capacity exceeds demand, utilization falls:

$$u_{r,t}^N = Q_{r,t}^N/H_{r,t}^N < 1.$$

Lower utilization and price compression reduce the return on NEV capacity, so
the decentralized equilibrium can feature $MPK^{N,D}<MPK^{O,D}$.

**Step 4: MPK gap to welfare-regime classification**

The MPK gap is the model's aggregate misallocation object. Welfare is measured
relative to the constrained planner and is net of consumer surplus, producer
surplus, optional learning, fiscal cost, idle-capacity cost, and
misallocation cost:

$$W^D-W^{CP}.$$

The three possible empirical/theoretical outcomes are:

1. **Misallocation-dominant:** $W^D<W^{CP}$.
2. **Offsetting trade-off:** $W^D\approx W^{CP}$.
3. **Benefit-dominant:** $W^D>W^{CP}$.

---

## 4. Definition of dynamic capacity misallocation [Accepted baseline]

Dynamic capacity misallocation is not an exogenous shock and not the maintained
outcome. It is the joint result of decentralized local policy, private
capacity-investment responses, durable installed capacity, demand absorption,
and outside-sector opportunity costs.

$$
\mathcal T_t =
\left(
\underbrace{s_t^D-s_t^{CP}}_{\text{policy gap}},\;
\underbrace{H_t^{N,D}-H_t^{N,CP}}_{\text{capacity gap}},\;
\underbrace{u_t^{N,CP}-u_t^{N,D}}_{\text{utilization gap}},\;
\underbrace{MPK_t^{O,D}-MPK_t^{N,D}}_{\text{MPK gap}},\;
\underbrace{W^D-W^{CP}}_{\text{net welfare comparison}}
\right).
$$

The components are jointly determined by the policy game and private-sector
responses. They should not be treated as independent shocks.

The vector $\mathcal T_t$ is diagnostic, not a state vector. It reports sourced
model outcomes and the welfare comparison; it does not define new primitives.

This definition avoids three misreadings. The paper does not claim that local
governments alone mechanically create aggregate misallocation, does not claim
that firm investment is irrational, and does not pre-judge the sign of
$W^D-W^{CP}$. The empirical question is whether locally and privately rational
decentralized choices generate dynamic capacity misallocation relative to the
coordinated policy benchmark.

---

## 5. Proposition discipline [Accepted baseline]

The main theoretical claims should be organized as follows:

1. **Lemma 1:** A higher local policy wedge raises NEV capacity investment and
   future installed durable capacity under the firm's response condition.
2. **Lemma 2:** Demand absorption implies lower utilization and price
   compression when installed NEV capacity expands relative to effective demand;
   lower prices have an ambiguous welfare sign before consumer surplus,
   producer surplus, fiscal costs, and resource costs are included.
3. **Proposition 1:** Coordinated state-contingent policy is welfare-improving
   when the marginal aggregate return to capacity support exceeds fiscal and
   misallocation costs.
4. **Proposition 2:** When
   $\zeta^{L,NEV}(Z_t)>0$ but $\zeta^{C,NEV}(Z_t)\leq0$, sufficient conditions
   on local payoff weights, fiscal costs, and spillover/internalization gaps
   imply the symmetric Markov-Nash policy satisfies $s^D>s^{CP}$.
5. **Proposition 3:** If $s^D>s^{CP}$, NEV capacity investment is increasing in
   the wedge, and idle-capacity and resource-misallocation costs dominate
   consumer surplus, producer surplus, and optional learning benefits,
   decentralized policy generates higher NEV capacity, lower utilization, a
   lower NEV MPK, and lower welfare relative to the coordinated benchmark. If
   those costs do not dominate, the welfare sign is left for quantification.

Slow policy exit is not a standalone hard proposition in the current baseline.
It should be treated as a dynamic or numerical result unless a separate proof is
written.

---

## 6. Links to other modules

- Firm behavior, demand absorption, durable capacity, regional labor, and
  optional learning:
  `02_environment_firms.md`
- Local government payoff and Markov-Nash game: `03_government_game.md`
- Constrained planner and equilibrium conditions: `04_planner_equilibrium.md`
- Quantification discipline and proof-before-code sequence:
  `05_quantification_solution.md`
- Counterfactual definitions: `06_counterfactuals.md`

---

## 7. Open questions

1. What are the weakest sufficient conditions for $s^D>s^{CP}$ in the symmetric
   two-region static model?
2. Which object should measure the empirical utilization gap: physical capacity,
   sales-to-capacity, or revenue-to-capacity?
3. How should the paper report a first-best upper bound, if at all, without
   confusing it with the main constrained-policy benchmark?
