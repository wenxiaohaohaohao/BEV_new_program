# Module 6: Counterfactuals

## 1. Purpose

This module records counterfactuals to run only after the baseline model is
closed and the static two-region trade-off conditions are written. The main
benchmark is the comparison between `decentralized local implementation` and
`implementable centralized coordination`, and the welfare sign is not preset.
Counterfactuals should report how effects vary with the endogenous state
summarized by capacity, demand absorption, prices, utilization, profits, fiscal
costs, and MPK/MRPK gaps, not with exogenous life-cycle phase labels.

All counterfactuals must be policy or allocation experiments over sourced model
objects: $s_{r,t}$, capacity investment, durable installed capacity, utilization,
prices, fiscal costs, MPK/MRPK gaps, and $W^D-W^{CP}$. They should not add new
welfare penalties or conceptual state variables.

---

## 2. Counterfactual 1: No local industrial policy [Auxiliary]

**Model change:** Set $s_{r,t}=0$ for all regions and periods.

**Economic question:** What would NEV output, capacity, learning, utilization,
consumer or final-good price benefits, and welfare look like without local policy
support?

**Provenance:** This is a policy-counterfactual exercise. It is useful for
measurement, but it is not the main Chen-Liu-Song local-central benchmark.

**Expected outputs:**

- NEV output and capacity paths.
- Technology accumulation path.
- Utilization and MPK gaps.
- Welfare relative to decentralized equilibrium: $W^{CF1}-W^D$.

**Interpretation:** This is not the main normative benchmark. It separates the
benefit of having some industrial policy from the cost of decentralized policy
competition.

---

## 3. Counterfactual 2: Centralized constrained policy equilibrium

**Model change:** Replace decentralized local policies $s_{r,t}^D$ with the
constrained planner's coordinated policy instruments $s_{r,t}^{CP}$.
Households and firms continue to optimize privately.

**Provenance:** This is the direct implementation of the
$\zeta^{L,NEV}(Z_t)$ versus $\zeta^{C,NEV}(Z_t)$ comparison.

**Economic question:** Does coordinating industrial policy at the national level
raise, leave unchanged, or lower net welfare relative to decentralized local
implementation?

**Expected outputs:**

- Welfare comparison: $W^D-W^{CP}$.
- Policy comparison: $s_t^{CP}$ versus $s_t^D$.
- Capacity comparison: $H_t^{N,CP}$ versus $H_t^{N,D}$.
- Utilization and MPK gap comparison.
- The state range where
  $\zeta^{L,NEV}(Z_t)>0$ but $\zeta^{C,NEV}(Z_t)\leq0$.

**Welfare decomposition:** consumer surplus, producer surplus, optional learning
benefits, fiscal-cost savings, idle-capacity cost reduction, capital
reallocation, and misallocation reduction.

---

## 4. Counterfactual 3: Subsidy cap

**Model change:** Impose $s_{r,t}\leq\bar s$ for all regions and periods, where
$\bar s$ is chosen relative to the constrained-planner policy in states where
aggregate returns to expansionary capacity support remain positive.

**Provenance:** This remains a rule over the single composite policy wedge
$s_{r,t}$, not a new policy-tool vector.

**Economic question:** Can a simple cap on local expansionary platform intensity
reduce dynamic capacity misallocation without eliminating useful local
implementation?

**Expected outputs:**

- $W^{CF3}$ relative to $W^D$ and $W^{CP}$.
- Fraction of any coordination gain captured by the cap, if $W^{CP}>W^D$.
- Capacity, utilization, and MPK effects.

---

## 5. Counterfactual 4: Capacity approval rule

**Model change:** Condition new capacity approvals or platform eligibility on
utilization, demand forecasts, or MPK/MRPK gaps.

**Provenance:** This is a coordination rule over capacity investment and the
single expansionary policy wedge, not a new primitive policy tool.

**Economic question:** Does tying new capacity to demand absorption and capital
returns reduce durable-capacity overaccumulation relative to decentralized
implementation?

**Expected outputs:**

- Welfare gain: $W^{CF4}-W^D$.
- Capacity, utilization, price, and MPK/MRPK effects.
- Fraction of the $CP$ coordination gain captured by the rule.

---

## 6. Counterfactual 5: Faster capacity retirement

**Model change:** Increase $\delta_H$ or the recovery / repurposing value of
capacity so that low-return installed capacity exits or is reorganized faster.

**Provenance:** This changes the durable-capacity persistence object already in
the baseline. It does not create an `InvolutionState`.

**Economic question:** Does faster capacity retirement raise welfare by reducing
idle capacity and MPK/MRPK gaps?

**Expected outputs:**

- Welfare gain from faster retirement: $W^{CF5}-W^D$.
- Capacity, utilization, and MPK/MRPK effects.
- Fiscal and producer-surplus consequences.

**Status:** This counterfactual should be treated as a dynamic result after the
static proof, not as a hard proposition before proof.

---

## 7. Counterfactual 6: Policy-mix shift

**Model change:** Shift policy from entry or capacity support toward common
technology, standards, demand-side infrastructure, and exit coordination at
comparable fiscal cost.

**Provenance:** This counterfactual is allowed only if each alternative policy
maps to a documented policy object. It must not add a free-standing welfare
benefit.

**Economic question:** Is welfare loss driven by the level of support, or by the
fact that support is biased toward durable capacity expansion?

**Expected outputs:**

- Welfare comparison between expansionary and alternative support.
- Capacity, utilization, prices, producer surplus, and MPK/MRPK paths.
- Fiscal-cost comparison using the same budget discipline.

---

## 8. Open questions

1. How should $\bar s$ be chosen for the cap counterfactual?
2. What utilization, demand-forecast, or MPK threshold should discipline the
   capacity approval rule?
3. Should the first-best upper bound $W^{FB}$ be reported in an appendix
   counterfactual?
