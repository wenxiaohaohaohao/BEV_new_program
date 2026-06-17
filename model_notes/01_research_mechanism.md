# Module 1: Research Question, Core Mechanism, and Welfare Regimes

## 1. Purpose

This module records the paper's research question, the core mechanism, and the
formal distinction between creative destruction and aggregate misallocation
after the third-round critique and the external notes on active firm response.
It uses the constrained planner / centralized policy equilibrium as the main
benchmark.

This module follows the provenance-controlled baseline in
`00_MASTER_model_memo.md`. Lifecycle language is interpretive; the formal model
uses sourced objects such as policy, entry, investment, capacity, demand,
prices, utilization, profits, and MPK gaps.

---

## 2. Research question [Accepted baseline]

This paper studies the dual role of decentralized local industrial policy across
development stages of a strategic emerging industry. In the early stage, when the
industry is constrained by learning externalities, weak market formation, and
supply-chain coordination failures, local governments and private capital can
promote industry takeoff, cost decline, and firm screening. After the industry
enters a scale-competition stage, continued expansionary investment attraction,
subsidies, and capacity support can generate duplicated entry, low utilization,
price compression, capital-return gaps, and aggregate resource misallocation.

The paper compares decentralized local implementation with implementable
centralized coordination and asks when local competition is discovery and
creative destruction, and when it becomes duplicated capacity and aggregate
misallocation.

The paper does not argue that industrial policy is always harmful, and it does
not argue that lower NEV prices are mechanically welfare-reducing. The claim is
state-contingent:

- When learning externalities, market formation, and coordination externalities
  are sufficiently large, coordinated industrial policy can raise welfare.
- When the industry enters scale competition, capacity is high, and the marginal
  return to further NEV expansion falls, the coordinated policy wedge should
  decline.
- Decentralized local governments may maintain $s^D > s^{CP}$ in
  scale-competition or misallocation-dominant states because each region values
  local NEV output,
  employment, and fiscal outcomes while only partially internalizing national
  duplicated capacity and aggregate misallocation.
- Firms are not passive recipients of policy. They enter or expand capacity in
  response to policy support, expected demand, expected prices, financing
  conditions, and productivity. Their private responses can be rational even when
  simultaneous entry is excessive in the aggregate.
- The main welfare object is $W^D-W^{CP}$, the net value of decentralized local
  implementation relative to coordinated policy after crediting learning,
  discovery, consumer, and mobilization benefits and subtracting fiscal,
  fixed-cost, low-utilization, and capital-misallocation costs.

Existing studies explain how China's NEV industry rose. This paper asks whether
the decentralized local implementation that helped generate this rise also
produced duplicated capacity and aggregate misallocation once the industry
entered the scale-competition stage.

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
\underbrace{Entry_{r,t}^N,\ I_{r,t}^H,\ H_{r,t+1}^N}_{\text{entry, investment, capacity}}
\Rightarrow
\underbrace{D_t^N(P_t^N),\ P_t^N,\ u_t^N,\ \pi_t^N}_{\text{demand, price, utilization, profit}}
\Rightarrow
\underbrace{MPK_t^N-MPK_t^O}_{\text{capital misallocation}}
\Rightarrow
\underbrace{\text{Net welfare comparison}}_{W^D-W^{CP}\lessgtr0}.
$$

Klepper-style industry life-cycle language describes how these objects evolve
over time. It does not create a separate `ScaleCompetitionState`,
`SelectionState`, or `InvolutionState`.

**Step 1: Local policy game and firm response to capacity competition**

Each local government chooses $s_{r,t}$ to increase local NEV activity,
employment, and fiscal surplus. The fiscal outlay $\phi s_{r,t}H_{r,t}^N$ is
local, but the national consumer benefit from lower prices, producer
price/revenue compression, cross-region spillovers, fiscal financing costs, and
aggregate MPK loss are not fully internalized by any single region. The
decentralized FOC can imply a higher policy wedge than the constrained-planner
FOC in the scale-competition or misallocation-dominant regime, but this is not
imposed globally. In other states, local information, investment-attraction
capacity, and private-capital mobilization may justify decentralized intensity.

