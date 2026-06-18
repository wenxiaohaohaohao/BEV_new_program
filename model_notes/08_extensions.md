# Module 8: Extensions (Outside Baseline)

## Warning: Important rule

None of the content in this module enters the baseline until the post-revision
skeleton is closed, the static two-region proof is written, and the constrained
planner comparison is internally consistent.

Every extension also needs literature provenance. A feature cannot enter the
baseline merely because it is plausible in the NEV setting; it must map to a
specific literature object and solve a limitation that the current baseline
cannot address.

The current clean baseline is dynamic capacity misallocation: decentralized
local policy, durable and partly irreversible NEV capacity, demand absorption,
MPK/MRPK gaps, and the $D$ versus $CP$ welfare comparison. Extensions should not
move `creative destruction`, supply-chain finance, official promotion,
household saving, exports, BLP, or full heterogeneous-firm dynamics back into
the title-level mechanism.

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

Model policy exit under low-return or high-capacity-pressure states as a
war-of-attrition, stopping-time, mixed-strategy, or asymmetric exit-timing game.

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
If promoted later, the entry-cost wedge must be tied to an explicit entry model
or to Barwick-Kalouptsidi-Zahur-style policy-to-entry evidence.

---

## 4. Differentiated demand and BLP

Replace CES-derived aggregate demand with Dixit-Stiglitz, nested logit,
Melitz-style varieties, or BLP-type vehicle demand.

**Purpose:** Capture product-level differentiation, markups, business stealing,
brand competition, and vehicle-market substitution.

**Reason outside baseline:** It adds varieties, markups, product-level demand,
market-share data, and instruments before the policy-wedge mechanism is closed.
The baseline keeps CES-derived demand to preserve the macro welfare comparison.
If promoted later, BLP or differentiated demand must replace the CES block as a
new demand module, not sit beside it as an extra primitive.

---

## 5. Business stealing and markup competition

Add an explicit firm-entry externality in which an entrant does not fully
internalize its effect on other firms' profits, markups, or price competition.

**Purpose:** Microfound why privately rational simultaneous entry can be socially
excessive even before aggregate capital misallocation is measured.

**Reason outside baseline:** The current CES price-compression and MPK-gap
channels already generate the main aggregate inefficiency. A full business-
stealing block would move the baseline toward IO.
If promoted later, it must be tied to entry, markup, or product-market
competition literature and shown to add information beyond the MPK-gap channel.

---

## 6. Production network and supply-chain amplification

Add upstream battery/material suppliers, component firms, OEM cash-flow pressure,
payment delays, supplier financing constraints, and supplier innovation quality.

**Purpose:** Study how NEV overcapacity and producer price/revenue compression,
after consumer or final-good price benefits are accounted for, propagate through
supply chains and amplify productivity consequences.

**Reason outside baseline:** It changes the object from local policy and capital
misallocation to network propagation. It is an amplification channel, not the JMP
core.
If promoted later, it should be treated as an Ernest Liu-style or related
production-network extension, not as part of the first local-central policy
misalignment block.

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

## 11. Aggregate Demand and Irreversible Investment financial block

Import working-capital constraints, endogenous default risk, bank pricing,
hand-to-mouth household demand, or the full heterogeneous-firm recursive
equilibrium from the Aggregate Demand and Irreversible Investment source family.

**Purpose:** Study whether financial frictions or household demand composition
amplify the capacity-demand-return mechanism.

**Reason outside baseline:** The baseline uses that source family only for
partly irreversible durable capacity, demand absorption, investment lags, and
MRPK-dispersion logic. Importing its full financial and heterogeneous-agent
structure would turn the project into a different macro-finance model before the
NEV local-central policy comparison is closed.

---

## 12. Firm heterogeneity, entry, and productivity distribution

Carry the full firm productivity distribution $\mu_{r,t}(z)$ in the state vector
and model entry, exit, productivity selection, or threshold entry explicitly.

**Purpose:** Model active firm entry, exit, productivity selection, and
over-entry directly.

**Reason outside baseline:** The first model uses region-level sufficient states
to keep the dynamic problem feasible. Firm-entry moments can validate the
mechanism without adding $\mu_{r,t}(z)$ to the baseline state vector.
Selection should be measured through entry, exit, productivity decomposition, or
firm moments. It should not be represented by a standalone `SelectionState`.

---

## 13. Outside-sector endogenous learning

Allow $A_{r,t}^O$ to evolve endogenously.

**Purpose:** Study dynamic opportunity costs outside the NEV sector.

**Reason outside baseline:** The outside sector's baseline role is to measure
capital opportunity cost and MPK gaps.

---

## 14. Full promotion tournament

Model officials' career concerns or promotion tournaments explicitly.

**Purpose:** Microfound the local government payoff.

**Reason outside baseline:** The first model uses a reduced-form local objective
to keep the policy game analytically tractable.

---

## 15. Labor mobility and hukou frictions

Replace fixed regional labor with partial migration, hukou frictions, or mobility
costs.

**Purpose:** Study labor reallocation and regional incidence.

**Reason outside baseline:** Fixed regional labor already closes the wage and
employment block for the first version.

---

## 16. Sequential central-local game

Replace simultaneous Markov-Nash local policy choice with a sequential or
Stackelberg central-local policy game.

**Purpose:** Study policy announcements, central regulation, and local responses.

**Reason outside baseline:** The first version needs a simultaneous local game
with a clear $D$ versus $CP$ comparison.

---

## 17. Promotion rule for extensions

An extension can enter the baseline only if:

1. the skeleton, two-region proof, and constrained-planner comparison are
   complete;
2. the extension explains an empirical pattern the baseline cannot match;
3. it does not obscure the core mechanism;
4. the decision is recorded in `99_decision_log.md`.
5. the extension has a documented literature source and a clear NEV mapping.
