# Module 5: Quantification Moments and Solution Algorithm

## 1. Purpose

This module records quantification discipline and the proof-before-code sequence.
It also records empirical-design cautions from the Claude second-review response
and the external notes on active firm response. It does not authorize numerical
implementation yet.

Quantification must respect the provenance table in `00_MASTER_model_memo.md`.
Empirical moments should discipline sourced objects, not introduce new baseline
states.

---

## 2. No-code gate [Accepted baseline]

Before creating Julia code, numerical solvers, or data pipelines, the project
must complete:

1. the post-revision model skeleton closure check;
2. a closed symmetric two-region static model;
3. the local government FOC;
4. the constrained planner FOC;
5. sufficient conditions for $s^D>s^{CP}$;
6. conditional implications for $H^{N,D}>H^{N,CP}$, utilization, MPK gaps, and
   welfare regimes.

The current phase is model derivation, not numerical implementation.

---

## 3. Baseline state-space reduction [Accepted baseline]

The baseline dynamic state vector uses region-level sufficient statistics:

$$
X_t=
\{H_{r,t}^N,A_{r,t}^N,B_{r,t},s_{r,t-1}\}_{r=1}^R.
$$

The first quantitative or toy model should not carry the full firm productivity
distribution $\mu_{r,t}(z)$. Firm heterogeneity can later be added as an
extension or represented by a reduced-form average productivity/threshold term.

---

## 4. Moment taxonomy [Accepted baseline]

Moments should be separated by their role. Not every moment carries causal
identification.

### 4.1 Descriptive moments

| Object | Use |
|---|---|
| local and central intervention indexes | discipline $\zeta^{L,NEV}$, $\zeta^{C,NEV}$, and $Gap^{NEV}$ where possible |
| NEV firm or project entry | document whether policy-support regions attract more private entry |
| NEV capacity, output, and effective demand | match scale, duplicated capacity, and whether capacity grows faster than demand |
| utilization | discipline the slack-capacity regime |
| NEV prices, margins, and consumer or final-good price benefit | discipline CES demand and separate low-price benefits from producer return compression |
| MPK / MRPK gap | measure capital misallocation |
| TFPR dispersion or aggregate TFP loss | optional macro-misallocation validation |
| regional employment | discipline local labor-market effects |
| cost decline and quality upgrading | optional benefit-side evidence if learning is included |
| local investment attraction and private capital mobilization | discipline local implementation advantages |

The descriptive target is not to assign observations to exogenous life-cycle
phases. It is to measure the endogenous state vector behind the return
comparison: capacity, effective demand, prices, utilization, profits, and
MPK/MRPK gaps.

### 4.2 Causal moments

| Object | Use |
|---|---|
| policy to NEV investment/capacity | discipline $\phi$ and capacity response |
| policy to firm/project entry | validate the active private-response mechanism |
| policy persistence after low utilization becomes observable | discipline $\chi_s$ |
| policy to utilization or MPK gap | check whether expansionary support is associated with slack capacity and lower returns |
| policy to prices, sales, and effective demand | check whether consumer or final-good benefits are large enough to offset expansion costs |
| policy to cost decline, quality, and survival/exit | optional mechanism check; not required for the clean baseline |
| policy-state interaction in local versus central returns | estimate or discipline when $\zeta^{L,NEV}(Z_t)>0$ while $\zeta^{C,NEV}(Z_t)\leq0$ |

### 4.3 Calibration and external moments

| Object | Use |
|---|---|
| gross fiscal outlay $\phi sH$ | discipline subsidy cost and budget closure |
| net NEV fiscal cost | compare gross support to NEV tax revenue |
| CES elasticity $\epsilon$ and pass-through | discipline demand curvature and the consumer or final-good benefit from lower NEV prices |
| optional learning parameters $\psi_L,\psi_G,\nu,g_A$ | include only with literature or external evidence |
| financing conditions | mechanism shifter for entry and expansion, not a baseline state |
| decentralized implementation benefit $\mathcal B_m^I$ | discipline local information, investment-attraction capacity, and private-capital mobilization |
| local objective weights | discipline with policy responses or simplify further |

