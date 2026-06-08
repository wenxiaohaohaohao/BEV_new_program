# MASTER Model Memo

**Project title:**
State-Contingent Industrial Policy, Local Competition, and Aggregate Misallocation:
Evidence from China's NEV Industry

**Status:** Baseline model memo.
This file records the current accepted model only.
Detailed discussions, alternatives, and unresolved issues are stored in module-specific notes.

**Last updated:** 2026-06-08

---

## 1. Research question

How does decentralized local industrial policy in a strategic emerging industry generate
over-entry, excess capacity, price and profit compression, and aggregate capital misallocation
after initially facilitating industrial upgrading?

---

## 2. Core mechanism

$$
\text{local policy game}
\Rightarrow
\text{over-entry + excess capacity}
\Rightarrow
\text{price and profit compression}
\Rightarrow
\text{low utilization + MPK gap}
\Rightarrow
\text{aggregate misallocation + welfare loss}
$$

Industrial policy is not assumed to be always harmful. It is **state-contingent**.
The policy wedge may be welfare-improving when learning, market creation, and coordination
externalities are strong. The distortion arises when decentralized local governments
overuse expansionary policy relative to the planner.

---

## 3. Environment

- **Time:** discrete, $t = 0, 1, 2, \ldots$
- **Regions:** $r = 1, \ldots, R$
- **Sectors:** $j \in \{N, O\}$, where $N$ = NEV sector, $O$ = outside sector
- **Agents:**
  1. Representative household
  2. Heterogeneous firms (idiosyncratic productivity $z$)
  3. Local governments (one per region)
  4. Social planner (normative benchmark)

---

## 4. Policy wedge

The baseline policy object is a single local expansionary policy wedge:

$$s_{r,t} \geq 0$$

It summarizes all local NEV support: subsidies, land grants, industrial funds, credit support,
investment facilitation, tax preferences, infrastructure support, and local industrial parks.
The baseline model does not separately model individual policy instruments.

---

## 5. Household and final good

Representative household maximizes:

$$\sum_{t=0}^{\infty} \beta^t U(C_t, L_t)$$

Final good aggregator (CES):

$$Y_t = \left[ \eta \left(Y_t^N\right)^{\frac{\varepsilon-1}{\varepsilon}}
+ (1-\eta) \left(Y_t^O\right)^{\frac{\varepsilon-1}{\varepsilon}} \right]^{\frac{\varepsilon}{\varepsilon-1}}$$

Resource constraint:

$$Y_t = C_t + I_t^K + \sum_r I_{r,t}^H + \text{PolicyCost}_t + \text{AdjCost}_t + \text{IdleCost}_t$$

---

## 6. Firms

**Production function:**

$$y_{i,r,t}^j = z_{i,t} \cdot A_{r,t}^j \cdot (k_{i,r,t}^j)^{\alpha_j} (l_{i,r,t}^j)^{1-\alpha_j}$$

**Capital cost wedge (baseline):**

$$R_{r,t}^O = r_t, \qquad R_{r,t}^N = r_t - \phi \, s_{r,t}$$

**Entry cost (extension candidate):**

$$F_{r,t}^N = F_0^N - \phi_F \, s_{r,t}$$

**Capacity dynamics:**

$$H_{r,t+1}^N = (1 - \delta_H) H_{r,t}^N + I_{r,t}^H$$

**Capacity utilization:**

$$u_{r,t}^N = \frac{Q_{r,t}^N}{H_{r,t}^N} \leq 1$$

**Product market (inverse demand):**

$$P_t^N = \mathcal{D}(Q_t^N), \qquad \mathcal{D}'(Q_t^N) < 0$$

**Firm value and exit:**

