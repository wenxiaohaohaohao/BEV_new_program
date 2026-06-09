# Module 8: Extensions (Outside Baseline)

## Warning: Important rule

None of the content in this module enters the baseline until the post-revision
skeleton is closed, the static two-region proof is written, and the constrained
planner comparison is internally consistent.

---

## 1. Administrative convex policy cost

Add an additional cost term:

$$\frac{\kappa}{2}s_{r,t}^2.$$

**Purpose:** Capture administrative capacity, implementation cost, or political
distortion separate from fiscal outlays.

**Reason outside baseline:** The baseline already has gross fiscal subsidy cost
$\phi sH$ and adjustment cost $\chi_s(s_t-s_{t-1})^2/2$. Adding $\kappa s^2/2$
now would double-count policy costs.

---

## 2. War-of-attrition or stopping-time exit game

Model late-stage policy exit as a war-of-attrition, stopping-time, mixed-strategy,
or asymmetric exit-timing game.

**Purpose:** Microfound why local governments are reluctant to exit first.

**Reason outside baseline:** The baseline treats slow exit through adjustment
costs and local fiscal/employment incentives.

---

## 3. Entry-cost wedge

Let local policy reduce a private NEV entry cost:

$$F_{r,t}^N=F_0^N-\phi_Fs_{r,t}.$$

**Purpose:** Model firm or project entry directly and distinguish entry subsidies
from capital-cost support.

**Reason outside baseline:** The first closed model uses a single capital-cost
wedge to discipline installed capacity and MPK gaps. Adding a second policy
channel before the static proof would weaken identification of the core wedge.

---

## 4. Differentiated demand and BLP

Replace CES-derived aggregate demand with Dixit-Stiglitz, nested logit,
Melitz-style varieties, or BLP-type vehicle demand.

**Purpose:** Capture product-level differentiation, markups, business stealing,
brand competition, and vehicle-market substitution.

**Reason outside baseline:** It adds varieties, markups, product-level demand,
market-share data, and instruments before the policy-wedge mechanism is closed.
The baseline keeps CES-derived demand to preserve the macro welfare comparison.

---

## 5. Business stealing and markup competition

Add an explicit firm-entry externality in which an entrant does not fully
internalize its effect on other firms' profits, markups, or price competition.

**Purpose:** Microfound why privately rational simultaneous entry can be socially
excessive even before aggregate capital misallocation is measured.

**Reason outside baseline:** The current CES price-compression and MPK-gap
channels already generate the main aggregate inefficiency. A full business-
stealing block would move the baseline toward IO.

---

## 6. Production network and supply-chain amplification

Add upstream battery/material suppliers, component firms, OEM cash-flow pressure,
payment delays, supplier financing constraints, and supplier innovation quality.

**Purpose:** Study how NEV overcapacity and price compression propagate through
supply chains and amplify productivity consequences.

**Reason outside baseline:** It changes the object from local policy and capital
misallocation to network propagation. It is an amplification channel, not the JMP
core.

---

## 7. Soft budget constraints

Allow local governments, state banks, or local financing vehicles to keep
loss-making firms alive.

**Purpose:** Explain zombie capacity and even slower exit.

**Reason outside baseline:** It should be added only after the baseline fiscal
budget constraint is closed.

---

## 8. SOE heterogeneity

Distinguish state-owned and private NEV firms or suppliers.

**Purpose:** Capture differential access to credit, bailout expectations, and
local-government objectives.

**Reason outside baseline:** It adds firm-type heterogeneity before the
representative or region-level model is proven.

---

## 9. Export relief valve

Add rest-of-world demand for NEV exports.

**Purpose:** Study whether domestic overcapacity is absorbed abroad and how this
changes welfare accounting.

**Reason outside baseline:** It changes the price-compression and welfare channel
and should be added only after the domestic benchmark is clear.

---

## 10. Financial frictions and valuation channel

Add borrowing constraints, external-finance premia, capital-market valuation
effects, or high-growth financing narratives for firms.

**Purpose:** Interpret credit support, local guarantees, or market valuations as
amplifying private entry and capacity expansion.

**Reason outside baseline:** The reduced-form capital-cost wedge already captures
credit support in the first model. Financing and valuation variables can be used
as empirical shifters before they become model states.

---

## 11. Firm heterogeneity, entry, and productivity distribution

Carry the full firm productivity distribution $\mu_{r,t}(z)$ in the state vector
and model entry, exit, productivity selection, or threshold entry explicitly.

**Purpose:** Model active firm entry, exit, productivity selection, and
over-entry directly.

**Reason outside baseline:** The first model uses region-level sufficient states
to keep the dynamic problem feasible. Firm-entry moments can validate the
mechanism without adding $\mu_{r,t}(z)$ to the baseline state vector.

---

## 12. Outside-sector endogenous learning

Allow $A_{r,t}^O$ to evolve endogenously.

**Purpose:** Study dynamic opportunity costs outside the NEV sector.

**Reason outside baseline:** The outside sector's baseline role is to measure
capital opportunity cost and MPK gaps.

---

## 13. Full promotion tournament

Model officials' career concerns or promotion tournaments explicitly.

**Purpose:** Microfound the local government payoff.

**Reason outside baseline:** The first model uses a reduced-form local objective
to keep the policy game analytically tractable.

---

## 14. Labor mobility and hukou frictions

Replace fixed regional labor with partial migration, hukou frictions, or mobility
costs.

**Purpose:** Study labor reallocation and regional incidence.

**Reason outside baseline:** Fixed regional labor already closes the wage and
employment block for the first version.

---

## 15. Sequential central-local game

Replace simultaneous Markov-Nash local policy choice with a sequential or
Stackelberg central-local policy game.

**Purpose:** Study policy announcements, central regulation, and local responses.

**Reason outside baseline:** The first version needs a simultaneous local game
with a clear $D$ versus $CP$ comparison.

---

## 16. Promotion rule for extensions

An extension can enter the baseline only if:

1. the skeleton, two-region proof, and constrained-planner comparison are
   complete;
2. the extension explains an empirical pattern the baseline cannot match;
3. it does not obscure the core mechanism;
4. the decision is recorded in `99_decision_log.md`.
