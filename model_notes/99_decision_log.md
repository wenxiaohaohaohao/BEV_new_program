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
targets. A parsimonious objective makes the local-policy wedge easier to
interpret in the misallocation-dominant regime.

---

## Decision 9: Local government discounting

**Accepted:** The baseline sets $\beta_g=\beta$.

**Rejected:** Using $\beta_g<\beta$ as an unexplained source of the decentralized
expansionary-policy wedge in the first closed version.

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
governments may choose stronger expansionary support than a coordinated
benchmark in the misallocation-dominant regime.

---

## Decision 13: Strategic complementarity and policy inertia

**Accepted:** Local policy competition for firms, projects, and mobile capital
may be modeled as strategic complementarity in best responses:

$$\frac{\partial BR_r}{\partial s_{-r}}>0.$$

Slow policy exit is modeled through policy adjustment costs and local
fiscal/employment incentives.

**Rejected for baseline:** Modeling policy exit as a war-of-attrition or
stopping-time game, or treating exit inertia as the mechanical result of an
exogenous industry phase.

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

## Decision 17: Creative destruction versus aggregate misallocation diagnostic

**Accepted:** Involution is one possible equilibrium regime, not a maintained
conclusion. The main diagnostic compares decentralized equilibrium $D$ with the
implementable constrained planner $CP$:

$$
\mathcal T_t =
\left(
s_t^D-s_t^{CP},\;
H_t^{N,D}-H_t^{N,CP},\;
u_t^{N,CP}-u_t^{N,D},\;
MPK_t^{O,D}-MPK_t^{N,D},\;
W^D-W^{CP}
\right).
$$

**Rejected:** Defining the main welfare comparison as decentralized equilibrium
versus a first-best planner, or defining aggregate misallocation by assuming
$W^D<W^{CP}$.

**Reason:** The paper studies whether decentralized local implementation across
the NEV industry lifecycle acts as discovery and creative destruction, an
offsetting trade-off, or aggregate misallocation relative to a feasible
centralized policy benchmark. The welfare component is a net object: it credits
consumer or final-good benefits, learning, discovery, firm screening, and
private-capital mobilization before subtracting fiscal, duplicated-capacity, and
capital-misallocation costs.

---

## Decision 18: Proposition discipline

**Accepted:** Before numerical code, the project must write a static symmetric
two-region model and prove sufficient conditions for $s^D>s^{CP}$ in the
misallocation-dominant regime.

**Rejected:** Treating $s^D>s^{CP}$ and slow policy exit as asserted propositions
without proof.

**Reason:** The decentralized expansionary-policy wedge is a conditional
theoretical result, not the whole paper. It must follow from the local
government FOC relative to the
constrained-planner FOC when cost wedges dominate learning and decentralized
implementation benefits. Slow exit should be a dynamic or numerical result unless
a separate proof is supplied.

---

## Decision 19: Baseline versus extensions

**Accepted:** The baseline includes the single policy wedge, NEV installed
capacity, reduced-form active firm response, CES-derived demand,
total-tax-base local budgets, fixed regional labor, frontier-gap learning with
spillovers, and a simultaneous local policy game.

**Rejected for the baseline:** SOE heterogeneity, export relief valve, soft budget
constraints, production networks, full differentiated demand, full promotion
tournaments, war-of-attrition exit, partial labor mobility, outside-sector
endogenous learning, administrative $\kappa s^2/2$ costs, entry-cost wedges,
BLP demand, supply-chain finance modules, business-stealing blocks, and full
firm productivity distributions.

**Reason:** These features are important, but adding them before the core
decentralized-policy-misallocation mechanism is closed would obscure the main
theoretical comparison.

---

## Decision 20: Active firm response

**Accepted:** Firms are active optimizing agents. In the baseline, they respond
to policy and market states through a reduced-form entry or installed-capacity
margin. The first closed proof only needs the firm-side condition:

$$\frac{\partial H_{r,t}^N}{\partial s_{r,t}}>0.$$

An empirical entry measure may depend on policy support, expected NEV demand,
expected NEV prices, financing conditions, and productivity, but it is a
mechanism and measurement object rather than a new baseline state variable.

**Rejected for baseline:** Treating firms as mechanically determined by local
government policy; carrying the full heterogeneous-firm dynamic distribution
$\mu_{r,t}(z)$; making financing or valuation conditions separate state
variables in the first closed model.