Firm-entry moments are mechanism evidence. They can support the claim that firms
actively respond to policy and market states, but the first quantitative version
does not need a full dynamic firm-entry model or a state variable
$\mu_{r,t}(z)$.

---

## 5. Policy platform construction [Accepted baseline]

The empirical policy wedge $s_{r,t}$ should follow a policy platform approach.
The main object is local NEV expansionary platform exposure:

$$LocalExpansionaryPlatform_{rt}^{NEV}.$$

The main index should focus on capacity-expansion platforms:

$$
PolicyPlatform_{rt}^{main}
=
IndustrialPark_{rt}
+LocalStateCapital_{rt}
+LocalFund_{rt}
+LandSupport_{rt}
+PlannedCapacity_{rt}.
$$

Auxiliary financial support can be recorded separately:

$$FinancialSupport_{rt}=LocalFund_{rt}+CreditSupport_{rt}.$$

Demand-side or ecosystem policies such as charging infrastructure, purchase
subsidies, license privileges, and consumer vouchers should enter as
demand-side support, controls, or robustness objects, not as the main
capacity-expansion platform index.

The empirical work must separately record fiscal outlays where possible, because
the model's gross fiscal subsidy is:

$$\phi s_{r,t}H_{r,t}^N.$$

Policy texts and project data can also be used to distinguish capacity
investment, firm or project entry, planned capacity, under-construction
capacity, installed capacity, and effective capacity where data allow.

A price decline is not evidence of welfare loss by itself. Quantification must
credit consumer surplus, producer surplus, and optional learning benefits before
subtracting fiscal costs, idle-capacity costs, and capital-misallocation costs.
The quantitative output should classify whether $W^D<W^{CP}$,
$W^D\approx W^{CP}$, or $W^D>W^{CP}$.

---

## 6. Minimum empirical fact chain [Accepted baseline]

Do not move directly to welfare quantification before documenting four facts.

**Fact 1: Local policy platforms raise NEV investment and capacity projects**

$$
I^H_{rt}
=
\beta s_{rt}+\alpha_r+\lambda_t+X_{rt}+\varepsilon_{rt}.
$$

**Fact 2: Investment with lags forms future installed capacity**

$$
H^N_{r,t+1}
=
\rho H^N_{r,t}
+\gamma I^H_{rt}
+\alpha_r+\lambda_t+\varepsilon_{rt}.
$$

**Fact 3: Capacity relative to demand lowers utilization and compresses prices**

$$
H_t^N>D_t^N(P_t^N)
\quad\Rightarrow\quad
u_t^N\downarrow,\quad P_t^N\downarrow.
$$

**Fact 4: High policy or capacity exposure lowers NEV capital returns**

$$
MPK_t^N-MPK_t^O\downarrow
$$

or, where firm revenue data are better:

$$
MRPK_t^N-MRPK_t^O\downarrow.
$$

---

## 7. Minimum calibration parameters [Accepted baseline]

| Parameter | Meaning | Discipline moment |
|---|---|---|
| $\phi_I$ | local policy effect on capacity investment | $I^H_{rt}$ on $s_{rt}$ |
| $\delta_H$ | capacity depreciation / retirement | plant closure, capacity persistence, low-utilization persistence |
| $\ell_H$ | construction lag | project start to production |
| $\epsilon$ | NEV demand price elasticity | price-sales estimates or literature |
| $\kappa_s$ | policy cost | fiscal support, funds, land, interest subsidies, park costs |
| $\alpha_N,\alpha_O$ | capital output elasticities | production-function estimates or literature |
| $\Delta MPK_t$ | NEV versus outside-sector capital return gap | firm financial data |
| $\eta_H$ | recovery or repurposing value of capacity | exit data or irreversible-investment literature |

Parameters for supply-chain finance, supplier innovation, official promotion,
resident saving, full tax systems, bank default thresholds, working-capital
frictions, or BLP random coefficients do not enter the baseline calibration.

---

## 8. Identification discipline [Accepted baseline]