In Chen-Liu-Song notation, this is a comparison between the local intervention
index $\zeta_{rt}^{L,NEV}$ and the central intervention index
$\zeta_{rt}^{C,NEV}$.

Firms then respond privately. A higher local policy wedge raises the private
return to NEV entry or capacity expansion by lowering effective capital costs
and by signaling local support. Expected demand growth, expected NEV prices,
financing conditions, and productivity can reinforce this response. The first
baseline proof only needs a reduced-form positive capacity response; a full
heterogeneous-firm entry model is an extension.

**Step 2: Entry and capacity to price compression, discovery, and consumer benefit**

The final-good CES aggregator implies NEV relative demand. With the final-good
price normalized to one,

$$P_t^N=\eta_N\left(\frac{Y_t}{Y_t^N}\right)^{1/\varepsilon}.$$

As decentralized policy expands NEV quantity/capacity, the same action can create
benefits and costs. It can expand experimentation, accelerate learning, mobilize
private capital, and lower consumer prices through the CES demand system. It can
also compress producer revenue, lower utilization, rely on implicit subsidies,
misallocate capital, delay exit, or distort innovation. The welfare sign is the
net of these channels.

**Step 3: Price compression to low utilization and MPK gap**

NEV installed capacity $H_{r,t}^N$ is the sector-specific capital stock. When
aggregate NEV capacity exceeds demand, utilization falls:

$$u_{r,t}^N = Q_{r,t}^N/H_{r,t}^N < 1.$$

Lower utilization and price compression reduce the return on NEV capacity, so
the decentralized equilibrium can feature $MPK^{N,D}<MPK^{O,D}$.

**Step 4: MPK gap to welfare-regime classification**

The MPK gap is the model's aggregate misallocation object. Welfare is measured
relative to the constrained planner and is net of consumer or final-good benefit,
learning, discovery, and mobilization:

$$W^D-W^{CP}.$$

The three possible empirical/theoretical regimes are:

1. **Misallocation-dominant:** $W^D<W^{CP}$.
2. **Offsetting trade-off:** $W^D\approx W^{CP}$.
3. **Discovery-dominant:** $W^D>W^{CP}$.

---

## 4. Definition of creative destruction versus aggregate misallocation [Accepted baseline]

Aggregate misallocation is not an exogenous shock and not the maintained
outcome. It is one regime of the joint equilibrium created by decentralized
local industrial policy competition and private-sector responses.

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
that firm entry is irrational, and does not pre-judge the sign of
$W^D-W^{CP}$. The empirical question is whether locally and privately rational
decentralized choices produce creative destruction, an offsetting trade-off, or
aggregate misallocation relative to the coordinated policy benchmark.

---

## 5. Proposition discipline [Accepted baseline]

The main theoretical claims should be organized as follows:

1. **Lemma 1:** A higher local policy wedge raises private NEV entry or installed
   capacity under the firm's response condition.
2. **Lemma 2:** CES-derived demand implies NEV price compression when aggregate
   NEV quantity expands relative to effective demand; lower prices have an
   ambiguous welfare sign before fiscal and resource costs are included.
3. **Proposition 1:** Coordinated state-contingent policy is welfare-improving
   when the marginal learning and coordination benefits exceed fiscal and
   misallocation costs.
4. **Proposition 2:** In the scale-competition or misallocation-dominant regime,
   sufficient conditions on local payoff weights, fiscal costs, and
   spillover/internalization gaps imply the symmetric Markov-Nash policy
   satisfies $s^D>s^{CP}$.
5. **Proposition 3:** If $s^D>s^{CP}$, NEV investment is increasing in the
   wedge, and duplicated-capacity and resource-misallocation costs dominate
   consumer or final-good price benefits and learning gains, decentralized policy
   generates higher NEV
   capacity, lower utilization, a lower NEV MPK, and lower welfare relative to
   the coordinated benchmark. If those costs do not dominate, the welfare sign is
   left for quantification.

Slow policy exit is not a standalone hard proposition in the current baseline.
It should be treated as a dynamic or numerical result unless a separate proof is
written.

---

## 6. Links to other modules

- Firm behavior, CES demand, capacity, regional labor, and learning:
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
