# Decision Log

Record accepted and rejected modeling decisions with reasons.
Open questions should remain in module notes, not here.

---

## Decision 1: Baseline policy variable

**Accepted:** A single local expansionary policy wedge $s_{r,t}\geq0$.

**Rejected:** Modeling each local policy instrument separately in the baseline.

**Reason:** The paper's core object is a region-sector policy wedge that changes
the effective cost of expanding NEV activity. A single wedge keeps the baseline
tractable and leaves subsidies, land grants, credit support, industrial funds,
tax preferences, and investment facilitation to the empirical construction of
the composite policy measure.

---

## Decision 2: NEV capital and capacity

**Accepted:** NEV installed capacity $H_{r,t}^N$ is the sector-specific NEV
capital stock.

**Rejected:** Maintaining both generic NEV capital $K_{r,t}^N$ and a separate
capacity stock $H_{r,t}^N$ with independent accumulation equations.

**Reason:** The central welfare object is capital misallocation. MPK comparisons
and welfare accounting require a single, well-defined NEV capital/capacity stock.

---

## Decision 3: Aggregate capital and resource constraint

**Accepted:** Aggregate capital market clearing is:

$$K_t=K_t^O+\sum_r H_{r,t}^N.$$

Outside-sector capital evolves as:

$$K_{t+1}^O=(1-\delta_K)K_t^O+I_t^{K,O}.$$

The aggregate resource constraint is:

$$
Y_t=C_t+I_t^{K,O}+\sum_r I_{r,t}^H+\sum_r G_{r,t}+AdjCost_t+DebtCost_t.
$$

**Rejected:** Using both generic $I_t^K$ and NEV capacity investment
$\sum_r I_{r,t}^H$ without distinguishing them.

**Reason:** After the capital-capacity merger, $I_t^K$ must mean outside-sector
capital investment if it is used at all. NEV capital accumulation is already
counted through $I_{r,t}^H$.

---

## Decision 4: Product market

**Accepted:** Baseline NEV demand is derived from the CES final-good aggregator.
With the final-good price normalized to one:

$$P_t^N=\eta_N\left(\frac{Y_t}{Y_t^N}\right)^{1/\epsilon}.$$

**Rejected:** Imposing a standalone inverse demand curve in addition to the CES
aggregator.

**Reason:** A CES final-good aggregator already implies a relative demand system.
Adding an independent inverse demand curve overdetermines the product market.

---

## Decision 5: Learning law

**Accepted:** Use a combined frontier-gap learning law with both local learning
and cross-regional spillovers:

$$
A_{r,t+1}^N
=
A_{r,t}^N
+\psi_L
\frac{\bar A_t-A_{r,t}^N}{\bar A_t}
(Y_{r,t}^N)^\nu
+\psi_G
\frac{\bar A_t-A_{r,t}^N}{\bar A_t}
\left(\sum_{r'\neq r}Y_{r',t}^N\right)^\nu.
$$

The frontier evolves exogenously:

$$\bar A_{t+1}=(1+g_A)\bar A_t.$$

**Rejected:** Knowledge depreciation, national spillovers that double-count own
output, and a single frontier-gap learning term without cross-regional spillovers.

**Reason:** The baseline must preserve local learning, cross-regional spillovers,
diminishing learning near the frontier, and a clear difference between local and
centralized policy internalization.

---

## Decision 6: Local government budget and tax base

**Accepted:** Local governments finance NEV support from the total regional output
tax base:

$$
\tau_r(Y_{r,t}^N+Y_{r,t}^O)+B_{r,t+1}
=(1+r_t^g)B_{r,t}
+\phi s_{r,t}H_{r,t}^N
+G_{r,t}
+\mathcal C(B_{r,t+1}).
$$

Debt cost is:

$$\mathcal C(B_{r,t+1})=\frac{\kappa_B}{2}B_{r,t+1}^2.$$

Gross NEV subsidy cost is $\phi s_{r,t}H_{r,t}^N$. Net NEV fiscal cost can be
recorded as:

$$NetCost_{r,t}^N=\phi s_{r,t}H_{r,t}^N-\tau_rY_{r,t}^N.$$

**Rejected:** Leaving $Y_{r,t}$ undefined in the fiscal constraint or treating
NEV output alone as the default tax base.

**Reason:** The tax base determines whether NEV subsidies are financed only by
the NEV sector or by the whole regional economy. The baseline uses the total
regional tax base.

---

## Decision 7: Policy cost

**Accepted:** The baseline policy cost is the true fiscal subsidy cost
$\phi s_{r,t}H_{r,t}^N$, embedded in the local budget and fiscal-surplus term.
The baseline also keeps policy adjustment cost:

$$\frac{\chi_s}{2}(s_{r,t}-s_{r,t-1})^2.$$

**Rejected for baseline:** An additional convex policy-intensity cost
$\kappa s_{r,t}^2/2$.

**Reason:** The baseline should avoid double-counting policy costs. If an
administrative or implementation-capacity cost is later needed, it should enter
as a robustness or extension decision.

---

## Decision 8: Local government objective

**Accepted:** The baseline local objective contains local NEV output, local NEV
employment, fiscal surplus, and policy adjustment cost:

$$
V_{r,t}^L
=
\theta_yY_{r,t}^N
+\theta_eL_{r,t}^N
+\theta_fFiscalSurplus_{r,t}
-\frac{\chi_s}{2}(s_{r,t}-s_{r,t-1})^2.
$$

**Rejected:** Simultaneously placing local output, investment, employment, and
tax revenue in the objective without discipline, and retaining a separate
$\kappa s^2/2$ baseline cost.

