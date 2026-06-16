# Module 6: Counterfactuals

## 1. Purpose

This module records counterfactuals to run only after the baseline model is
closed and the static two-region trade-off conditions are written. The main
benchmark is the comparison between `decentralized local implementation` and
`implementable centralized coordination`, and the welfare sign is not preset.
Counterfactuals should report how effects differ between the early
industry-building phase and the later scale-competition phase.

---

## 2. Counterfactual 1: No local industrial policy

**Model change:** Set $s_{r,t}=0$ for all regions and periods.

**Economic question:** What would NEV output, capacity, learning, utilization,
consumer or final-good price benefits, and welfare look like without local policy
support?

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

**Economic question:** Does coordinating industrial policy at the national level
raise, leave unchanged, or lower net welfare relative to decentralized local
implementation?

**Expected outputs:**

- Welfare comparison: $W^D-W^{CP}$.
- Policy comparison: $s_t^{CP}$ versus $s_t^D$.
- Capacity comparison: $H_t^{N,CP}$ versus $H_t^{N,D}$.
- Utilization and MPK gap comparison.

**Welfare decomposition:** consumer or final-good price-benefit changes, learning
gains, discovery and implementation benefits, fiscal-cost savings,
idle-capacity cost reduction, capital reallocation, and misallocation reduction.
Consumer, learning, discovery, and mobilization benefits must be credited before
declaring a net welfare gain from coordination.

---

## 4. Counterfactual 3: Subsidy cap or anti-duplication rule

**Model change:** Impose $s_{r,t}\leq\bar s$ for all regions and periods, where
$\bar s$ is chosen relative to the constrained-planner early-phase policy.

**Economic question:** Can a simple national rule improve the decentralized
trade-off without eliminating useful experimentation and private-capital
mobilization?

**Expected outputs:**

- $W^{CF3}$ relative to $W^D$ and $W^{CP}$.
- Fraction of any coordination gain captured by the cap, if $W^{CP}>W^D$.
- Capacity, utilization, and MPK effects.

---

## 5. Counterfactual 4: Faster policy exit

**Model change:** Reduce policy adjustment cost $\chi_s$ or otherwise relax sunk
policy commitments after overcapacity becomes observable.

**Economic question:** Does faster policy exit raise welfare by reducing
misallocation, or lower welfare by cutting off useful discovery, learning, and
selection?

**Expected outputs:**

- Welfare gain from faster exit: $W^{CF4}-W^D$.
- Policy path comparison.
- Capacity utilization and consolidation outcomes.

**Status:** This counterfactual should be treated as a dynamic result after the
static proof, not as a hard proposition before proof.

---

## 6. Counterfactual 5: Expansionary versus productivity-enhancing support

**Model change:** Replace the expansionary capacity wedge with a policy that
raises NEV productivity $A_{r,t}^N$ at comparable fiscal cost.

**Economic question:** Is the problem mainly the scale of support, or the form of
support?

**Expected outputs:**

- Welfare comparison between expansionary and productivity-enhancing support.
- Technology, capacity, utilization, and MPK paths.
- Fiscal-cost comparison using the same budget discipline.

---

## 7. Open questions

1. How should $\bar s$ be chosen for the cap counterfactual?
2. What empirical moments discipline the productivity-enhancing policy in CF5?
3. Should the first-best upper bound $W^{FB}$ be reported in an appendix
   counterfactual?