$$V(z) = \max \left\{ 0, \; \pi(z) + \beta \, \mathbb{E}[V(z')] \right\}$$

---

## 7. Learning externalities

$$A_{r,t+1}^N = (1 - \delta_A) A_{r,t}^N
+ \psi_L \left(Q_{r,t}^N\right)^\nu
+ \psi_G \left(\bar{Q}_t^N\right)^\nu$$

where $\bar{Q}_t^N = \frac{1}{R} \sum_r Q_{r,t}^N$ is the national average output.
$\psi_L$ captures local LBD; $\psi_G$ captures cross-region knowledge spillovers.

---

## 8. Local government problem

Local government $r$ chooses $s_{r,t}$ to maximize:

$$\sum_{t=0}^{\infty} \beta_g^t \left[
\omega_Y Y_{r,t}^N + \omega_I I_{r,t}^H + \omega_E L_{r,t}^N + \omega_T \text{Tax}_{r,t}
- \frac{\kappa}{2} s_{r,t}^2
- \frac{\chi_s}{2} (s_{r,t} - s_{r,t-1})^2
\right]$$

Local governments internalize local output, investment, employment, and tax base.
They do **not** fully internalize national excess capacity and aggregate capital misallocation.

---

## 9. Planner problem

The planner maximizes:

$$\max \sum_{t=0}^{\infty} \beta^t U(C_t, L_t)$$

subject to all production, capacity, learning, demand, budget, and resource constraints.

The planner is **not** a no-policy benchmark. It chooses state-contingent policy:

$$s_{r,t}^P = s^P(Z_{r,t}, Z_t)$$

internalizing learning externalities, idle capacity costs, and capital misallocation.

---

## 10. Decentralized equilibrium (Markov-Nash)

The decentralized equilibrium is a Markov-Nash equilibrium among local governments:

$$s_{r,t}^D = BR_r(s_{-r,t}^D;\, Z_{r,t},\, Z_t)$$

**Full equilibrium: 8 conditions**

1. Household FOC (Euler equation, labor supply)
2. Firm FOC (capital, labor, investment)
3. Local government FOC (policy wedge)
4. Markov-Nash best-response condition
5. Goods and factor market clearing
6. Capacity and productivity laws of motion
7. Government budget constraint
8. Economy-wide resource constraint

---

## 11. Definition of involution

Involution is **not** an exogenous shock. It is an equilibrium outcome of decentralized local industrial policy.

The five equilibrium gaps that jointly define involution:

$$\text{Involution}_t = \left(
s_t^D - s_t^P, \quad
H_t^{N,D} - H_t^{N,P}, \quad
u_t^{N,P} - u_t^{N,D}, \quad
MPK_t^{O,D} - MPK_t^{N,D}, \quad
W^P - W^D
\right)$$

---

## 12. Main propositions

1. State-contingent industrial policy can raise welfare when learning and coordination externalities are strong.
2. Decentralized local governments overuse expansionary policy relative to the planner: $s^D > s^P$.
3. Excessive policy support generates over-entry and excess capacity.
4. Overcapacity compresses prices and profits (the price-war mechanism).
5. Decentralized policy generates aggregate capital misallocation and welfare loss.
6. Policy exits too slowly under local adjustment frictions ($\chi_s > 0$).

---

## 13. Quantification moments

| Parameter / object | Moment | Data source / proxy |
|---|---|---|
| $\phi$ | policy-investment elasticity | policy text, investment, capacity |
| $\phi_F$ | policy-entry elasticity | firm entry, registrations |
| $\delta_H$ | capacity persistence | capacity utilization data |
| $\varepsilon_D$ | demand elasticity | prices and sales |
| $\psi_L, \psi_G$ | learning externality | cumulative output, TFP, cost decline |
| $\rho_s, \chi_s$ | policy inertia | policy continuation after overcapacity |
| MPK gap | capital misallocation | firm-level financial data |
| fiscal cost | subsidy cost | fiscal reports, funds, land, credit proxies |

---

## 14. Counterfactuals (summary)

1. No local policy competition
2. Centralized planner industrial policy
3. Subsidy cap or anti-duplication rule
4. Faster exit and consolidation
5. Expansionary vs. productivity-enhancing support

*(Full specification in `06_counterfactuals.md`)*

---

## 15. Solution strategy (phases)

1. Steady-state analytic model (symmetric 2-region)
2. Deterministic transition dynamics
3. Local Nash computation: grid search → `nlsolve` → multiple-equilibrium check
4. Heterogeneous firms + exit
5. Extensions (supply chain IO, differentiated demand)

*(Full specification in `05_quantification_solution.md`)*