**Reason:** Output, investment, employment, and tax revenue are overlapping local
targets. A parsimonious objective makes the over-subsidization result easier to
interpret.

---

## Decision 9: Local government discounting

**Accepted:** The baseline sets $\beta_g=\beta$.

**Rejected:** Using $\beta_g<\beta$ as an unexplained source of
over-subsidization in the first closed version.

**Reason:** Finite-tenure political incentives may matter, but the first model
should prove the decentralized-versus-centralized wedge from local externalities,
fiscal incentives, and strategic interaction.

---

## Decision 10: Regional labor markets

**Accepted:** The baseline has fixed regional labor endowments:

$$L_{r,t}^N+L_{r,t}^O=\bar L_r,$$

with regional wages $w_{r,t}$ clearing local labor markets.

**Rejected:** Mixing an aggregate wage $w_t$ with firm-level regional wages
$w_{r,t}$ without a labor mobility assumption.

**Reason:** Fixed regional labor keeps the model closed and gives local
employment a meaningful role in the government objective.

---

## Decision 11: Outside-sector technology

**Accepted:** Baseline outside-sector technology is exogenous and region-specific:

$$A_{r,t}^O=A_r^O.$$

**Rejected for baseline:** Endogenous outside-sector learning.

**Reason:** The outside sector measures opportunity cost and capital
misallocation. Endogenous outside-sector learning would add a second dynamic
learning mechanism before the NEV policy wedge is closed.

---

## Decision 12: Government game

**Accepted:** Local governments play a simultaneous Markov-Nash policy game.

**Rejected:** Treating local policy as exogenous.

**Reason:** The core mechanism requires decentralized local policy competition.
Exogenous policy would show that policy affects capacity, but not why local
governments choose excessive support relative to a coordinated benchmark.

---

## Decision 13: Strategic complementarity and policy inertia

**Accepted:** Early-stage local policy competition may be modeled as strategic
complementarity in best responses:

$$\frac{\partial BR_r}{\partial s_{-r}}>0.$$

Late-stage slow exit is modeled through policy adjustment costs and local
fiscal/employment incentives.

**Rejected for baseline:** Modeling late-stage exit as a war-of-attrition or
stopping-time game.

**Reason:** Strategic complementarity and policy inertia are different
mechanisms. The baseline keeps them separate to avoid overcomplicating the local
government game.

---

## Decision 14: Planner benchmark

**Accepted:** The main normative benchmark is the constrained planner / centralized
policy equilibrium. It chooses policy instruments $\{s_{r,t}^{CP}\}$ while
households and firms remain decentralized optimizers.

**Rejected:** Using a first-best planner that directly chooses all allocations as
the main benchmark.

**Reason:** The relevant policy reform is centralized coordination of policy
instruments, not direct command over every capital, capacity, labor, and output
allocation.

---

## Decision 15: State-space reduction

**Accepted:** The baseline dynamic state vector uses region-level sufficient
statistics:

$$
X_t=
\{H_{r,t}^N,A_{r,t}^N,B_{r,t},s_{r,t-1}\}_{r=1}^R.
$$

**Rejected for baseline:** Carrying the full firm productivity distribution
$\mu_{r,t}(z)$.

**Reason:** The full heterogeneous-firm dynamic game is too large for the first
closed model. Firm heterogeneity is an extension after the region-level model is
solved.

---

## Decision 16: Demonstration-city designation

**Accepted:** Demonstration-city or pilot designation is a potential empirical
design requiring validation.

**Rejected:** Treating designation as automatically exogenous.

**Requirement:** Use only after checking first-stage relevance, pre-trends, and
exclusion restrictions conditional on pre-period auto-industry base, fiscal
capacity, urban characteristics, and other local fundamentals.

---

## Decision 17: Involution definition

**Accepted:** Involution is an equilibrium outcome. The main comparison is
decentralized equilibrium $D$ versus constrained planner $CP$:

$$
\text{Involution}_t =
\left(
s_t^D-s_t^{CP},\;
H_t^{N,D}-H_t^{N,CP},\;
u_t^{N,CP}-u_t^{N,D},\;
MPK_t^{O,D}-MPK_t^{N,D},\;
W^{CP}-W^D
\right).
$$

**Rejected:** Defining the main welfare comparison as decentralized equilibrium
versus a first-best planner.

**Reason:** The paper studies excessive decentralized industrial policy relative
to a feasible centralized policy benchmark.

---

## Decision 18: Proposition discipline

**Accepted:** Before numerical code, the project must write a static symmetric
two-region model and prove sufficient conditions for $s^D>s^{CP}$.

**Rejected:** Treating $s^D>s^{CP}$ and slow policy exit as asserted propositions
without proof.

**Reason:** Over-subsidization is the central theoretical result. It must follow
from the local government FOC relative to the constrained-planner FOC. Slow exit
should be a dynamic or numerical result unless a separate proof is supplied.

---

## Decision 19: Baseline versus extensions

**Accepted:** The baseline includes the single policy wedge, NEV installed
capacity, CES-derived demand, total-tax-base local budgets, fixed regional labor,
frontier-gap learning with spillovers, and a simultaneous local policy game.

**Rejected for the baseline:** SOE heterogeneity, export relief valve, soft budget
constraints, production networks, full differentiated demand, full promotion
tournaments, war-of-attrition exit, partial labor mobility, outside-sector
endogenous learning, administrative $\kappa s^2/2$ costs, and full firm
productivity distributions.

**Reason:** These features are important, but adding them before the core
decentralized-policy-misallocation mechanism is closed would obscure the main
theoretical comparison.