**Reason:** The paper should not imply that local governments alone create
aggregate misallocation or that firms are irrational. The outcome is a decentralized
equilibrium trade-off: locally and privately rational choices may generate
learning, discovery, consumer benefits, and private-capital mobilization, but may
also fail to internalize producer price/revenue compression, idle capacity, MPK
gaps, fiscal costs, and net welfare effects.

---

## Decision 21: Macro-JMP main axis

**Accepted:** The project's main positioning is macro-development / spatial macro
/ quantitative industrial policy about the dynamic welfare effect of
decentralized expansionary local industrial policy over the endogenous industry
life-cycle path of a strategic emerging industry. The core transition is from
discovery and creative destruction to duplicated capacity and aggregate
misallocation when capacity, demand absorption, price, utilization, profit, and
MPK conditions make local and central policy returns diverge. IO,
demand-estimation, supply-chain, and corporate-finance mechanisms can discipline
or amplify the story, but they do not replace the core model.

**Rejected for baseline:** Restoring standalone inverse demand, using $s^P$ or
$W^P$ as the main planner notation, adding $\kappa s^2/2$ as a baseline policy
cost, making BLP the main demand system, or making the supply-chain finance /
supplier-innovation mechanism the JMP core.

**Reason:** The first model must remain solvable, quantifiable, and tied to the
$D$ versus $CP$ welfare comparison without pre-signing that comparison. Additional
IO or supply-chain structure is valuable only after the static two-region
trade-off and constrained-planner comparison are closed.

---

## Decision 22: First static proof fixes inherited debt

**Accepted:** The first symmetric two-region static proof fixes inherited local
debt $\bar B$ and treats the debt burden as a predetermined fiscal state:

$$
\bar D=r^g\bar B+\frac{\kappa_B}{2}\bar B^2.
$$

The local government chooses only the policy wedge $s_r$ in the static proof.

**Rejected for the first static proof:** Jointly choosing $s_r$ and new debt in
the same static FOC system.

**Reason:** The first proof must isolate the decentralized-policy wedge
$s^D>s^{CP}$. Adding a debt-choice FOC before that comparison is closed would
make the algebra less transparent and risk attributing the
expansionary-policy wedge to debt dynamics rather than to local externalities,
fiscal incentives, and incomplete internalization. Debt choice remains important
and should return in the dynamic extension.

---

## Decision 23: Static proof uses utilization-capacity output

**Accepted:** The first static proof uses:

$$
Y_r^N=u_r^NH_r^N,
$$

with realized sales allocated by installed capacity:

$$
Y_r^N=\frac{H_r^N}{H_1^N+H_2^N}Q(H_1^N+H_2^N).
$$

The richer production formulation:

$$
\tilde Y_r^N=A^NF(H_r^N,L_r^N)
$$

is retained as an appendix candidate or later extension.

**Rejected for the first static proof:** Making the richer production function
necessary for proving $s^D>s^{CP}$.

**Reason:** The core static proof only needs a positive firm capacity response,
CES price compression with consumer benefits credited, falling utilization in
the duplicated-capacity range, and the local-versus-planner FOC comparison. The
richer production block is useful for later quantification, but it is not needed
to characterize the first local-central return-divergence sufficient conditions.

---

## Decision 24: Static proof includes aggregate capital opportunity cost

**Accepted:** The strengthened static two-region proof explicitly imposes:

$$
\bar K=K^O+H_1^N+H_2^N,
$$

with outside-sector output:

$$
Y^O=\Omega(K^O;A^O,\bar L),\qquad
\Omega_K>0,\qquad
\Omega_{KK}<0.
$$

The constrained planner internalizes the outside-sector capital opportunity
cost through the wedge $\Delta^K$. Gross subsidies remain fiscal transfers and
are not double-counted as separate aggregate resource absorption.

**Rejected for the first static proof:** Keeping outside-sector output fixed in
the planner welfare comparison or treating $\phi s_rH_r^N$ as an additional real
resource cost on top of the capital allocation and fiscal-shadow-cost terms.

**Reason:** The central welfare object is aggregate capital misallocation.
Making $K^O=\bar K-H^N$ explicit connects duplicated NEV installed capacity to the
outside-sector MPK and makes the implication $MPK^{N,D}<MPK^{O,D}$ more directly
tied to resource feasibility. Dynamic debt issuance and debt FOCs remain outside
the first static proof.

---

## Decision 25: Welfare sign is state-contingent and not preset

