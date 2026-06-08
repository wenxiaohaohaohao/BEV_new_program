# Decision Log

Record accepted and rejected modeling decisions with reasons.
Open questions should remain in module notes, not here.

---

## Decision 1: Baseline policy variable

**Accepted:** Single local expansionary policy wedge $s_{r,t} \geq 0$.

**Rejected:** Modeling 6–7 specific policy instruments separately in the baseline.

**Reason:** A single wedge is consistent with macro misallocation models (Restuccia-Rogerson,
Hsieh-Klenow) and avoids excessive dimensionality. Specific instruments (subsidies, land grants,
credit, industrial funds) will be used to construct and calibrate the composite wedge.

---

## Decision 2: Policy state dependence

**Accepted:** Policy is state-dependent and subject to adjustment frictions ($\chi_s > 0$).

**Rejected:** Assuming policy is fixed or that local governments never exit.

**Reason:** The core mechanism is not that local policy never exits, but that it exits
more slowly than the planner's policy. A fixed policy assumption would eliminate
the dynamic dimension of the involution mechanism.

---

## Decision 3: Government game

**Accepted:** Local governments play a Markov-Nash game in the baseline.

**Rejected:** Treating local policy as purely exogenous.

**Reason:** The core mechanism requires decentralized local policy competition.
Exogenous policy would miss the endogenous amplification through regional competition.

---

## Decision 4: Product market

**Accepted:** Inverse demand function $P^N = \mathcal{D}(Q^N)$ in the baseline.

**Rejected:** Full BLP differentiated demand system in the baseline.

**Reason:** The baseline model needs a transparent price/profit mechanism that allows
analytical characterization. BLP is reserved as an extension (Module 8).

---

## Decision 5: Involution definition

**Accepted:** Involution is an equilibrium outcome, not an exogenous shock.

**Definition:**

$$\text{Involution}_t = \left(
s_t^D - s_t^P,\;
H_t^{N,D} - H_t^{N,P},\;
u_t^{N,P} - u_t^{N,D},\;
MPK_t^{O,D} - MPK_t^{N,D},\;
W^P - W^D
\right)$$

---

## Decision 6: Planner is not no-policy benchmark

**Accepted:** The planner chooses state-contingent $s^P(Z_{r,t}, Z_t)$,
which is positive in the early phase and declines in the mature phase.

**Rejected:** Defining the planner as a no-policy world ($s = 0$ always).

**Reason:** A no-policy benchmark conflates two distinct inefficiencies:
(i) the inefficiency of having any policy at all, and
(ii) the inefficiency of having too much policy for too long.
The paper is about (ii). The planner benchmark isolates (ii).

---

## Decision 7: Separate government game and planner (Module 3 vs. Module 4)

**Accepted:** Local government game in Module 3. Planner problem in Module 4.

**Rejected:** Combining government game and planner in one module.

**Reason:** The local government game describes the decentralized competitive equilibrium.
The planner problem is a normative benchmark. They are conceptually distinct
and have different first-order conditions, constraints, and equilibrium objects.
Merging them creates confusion between positive and normative analysis.

---

## Decision 8: Separate counterfactuals (Module 6)

**Accepted:** Counterfactuals in a dedicated Module 6.

**Rejected:** Including counterfactual specifications in Module 5 (quantification).

**Reason:** Counterfactuals are the main quantitative output of the paper.
Each counterfactual requires careful specification of model change, economic question,
output variables, and welfare decomposition. They deserve a dedicated module.
