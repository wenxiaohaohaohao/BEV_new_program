# Module 1: Research Question, Core Mechanism, Involution Definition

## 1. Purpose

This module records the paper's research question, the core mechanism, and the
formal definition of involution after the third-round critique and the external
notes on active firm response. It uses the constrained planner / centralized
policy equilibrium as the main benchmark.

---

## 2. Research question [Accepted baseline]

How does decentralized local industrial policy in a strategic emerging industry
generate over-entry, excess capacity, price and profit compression, and aggregate
capital misallocation after initially facilitating industrial upgrading?

The paper does not argue that industrial policy is always harmful. The claim is
state-contingent:

- When learning externalities, market formation, and coordination externalities
  are sufficiently large, coordinated industrial policy can raise welfare.
- When the industry matures, capacity is high, and the marginal return to further
  NEV expansion falls, the coordinated policy wedge should decline.
- Decentralized local governments may maintain $s^D > s^{CP}$ because each
  region values local NEV output, employment, and fiscal outcomes while only
  partially internalizing national overcapacity and aggregate misallocation.
- Firms are not passive recipients of policy. They enter or expand capacity in
  response to policy support, expected demand, expected prices, financing
  conditions, and productivity. Their private responses can be rational even when
  simultaneous entry is excessive in the aggregate.
- The main welfare object is $W^{CP}-W^D$, the gain from replacing decentralized
  local policy competition with coordinated policy instruments.

The paper is not a no-policy benchmark exercise. A no-policy economy is useful
as a counterfactual, but the main normative comparison is decentralized local
policy versus centralized constrained policy.

---

## 3. Core mechanism [Accepted baseline]

$$
\underbrace{\text{Local policy game}}_{\text{Markov-Nash}}
\;+\;
\underbrace{\text{private firm response}}_{\text{entry/capacity}}
\Rightarrow
\underbrace{\text{Over-entry and excess NEV capacity}}_{H^{N,D}>H^{N,CP}}
\Rightarrow
\underbrace{\text{CES-demand price compression}}_{P^{N,D}<P^{N,CP}}
\Rightarrow
\underbrace{\text{Low utilization and MPK gap}}_{u^{N,D}<u^{N,CP},\;MPK^{O,D}>MPK^{N,D}}
\Rightarrow
\underbrace{\text{Aggregate misallocation and welfare loss}}_{W^{CP}-W^D>0}.
$$

**Step 1: Local policy game and firm response to excess capacity**

Each local government chooses $s_{r,t}$ to increase local NEV activity, employment,
and fiscal surplus. The fiscal outlay $\phi s_{r,t}H_{r,t}^N$ is local, but the
national price compression, cross-region spillovers, and aggregate MPK loss are
not fully internalized by any single region. The decentralized FOC can therefore
imply a higher policy wedge than the constrained-planner FOC.

Firms then respond privately. A higher local policy wedge raises the private
return to NEV entry or capacity expansion by lowering effective capital costs
and by signaling local support. Expected demand growth, expected NEV prices,
financing conditions, and productivity can reinforce this response. The first
baseline proof only needs a reduced-form positive capacity response; a full
heterogeneous-firm entry model is an extension.

**Step 2: Excess capacity to price and profit compression**

The final-good CES aggregator implies NEV relative demand. With the final-good
price normalized to one,

$$P_t^N=\eta_N\left(\frac{Y_t}{Y_t^N}\right)^{1/\varepsilon}.$$

As decentralized policy expands NEV quantity/capacity beyond the coordinated
level, the CES demand system lowers the NEV relative price. Lower prices compress
profits and reduce the return to additional NEV capacity.

**Step 3: Price compression to low utilization and MPK gap**

NEV installed capacity $H_{r,t}^N$ is the sector-specific capital stock. When
aggregate NEV capacity exceeds demand, utilization falls:

$$u_{r,t}^N = Q_{r,t}^N/H_{r,t}^N < 1.$$

Lower utilization and price compression reduce the return on NEV capacity, so
the decentralized equilibrium can feature $MPK^{N,D}<MPK^{O,D}$.

**Step 4: MPK gap to welfare loss**

The MPK gap is the model's aggregate misallocation object. Welfare loss is
measured relative to the constrained planner:

$$W^{CP}-W^D.$$

---

## 4. Definition of involution [Accepted baseline]

Involution is not an exogenous shock. It is the joint equilibrium pattern created
by decentralized local industrial policy competition.

$$
\text{Involution}_t =
\left(
\underbrace{s_t^D-s_t^{CP}}_{\text{policy gap}},\;
\underbrace{H_t^{N,D}-H_t^{N,CP}}_{\text{capacity gap}},\;
\underbrace{u_t^{N,CP}-u_t^{N,D}}_{\text{utilization gap}},\;
\underbrace{MPK_t^{O,D}-MPK_t^{N,D}}_{\text{MPK gap}},\;
\underbrace{W^{CP}-W^D}_{\text{welfare gap}}
\right).
$$

The components are jointly determined by the policy game and private-sector
responses. They should not be treated as independent shocks.

This definition avoids two misreadings. The paper does not claim that local
governments alone mechanically create involution, and it does not claim that firm
entry is irrational. The distortion is an equilibrium gap between locally or
privately rational decentralized choices and the coordinated policy benchmark.

---

## 5. Proposition discipline [Accepted baseline]

The main theoretical claims should be organized as follows:

1. **Lemma 1:** A higher local policy wedge raises private NEV entry or installed
   capacity under the firm's response condition.
2. **Lemma 2:** CES-derived demand implies NEV price compression when aggregate
   NEV quantity expands relative to final demand.
3. **Proposition 1:** Coordinated state-contingent policy is welfare-improving
   when the marginal learning and coordination benefits exceed fiscal and
   misallocation costs.
4. **Proposition 2:** Under sufficient conditions on local payoff weights, fiscal
   costs, and spillover/internalization gaps, the symmetric Markov-Nash policy
   satisfies $s^D>s^{CP}$.
5. **Proposition 3:** If $s^D>s^{CP}$ and NEV investment is increasing in the
   wedge, decentralized policy generates higher NEV capacity, lower utilization,
   and a lower NEV MPK relative to the coordinated benchmark.

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