**Accepted:** The project frames NEV industrial policy as state-contingent along
an endogenous industry-life-cycle path. Local governments combined with private
capital can support industry takeoff, cost decline, firm screening,
experimentation, and learning when expansion has high social return. The same
expansionary toolkit can generate duplicated entry, low utilization, price
compression, capital-return gaps, and aggregate resource misallocation when
capacity expands faster than effective demand and the central return to further
expansion falls. The paper does not pre-commit to $W^D<W^{CP}$. It evaluates
whether industry-upgrading, discovery, learning, consumer, firm-screening, and
private-capital mobilization benefits exceed fiscal, fixed-cost,
low-utilization, and aggregate capital-misallocation costs.

Lower NEV prices can raise consumer or final-good welfare. In the model, price
compression affects welfare only after this benefit is credited. A sufficient
condition for the misallocation-dominant regime is:

$$
\Delta^G+\Delta^P+\Delta^K+\Delta^F>\Delta^A+\Delta^D,
$$

where $\Delta^P$ is the consumer-benefit-adjusted price/revenue wedge and
$\Delta^D$ is the decentralized implementation/discovery benefit that the
centralized benchmark may not fully reproduce.

**Rejected for baseline:** A blanket claim that decentralized industrial policy
is harmful; a no-policy benchmark as the main normative comparison; or a claim
that price wars or lower prices mechanically cause welfare loss. Also rejected:
treating $W^D<W^{CP}$ as a maintained result before quantification.

**Reason:** Reviewers can correctly object that lower prices raise consumer
surplus or final-good welfare, and that decentralized local governments may have
information and implementation advantages. The project must therefore evaluate a
net state-contingent trade-off. Three results are all valid: $W^D<W^{CP}$,
$W^D\approx W^{CP}$, and $W^D>W^{CP}$. The main benchmark remains $D$ versus
implementable $CP$, not policy versus no policy.

---

## Decision 26: Main title and positive-literature boundary

**Accepted:** The working title is:

Decentralized Industrial Policy over the Industry Life Cycle: Creative
Destruction or Aggregate Misallocation? Evidence from China's NEV Industry

The safe boundary sentence is:

Existing studies explain how China's NEV industry rose. This paper asks how the
marginal welfare return to the same decentralized local implementation changes
with endogenous capacity, demand absorption, prices, utilization, profits, and
MPK gaps.

**Rejected for baseline:** Positioning the paper as a rebuttal to positive
studies of China's NEV policy or as a proof that local industrial policy caused
welfare losses. Also rejected is the prior post-success framing that could be
read as assuming policy becomes harmful after an exogenous maturity threshold.

**Reason:** The paper should build on the positive NEV literature, not fight it.
The contribution is to evaluate whether the same decentralized local
implementation acts as creative destruction, an offsetting trade-off, or
aggregate misallocation as the endogenous state changes.

---

## Decision 27: Main axis is lifecycle dual role and state-contingent welfare

**Accepted:** The paper studies the dual role of decentralized expansionary local
industrial policy over the endogenous industry life cycle of a strategic
emerging industry. The life cycle is not an exogenous stage split. It is the
dynamic path jointly determined by local policy, firm entry, capacity
investment, demand absorption, price adjustment, utilization, profit, and
capital returns. The main empirical setting is China's NEV industry. The main
comparison is decentralized local implementation versus implementable
centralized coordination.

**Rejected:** Framing the project as a one-sided claim that local industrial
policy caused welfare losses; treating price declines as welfare losses by
themselves; or making $W^D<W^{CP}$ a maintained assumption before theory and
quantification.

**Reason:** The contribution is to evaluate when local competition is discovery
and creative destruction and when it becomes duplicated capacity and aggregate
misallocation. This framing preserves the positive role of NEV industrial policy
and local government-private capital coordination while still allowing the model
and data to identify misallocation-dominant states.

---

## Decision 28: Baseline adopts provenance-controlled primitives

**Accepted:** Every baseline primitive must be listed in the MASTER provenance
table or be a direct NEV mapping of a listed literature object. The baseline
uses sourced objects: $s_{r,t}$, $\zeta^{L,NEV}$, $\zeta^{C,NEV}$,
$Entry^N_{r,t}$, $I^H_{r,t}$, $H^N_{r,t}$, $D_t^N(P_t^N)$, $P_t^N$, $u_t^N$,
MPK/MRPK gaps, and $W^D-W^{CP}$.

**Rejected for baseline:** Conceptual state variables such as `LearningState`,
`SelectionState`, `InvolutionState`, `CapacityPressureState`,
`MisallocationState`, and `ScaleCompetitionState`; also rejected are welfare
penalty terms such as unsupported $\Omega_A$, $\Omega_H$, or $\Omega_M$.

**Reason:** The project is now a provenance-controlled modular extraction. Its
modeling contribution is to combine existing modules in the NEV setting, not to
invent new primitives without literature sources.

