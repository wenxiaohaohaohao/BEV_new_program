# Module 6: Counterfactuals

## 1. Purpose

This module records the full specification of each counterfactual:
- Model change relative to baseline
- Economic question being answered
- Expected variables to report
- Welfare decomposition

---

## 2. Counterfactual 1: No local policy competition [Accepted baseline]

**Model change:** $s_{r,t} = 0$ for all $r, t$.

**Economic question:**
What would have happened to NEV output, capacity, utilization, and welfare
if no region had offered industrial policy support?

**Expected outputs:**
- NEV output path $Q_t^{N,\text{CF1}}$ vs. baseline
- Technology accumulation path $A_t^{N,\text{CF1}}$
- Welfare: $W^{\text{CF1}} - W^D$

**Welfare decomposition:**
Gain from eliminating misallocation vs. loss from foregone learning externalities.

**Interpretation:**
If $W^{\text{CF1}} < W^D$: some policy was welfare-improving even in decentralized form.
If $W^{\text{CF1}} > W^D$: the policy competition was net harmful even accounting for LBD.

---

## 3. Counterfactual 2: Centralized planner industrial policy [Accepted baseline]

**Model change:** Replace $s_{r,t}^D$ with $s_{r,t}^P = s^P(Z_{r,t}, Z_t)$ for all $r, t$.

**Economic question:**
What is the welfare gain from coordinating industrial policy at the national level,
internalizing cross-region spillovers, excess capacity, and capital misallocation?

**Expected outputs:**
- Welfare gap: $W^P - W^D$ (the key quantitative result)
- Policy path comparison: $s_t^P$ vs. $s_t^D$
- Capacity path comparison: $H_t^{N,P}$ vs. $H_t^{N,D}$
- MPK gap comparison

**Welfare decomposition:**
Three components: (i) LBD gain, (ii) capacity cost reduction, (iii) misallocation reduction.

---

## 4. Counterfactual 3: Subsidy cap or anti-duplication rule [Accepted baseline]

**Model change:** Impose $s_{r,t} \leq \bar{s}$ for all $r, t$,
where $\bar{s}$ is calibrated to match the planner's early-phase optimum.

**Economic question:**
Can a simple national subsidy cap replicate most of the welfare gain
from full centralized coordination?

**Expected outputs:**
- $W^{\text{CF3}}$ relative to $W^P$ and $W^D$
- Fraction of welfare gap $W^P - W^D$ captured by the cap

**Interpretation:**
This is the policy-relevant counterfactual: a cap is easier to implement than full coordination.
If $W^{\text{CF3}} \approx W^P$, the cap is nearly first-best.

---

## 5. Counterfactual 4: Faster exit and consolidation [Accepted baseline]

**Model change:** Reduce $\chi_s$ from calibrated value to $\chi_s^{\text{low}}$.
(Reduce policy adjustment friction — simulate a world where local governments
can credibly and rapidly withdraw policy.)

**Economic question:**
How much welfare is lost due to policy inertia (slow exit)?
What would the industry look like if exit were faster?

**Expected outputs:**
- Welfare gain from faster exit: $W^{\text{CF4}} - W^D$
- Number of surviving firms (consolidation)
- Capacity utilization path

---

## 6. Counterfactual 5: Expansionary vs. productivity-enhancing support [Accepted baseline]

**Model change:** Replace expansionary wedge $s_{r,t}$ (which lowers capital cost)
with a productivity-enhancing policy (which directly increases $A_{r,t}^N$
at the same fiscal cost).

**Economic question:**
Is the form of industrial policy important? Would a productivity-targeted policy
(e.g., R&D subsidies, technology standards) outperform the capacity-expansion wedge?

**Expected outputs:**
- Welfare comparison: expansionary vs. productivity-targeted at same fiscal cost
- Technology accumulation paths
- Capacity and utilization comparison

**Interpretation:**
This counterfactual directly addresses whether the problem is the *scale* of policy
or the *form* of policy.

---

## 7. Open questions

*(E.g.: For CF2, how to compute the planner's policy function numerically?
For CF5, how to calibrate the alternative policy instrument?)*
