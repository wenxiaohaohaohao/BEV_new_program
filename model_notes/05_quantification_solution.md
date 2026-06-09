# Module 5: Quantification Moments and Solution Algorithm

## 1. Purpose

This module records quantification discipline and the proof-before-code sequence.
It also records empirical-design cautions from the Claude second-review response
and the external notes on active firm response. It does not authorize numerical
implementation yet.

---

## 2. No-code gate [Accepted baseline]

Before creating Julia code, numerical solvers, or data pipelines, the project
must complete:

1. the post-revision model skeleton closure check;
2. a closed symmetric two-region static model;
3. the local government FOC;
4. the constrained planner FOC;
5. sufficient conditions for $s^D>s^{CP}$;
6. implications for $H^{N,D}>H^{N,CP}$, utilization, MPK gaps, and welfare.

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
| NEV firm or project entry | document whether policy-support regions attract more private entry |
| NEV capacity and output | match scale and overcapacity patterns |
| utilization | discipline the slack-capacity regime |
| NEV prices and margins | discipline CES demand and price compression |
| MPK / MRPK gap | measure capital misallocation |
| regional employment | discipline local labor-market effects |

### 4.2 Causal moments

| Object | Use |
|---|---|
| policy to NEV investment/capacity | discipline $\phi$ and capacity response |
| policy to firm/project entry | validate the active private-response mechanism |
| policy persistence after overcapacity | discipline $\chi_s$ |
| policy to utilization or MPK gap | check whether expansionary support is associated with slack capacity and lower returns |

### 4.3 Calibration and external moments

| Object | Use |
|---|---|
| gross fiscal outlay $\phi sH$ | discipline subsidy cost and budget closure |
| net NEV fiscal cost | compare gross support to NEV tax revenue |
| CES elasticity $\epsilon$ | discipline demand curvature |
| learning parameters $\psi_L,\psi_G,\nu,g_A$ | start from literature or external evidence, then test sensitivity |
| financing conditions | mechanism shifter for entry and expansion, not a baseline state |
| local objective weights | discipline with policy responses or simplify further |

Firm-entry moments are mechanism evidence. They can support the claim that firms
actively respond to policy and market states, but the first quantitative version
does not need a full dynamic firm-entry model or a state variable
$\mu_{r,t}(z)$.

---

## 5. Policy wedge construction [Accepted baseline]

The empirical policy wedge $s_{r,t}$ should be constructed as a composite index
of local NEV expansionary support, including subsidies, land support, credit
support, industrial funds, tax preferences, infrastructure, and investment
facilitation.

The empirical work must separately record fiscal outlays where possible, because
the model's gross fiscal subsidy is:

$$\phi s_{r,t}H_{r,t}^N.$$

Policy texts and project data can also be used to distinguish mechanisms:
capacity investment, firm or project entry, and persistence after utilization
falls should be measured separately where data allow.

---

## 6. Identification discipline [Accepted baseline]

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

Learning parameters should not be identified only from cumulative output
regressions because cumulative output is endogenous to policy and productivity.
Use literature calibration, external estimates, or sensitivity analysis first.

---

## 7. Analytic sequence [Accepted baseline]

**Phase 0: Skeleton closure**

- Check that capital/capacity, resource feasibility, budget, demand, learning,
  planner, labor, and equilibrium objects are mutually consistent.

**Phase 1: Static two-region proof**

- Use two symmetric regions.
- Use CES-derived demand.
- Use $H^N$ as NEV installed capital/capacity.
- Use total-regional-output tax base.
- Derive firm capacity response $\partial H_r^N/\partial s_r>0$; optional
  entry responses should be treated as mechanism validation unless the first
  proof explicitly adds an entry margin.
- Derive local FOC and constrained-planner FOC.
- State sufficient conditions for $s^D>s^{CP}$.

**Phase 2: Dynamic policy-exit mechanism**

- Add $s_{r,t-1}$ and adjustment cost.
- Characterize whether local policy declines more slowly than coordinated policy.
- Treat slow exit as a derived dynamic result, not an assumption.

**Phase 3: Numerical planning, after proof**

- Only after Phases 0-2 are written should the project plan numerical routines.
- The intended later discipline is grid search, root refinement, unilateral
  deviation checks, and an equilibrium selection rule.

---

## 8. Capacity-regime handling [Accepted baseline]

The model should distinguish:

- **capacity-building phase:** learning and market-formation benefits are high;
  $s^{CP}$ may be positive;
- **excess-capacity phase:** utilization is low, price compression is stronger,
  and the marginal social return to additional NEV capacity declines.

Do not hard-code $s^{CP}\to0$ as an assumption. It should follow from the
constrained planner's marginal-benefit and marginal-cost comparison.

---

## 9. Open questions

1. What minimum data can discipline $\phi sH$ and net fiscal cost?
2. Which demand elasticity source is credible enough for the first calibration?
3. Should local objective weights be estimated or normalized in the first
   quantitative version?