---

## Decision 29: Chen-Liu-Song is the mother model for local-central misalignment

**Accepted:** The decentralized-policy block is anchored by Chen-Liu-Song's
local and central intervention index logic:

$$
\zeta_{rt}^{L,NEV}(Z_t)\neq\zeta_{rt}^{C,NEV}(Z_t),
\qquad
Gap_{rt}^{NEV}(Z_t)=\zeta_{rt}^{L,NEV}(Z_t)-\zeta_{rt}^{C,NEV}(Z_t).
$$

The existing local FOC versus constrained-planner FOC comparison is interpreted
as the NEV decomposition of this local-central intervention gap.

**Rejected for baseline:** Treating the local payoff weights, planner wedges, or
implementation benefits as free-standing welfare primitives without the
intervention-index interpretation.

**Reason:** The central theoretical question is why local perceived returns to
NEV support differ from aggregate returns under implementable centralized
coordination.

---

## Decision 30: Q(H) is a derived market-absorption shorthand

**Accepted:** In the static proof, $Q(H^N)$ is only a derived shorthand for
realized sales generated by the capacity-demand-price block, including
$D_t^N(P_t^N)$ and CES-derived pricing.

**Rejected for baseline:** Treating $Q(H^N)$ as a standalone inverse demand
curve or as a new demand primitive alongside CES demand.

**Reason:** The project must keep the product market closed. CES demand prices
realized quantity, while the Kalouptsidi-style demand-absorption block explains
why installed capacity may not translate one-for-one into realized sales.

---

## Decision 31: Klepper supplies lifecycle interpretation only

**Accepted:** Klepper is used for industry-life-cycle interpretation: entry,
exit, innovation, competition, and market structure evolve over the dynamic
path of the industry.

**Rejected for baseline:** Deriving local policy, welfare counterfactuals, or
new state variables such as `ScaleCompetitionState` or `SelectionState` from
Klepper.

**Reason:** Lifecycle language should describe the path of sourced model objects
such as policy, entry, investment, capacity, demand absorption, prices,
utilization, profit, exit, and MPK gaps. It is not an independent model block
and does not define exogenous phases.

---

## Decision 32: Learning functional form is a bridge requiring citation discipline

**Accepted:** The current frontier-gap learning law can remain as a baseline
bridge object while the project is in model-note form. Before paper drafting, it
must be tied to learning-by-doing, cumulative-output, or clean-technology
learning literature, or simplified into a more directly cited object.

**Rejected for baseline:** Treating `LearningState` as a primitive or adding
standalone welfare rewards for learning that are not derived from productivity,
consumer/final-good welfare, firm outcomes, or continuation value.

**Reason:** Learning is central to the state-contingent benefit side, but the
formal object must remain source-disciplined.

---

## Decision 33: Industry life cycle is endogenous in the baseline framing

**Accepted:** The baseline treats the industry life cycle as the dynamic path
jointly determined by local policy, firm entry, capacity investment, demand
absorption, price adjustment, utilization, profits, and capital returns.

**Rejected for baseline:** Treating the life cycle as a set of exogenous phases
or assuming that expansionary industrial policy becomes socially costly after a
fixed maturity threshold.

**Reason:** The paper's mechanism is dynamic lag plus state-dependent returns.
Capacity investment is lagged and partly irreversible. Simultaneous local
expansion can make future capacity release concentrated. Whether that expansion
is discovery or misallocation depends on demand absorption, utilization, prices,
profits, fiscal costs, and MPK gaps, not on an externally assigned phase label.

---

## Decision 34: Core transition condition is local-positive, central-nonpositive return

**Accepted:** The key transition condition is:

$$
\zeta_{rt}^{L,NEV}(Z_t)>0
\quad \text{but} \quad
\zeta_{rt}^{C,NEV}(Z_t)\leq0.
$$

Here $Z_t$ denotes already defined endogenous objects such as capacity, demand
absorption, prices, utilization, profits, fiscal costs, and MPK gaps. It is a
compact notation for the state of the model, not a new primitive.

**Rejected for baseline:** Explaining duplicated capacity and aggregate
misallocation by assuming that policy simply turns bad in a later period.

**Reason:** When local returns remain positive, local governments can rationally
continue expansionary support because they internalize local investment,
employment, output, and tax-base gains. When central returns are nonpositive,
coordinated policy would reduce the expansionary wedge because it internalizes
duplicated capacity, fiscal costs, and aggregate capital misallocation. The
gap between these two returns is the formal discovery-to-misallocation
transition.
