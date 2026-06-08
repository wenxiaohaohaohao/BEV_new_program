# Decision Log

Record accepted and rejected modeling decisions with reasons.
Open questions should remain in module notes, not here.

---

## Decision 1: Baseline policy variable

**Accepted:** A single local expansionary policy wedge $s_{r,t} \geq 0$.

**Rejected:** Modeling each local policy instrument separately in the baseline.

**Reason:** The paper's core object is a region-sector policy wedge that changes
the effective cost of expanding NEV activity. A single wedge keeps the baseline
tractable and leaves subsidies, land grants, credit support, industrial funds,
tax preferences, and investment facilitation to the empirical construction of
the composite policy measure.

---

## Decision 2: NEV capital and capacity

**Accepted:** In the baseline model, NEV installed capacity $H_{r,t}^N$ is the
sector-specific capital stock used for NEV expansion and MPK comparisons.

**Rejected:** Maintaining both generic NEV capital $k^N$ and a separate capacity
stock $H^N$ with independent accumulation equations.

**Reason:** The central welfare object is capital misallocation. MPK comparisons
and welfare accounting require a single, well-defined NEV capital/capacity stock.
The outside sector may use ordinary capital $K^O$, but the NEV sector's expandable
stock is $H^N$.

---

## Decision 3: Product market

**Accepted:** Baseline NEV demand is derived from the CES final-good aggregator.
With the final-good price normalized to one,

$$P_t^N = \eta_N \left(\frac{Y_t}{Y_t^N}\right)^{1/\varepsilon}.$$

**Rejected:** Imposing a standalone inverse demand curve
$P_t^N = \mathcal{D}(Q_t^N)$ in addition to the CES aggregator.

**Reason:** A CES final-good aggregator already implies a relative demand system.
Adding an independent inverse demand curve overdetermines the product market.
CES-derived demand still delivers price compression when NEV quantity expands.

---

## Decision 4: Policy fiscal cost and government budget

**Accepted:** The real fiscal outlay associated with the capital-cost wedge is

$$\phi s_{r,t} H_{r,t}^N.$$

Local governments face an explicit budget constraint that finances this outlay
through fiscal revenue, borrowing, or transfers.

**Rejected:** Treating $\kappa s_{r,t}^2/2$ as the full fiscal cost of policy.

**Reason:** A wedge that lowers the effective cost of NEV capital must be financed
on the stock it subsidizes. The quadratic term remains useful, but it represents
administrative, political, or distortionary costs rather than the subsidy outlay.

---

## Decision 5: Local government objective

**Accepted:** The baseline local objective is a reduced-form political economy
objective with three core terms: local NEV output, local NEV employment, and local
fiscal surplus, net of administrative/political policy cost and adjustment cost.

**Rejected:** Simultaneously placing local output, investment, employment, and tax
revenue in the objective without discipline.

**Reason:** Output, investment, employment, and tax revenue are highly correlated
local outcomes. Keeping all of them as separate unrestricted payoff components
creates double-counting and makes the over-subsidization mechanism hard to
interpret.

---

## Decision 6: Local government discounting

**Accepted:** The baseline sets $\beta_g=\beta$.

**Rejected:** Using $\beta_g<\beta$ as an unexplained source of over-subsidization
in the first closed version.

**Reason:** Finite-tenure political incentives may matter, but the first model
should prove the decentralized-versus-centralized wedge from local externalities
and fiscal incentives. Short-horizon political discounting can be added later as
an extension or robustness device.

---

## Decision 7: Learning law

**Accepted:** NEV productivity accumulates without mechanical knowledge
depreciation and with diminishing learning as the region approaches a frontier.
Cross-region spillovers exclude own-region output.

**Rejected:** A law of motion with $(1-\delta_A)A_{r,t}^N$ and a national spillover
term that double-counts own-region production.

**Reason:** The baseline mechanism is learning-by-doing and spillovers, not
exogenous knowledge depreciation. Own production should not appear once in local
learning and again inside the spillover term.

---

## Decision 8: Regional labor markets

**Accepted:** The baseline has fixed regional labor endowments:

$$L_{r,t}^N + L_{r,t}^O = \bar L_r,$$

with regional wages $w_{r,t}$ clearing local labor markets.

**Rejected:** Mixing an aggregate household wage $w_t$ with firm-level regional
wages $w_{r,t}$ without a labor mobility assumption.

**Reason:** Fixed regional labor keeps the model closed, gives local employment
a meaningful role in the government objective, and captures regional labor-market
segmentation without modeling migration or hukou frictions explicitly.

---

## Decision 9: Government game

**Accepted:** Local governments play a simultaneous Markov-Nash policy game in
the baseline.

**Rejected:** Treating local policy as exogenous.

**Reason:** The core mechanism requires decentralized local policy competition.
Exogenous policy would show that policy affects capacity, but not why local
governments systematically choose too much support relative to a coordinated
benchmark.

---

## Decision 10: Planner benchmark

**Accepted:** The main normative benchmark is a constrained planner, also called
the centralized policy equilibrium. It chooses policy instruments
$\{s_{r,t}^{CP}\}$ while households and firms remain decentralized optimizers.

**Rejected:** Using a first-best planner that directly chooses all allocations as
the main benchmark.

**Reason:** The relevant policy reform is centralized coordination of policy
instruments, not direct command over every capital, capacity, labor, and output
allocation. First-best allocation may be reported only as an appendix upper bound.

---

## Decision 11: Involution definition

**Accepted:** Involution is an equilibrium outcome, not an exogenous shock. The
main comparison is decentralized equilibrium $D$ versus constrained planner $CP$:

$$\text{Involution}_t =
\left(
s_t^D - s_t^{CP},\;
H_t^{N,D} - H_t^{N,CP},\;
u_t^{N,CP} - u_t^{N,D},\;
MPK_t^{O,D} - MPK_t^{N,D},\;
W^{CP} - W^D
\right).$$

**Rejected:** Defining the main welfare comparison as decentralized equilibrium
versus a first-best planner.

**Reason:** The paper studies excessive decentralized industrial policy relative
to a feasible centralized policy benchmark. First-best comparisons can overstate
the implementable policy gain.

---

## Decision 12: Proposition discipline

**Accepted:** Before numerical code, the project must write a static symmetric
two-region model and prove sufficient conditions for
$s^D > s^{CP}$.

**Rejected:** Treating $s^D > s^{CP}$ and slow policy exit as asserted propositions
without proof.

**Reason:** Over-subsidization is the central theoretical result. It must follow
from the local government FOC relative to the constrained-planner FOC. Slow exit
should be a dynamic or numerical result unless a separate proof is supplied.

---

## Decision 13: Counterfactual organization

**Accepted:** Counterfactuals remain in a dedicated Module 6.

**Rejected:** Folding counterfactual specifications into quantification notes.

**Reason:** Counterfactuals are the paper's main quantitative outputs. Each one
needs a clear model change, economic question, variables to report, and welfare
decomposition.

---

## Decision 14: Baseline versus extensions

**Accepted:** The baseline includes reduced-form credit/fiscal support through
the wedge, local fiscal budgets, fixed regional labor, CES-derived demand, and a
two-region proof target.

**Rejected for the baseline:** SOE heterogeneity, export relief valve, soft budget
constraints, production networks, supplier payment and innovation, full
Dixit-Stiglitz/Melitz/BLP demand, sequential central-local games, full promotion
tournaments, and partial labor mobility.

**Reason:** These features are important, but adding them before the core
decentralized-policy-misallocation mechanism is closed would obscure the main
theoretical comparison.