Policy endogeneity must be addressed before using policy variation as causal
evidence. Candidate designs requiring validation:

1. initial auto-industry exposure interacted with national NEV policy timing;
2. demonstration-city or pilot designation, only after checking assignment,
   timing, pre-trends, and exclusion restrictions;
3. central policy shocks interacted with pre-period local industrial base;
4. fiscal-pressure shifters, only with careful controls and pretrend checks;
5. historical auto supply-chain base, only after verifying it is not simply
   predicting local demand trends.

Demonstration-city designation should be described as potential policy variation
requiring validation, not as an automatically exogenous instrument.

Optional learning parameters should not be identified only from cumulative output
regressions because cumulative output is endogenous to policy and productivity.
Use literature calibration, external estimates, or sensitivity analysis first.

---

## 9. Analytic sequence [Accepted baseline]

**Phase 0: Skeleton closure**

- Check that capital/capacity, resource feasibility, budget, demand, learning,
  planner, labor, and equilibrium objects are mutually consistent.

**Phase 1: Static two-region proof**

- Use two symmetric regions.
- Use demand absorption $D_t^N(P_t^N)$.
- Use $H^N$ as durable and partly irreversible NEV installed capacity.
- Use total-regional-output tax base.
- Derive firm capacity response $\partial H_r^N/\partial s_r>0$; optional
  entry responses should be treated as mechanism validation unless the first
  proof explicitly adds an entry margin.
- Derive local FOC and constrained-planner FOC.
- State sufficient conditions for $s^D>s^{CP}$ when
  $\zeta^{L,NEV}(Z_t)>0$ but $\zeta^{C,NEV}(Z_t)\leq0$, and state why this is
  not a global welfare conclusion.

**Phase 2: Dynamic capacity persistence and retirement**

- Add $s_{r,t-1}$ and adjustment cost.
- Characterize whether local policy keeps investment positive when capacity is
  already high relative to demand and MPK is low.
- Treat slow capacity exit or retirement as a derived dynamic result, not an
  assumption.

**Phase 3: Numerical planning, after proof**

- Only after Phases 0-2 are written should the project plan numerical routines.
- The intended later discipline is grid search, root refinement, unilateral
  deviation checks, an equilibrium selection rule, and welfare-regime
  classification.

---

## 10. Endogenous-state handling [Accepted baseline]

The model should not hard-code industry phases. It should track the endogenous
objects that determine the local and central returns to expansionary policy:
entry, capacity investment, installed capacity, effective demand, prices,
utilization, profits, fiscal costs, and MPK/MRPK gaps.

The model should distinguish three possible return configurations:

1. **Positive-return state:** consumer surplus, producer surplus, and any
   optional learning benefits make expansionary policy valuable from both local
   and central perspectives.
2. **Return-divergence state:** local expansionary returns remain positive
   because local governments internalize investment, employment, output, and
   tax-base gains, while central returns fall or turn negative because capacity
   pressure, fiscal costs, and MPK gaps dominate.
3. **Offsetting trade-off state:** dynamic capacity misallocation is present, but
   consumer surplus, producer surplus, optional learning, and implementation
   advantages offset much of the resource-misallocation cost.

Do not hard-code $s^{CP}\to0$ as an assumption. It should follow from the
constrained planner's marginal-benefit and marginal-cost comparison.

Do not code phase labels as `LearningState`, `SelectionState`,
`InvolutionState`, `CapacityPressureState`, `MisallocationState`, or
`ScaleCompetitionState`. Use measured objects such as entry, capacity,
utilization, prices, profits, and MPK/MRPK gaps.

---

## 11. Open questions

1. What minimum data can discipline $\phi sH$ and net fiscal cost?
2. Which demand elasticity source is credible enough for the first calibration?
3. Should local objective weights be estimated or normalized in the first
   quantitative version?
4. Which data can discipline effective demand and the consumer or final-good
   benefit from lower NEV prices?
5. Which data can discipline decentralized implementation benefits without
   turning the baseline into a full firm-selection or innovation model?
