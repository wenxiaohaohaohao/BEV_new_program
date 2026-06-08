markdown

# NEV Model Project — Codex Execution Plan（8-Module Structure）

> **用途**：交给 Codex（Claude Code）严格按本文件执行。不得自行发明新的模型假设、新的目录结构或新的文件名。

---

## 0. 执行总原则

1. 只创建不存在的目录和文件，**不覆盖已有内容**。
2. 如果目标文件已存在，在文件末尾以 `## Imported previous notes` 小节**追加**内容，不替换。
3. 所有源文件**保持原样，不删除**。
4. 先建骨架（目录 + 空文件 + 模板），再迁徙内容。
5. 保留所有 LaTeX 公式，原样搬运，不改写。
6. `paper_draft/` 和 `code_plan/` 目录**暂不创建**。
7. 执行完毕后，输出一份摘要：已创建的文件、已追加的文件、已跳过的文件。

---

## 1. 目录结构

在项目根目录下创建如下结构（如目录已存在则跳过，只补充缺失文件）：

```text
NEV_model_project/
├── README.md
└── model_notes/
    ├── 00_MASTER_model_memo.md
    ├── 01_research_mechanism.md
    ├── 02_environment_firms.md
    ├── 03_government_game.md
    ├── 04_planner_equilibrium.md
    ├── 05_quantification_solution.md
    ├── 06_counterfactuals.md
    ├── 07_literature_positioning.md
    ├── 08_extensions.md
    └── 99_decision_log.md
```

---

## 2. `README.md`

```markdown
# NEV Model Project

**Project title:**
State-Contingent Industrial Policy, Local Competition, and Aggregate Misallocation:
Evidence from China's NEV Industry

---

## Core workflow

```text
discussion
→ identify module (01–08)
→ update only that module
→ label content status inside the module
→ if a modeling decision is resolved → update 99_decision_log
→ when module is stable → update 00_MASTER (accepted baseline only)
→ MASTER stable → paper section / Julia code
```

## Module map

|
 File 
|
 Scope 
|
|
---
|
---
|
|
`00_MASTER_model_memo.md`
|
 Current accepted baseline (English, paper-ready) 
|
|
`01_research_mechanism.md`
|
 Research question + mechanism + involution definition 
|
|
`02_environment_firms.md`
|
 Environment + household + firms + LBD 
|
|
`03_government_game.md`
|
 Local government objective + Markov-Nash game 
|
|
`04_planner_equilibrium.md`
|
 Planner problem + full equilibrium definition (8 conditions) 
|
|
`05_quantification_solution.md`
|
 Calibration moments + solution algorithm 
|
|
`06_counterfactuals.md`
|
 5 counterfactual groups 
|
|
`07_literature_positioning.md`
|
 Literature positioning for JMP 
|
|
`08_extensions.md`
|
 Extensions explicitly outside baseline 
|
|
`99_decision_log.md`
|
 All accepted and rejected modeling decisions 
|

## Key rules

- MASTER receives only **accepted baseline** content. No alternatives, no open questions.
- Content status labels inside module notes:
  `[Accepted baseline]` / `[Alternative]` / `[Open question]` / `[Rejected]` / `[Main-text candidate]` / `[Appendix candidate]`
- Do not rewrite the entire model after every discussion. Update the relevant module only.
- `paper_draft/` and `code_plan/` will be created after the model is stable.
```

---

## 3. `model_notes/00_MASTER_model_memo.md`

**职责**：唯一的当前已确认基准模型。英文写作，直接可转化为论文 model section。只收 accepted baseline，不收 alternatives 和 open questions。

```markdown
# MASTER Model Memo

**Project title:**
State-Contingent Industrial Policy, Local Competition, and Aggregate Misallocation:
Evidence from China's NEV Industry

**Status:** Baseline model memo.
This file records the current accepted model only.
Detailed discussions, alternatives, and unresolved issues are stored in module-specific notes.

**Last updated:** YYYY-MM-DD

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
```

---

## 4. `model_notes/01_research_mechanism.md`

**职责**：研究问题的正式表述 + 机制链条的完整经济直觉 + 内卷的定义。三者不可分割，是论文 intro 和 theory section 第一页的核心内容。

```markdown
# Module 1: Research Question, Core Mechanism, Involution Definition

## 1. Purpose

This module records:
- The formal research question (including the "state-contingent" clarification).
- The core mechanism chain with economic intuition for each step.
- The formal definition of involution as an equilibrium outcome.

---

## 2. Research question [Accepted baseline]

**Formal statement:**

How does decentralized local industrial policy in a strategic emerging industry generate
over-entry, excess capacity, price and profit compression, and aggregate capital misallocation
after initially facilitating industrial upgrading?

**Clarification on "state-contingent":**

The paper does not argue that industrial policy is always harmful. The claim is:

- When learning externalities, market-creation externalities, and coordination externalities
  are sufficiently large, policy $s^P > 0$ is welfare-improving.
- When the industry matures (technology accumulated, market created), the optimal policy
  $s^P$ should decline toward zero.
- Decentralized local governments, facing adjustment frictions and local incentive structures,
  maintain $s^D > s^P$ even after the social optimum has declined.
- The welfare loss is $W^P - W^D > 0$, and it grows as the gap $s^D - s^P$ persists.

**What the paper is NOT arguing:**

- That industrial policy should never exist.
- That the NEV industry would have succeeded without policy.
- That all local policies were wasteful from the start.

---

## 3. Core mechanism [Accepted baseline]

**Arrow chain:**

$$
\underbrace{\text{Local policy game}}_{\text{Markov-Nash}}
\Rightarrow
\underbrace{\text{Over-entry + excess capacity}}_{\text{H^{N,D} > H^{N,P}}}
\Rightarrow
\underbrace{\text{Price and profit compression}}_{\text{P↓, \, \pi \to 0}}
\Rightarrow
\underbrace{\text{Low utilization + MPK gap}}_{\text{u^{N,D} < u^{N,P}, \, MPK^O > MPK^N}}
\Rightarrow
\underbrace{\text{Aggregate misallocation + welfare loss}}_{\text{W^P - W^D > 0}}
$$

**Step-by-step economic intuition:**

**Step 1: Local policy game → over-entry + excess capacity**

Each local government chooses $s_{r,t}$ to maximize local output, investment, employment,
and tax base. Because the national excess-capacity cost is shared across all regions, each
local government does not fully internalize the cost of its own policy.
The Nash equilibrium policy $s^D$ exceeds the planner's optimum $s^P$.
With $s^D > s^P$, firm entry and capacity investment are subsidized beyond the social optimum.

**Step 2: Over-entry + excess capacity → price and profit compression**

When aggregate capacity $H_t^{N,D}$ exceeds demand $D_t^N$, capacity utilization falls below one.
Output is demand-constrained. The inverse demand function $P_t^N = \mathcal{D}(Q_t^N)$ implies
that equilibrium price falls as quantity clears the demand constraint at a lower price.
With marginal cost roughly unchanged (technology $A^N$ still accumulates), profit margins compress.
This is the model's price-war mechanism.

**Step 3: Price and profit compression → low utilization + MPK gap**

Idle capacity ($u^N < 1$) means capital in the NEV sector earns a lower return than in the outside
sector. The marginal product of capital diverges: $MPK^O > MPK^N$. Capital is misallocated.

**Step 4: MPK gap → aggregate misallocation + welfare loss**

Standard misallocation accounting (Hsieh-Klenow type): TFP loss from MPK dispersion.
The welfare loss $W^P - W^D$ measures the gain from switching from decentralized to planner policy.

---

## 4. Definition of involution [Accepted baseline]

**Involution is not an exogenous shock. It is an equilibrium outcome.**

Formal definition (5-dimensional equilibrium gap vector):

$$
\text{Involution}_t
=
\left(
\underbrace{s_t^D - s_t^P}_{\text{policy gap}},\;
\underbrace{H_t^{N,D} - H_t^{N,P}}_{\text{capacity gap}},\;
\underbrace{u_t^{N,P} - u_t^{N,D}}_{\text{utilization gap}},\;
\underbrace{MPK_t^{O,D} - MPK_t^{N,D}}_{\text{MPK gap}},\;
\underbrace{W^P - W^D}_{\text{welfare gap}}
\right)
$$

All five components are positive in decentralized equilibrium relative to the planner.
They are jointly determined; each one is a consequence of the policy game, not an independent shock.

---

## 5. Link to other modules

- Mechanism details require firm behavior → `02_environment_firms.md`
- Policy game formalization → `03_government_game.md`
- Planner benchmark and equilibrium conditions → `04_planner_equilibrium.md`
- Quantifying the welfare gap → `05_quantification_solution.md` and `06_counterfactuals.md`

---

## 6. Open questions

*(Record unresolved issues here. Do not move to MASTER until resolved.)*

---

## 7. Imported previous notes

*(Codex: append content from `内卷在模型中的位置_notes.md` here if it exists.)*
```

---

## 5. `model_notes/02_environment_firms.md`

**职责**：模型的基础构件。环境设定 + 家庭 + 最终品 + 企业（生产、资本、产能、进入退出）+ 学习外部性。

```markdown
# Module 2: Environment, Household, Final Good, Firms, LBD

## 1. Purpose

This module records the basic building blocks of the model:
environment, household optimization, final good aggregation,
firm production and dynamics, and learning externalities.

---

## 2. Environment [Accepted baseline]

- **Time:** discrete, $t = 0, 1, 2, \ldots$
- **Regions:** $r = 1, \ldots, R$
- **Sectors:** $j \in \{N, O\}$ (NEV sector and outside sector)
- **Agents:** household, heterogeneous firms, local governments, social planner

---

## 3. Representative household [Accepted baseline]

$$\max \sum_{t=0}^{\infty} \beta^t U(C_t, L_t)$$

Standard Euler equation and labor supply condition apply.

---

## 4. Final good [Accepted baseline]

**CES aggregator:**

$$Y_t = \left[ \eta \left(Y_t^N\right)^{\frac{\varepsilon-1}{\varepsilon}}
+ (1-\eta) \left(Y_t^O\right)^{\frac{\varepsilon-1}{\varepsilon}} \right]^{\frac{\varepsilon}{\varepsilon-1}}$$

**Resource constraint:**

$$Y_t = C_t + I_t^K + \sum_r I_{r,t}^H + \text{PolicyCost}_t + \text{AdjCost}_t + \text{IdleCost}_t$$

**Open question:** How to measure idle cost ($\text{IdleCost}_t$) in the data? [Open question]

---

## 5. Firms [Accepted baseline]

### 5.1 Production function

$$y_{i,r,t}^j = z_{i,t} \cdot A_{r,t}^j \cdot (k_{i,r,t}^j)^{\alpha_j} \cdot (l_{i,r,t}^j)^{1-\alpha_j}$$

### 5.2 Capital cost wedge

Outside sector: $R_{r,t}^O = r_t$

NEV sector: $R_{r,t}^N = r_t - \phi \, s_{r,t}$

### 5.3 Entry cost (extension candidate)

$$F_{r,t}^N = F_0^N - \phi_F \, s_{r,t}$$ [Appendix candidate]

### 5.4 Capacity dynamics

$$H_{r,t+1}^N = (1 - \delta_H) H_{r,t}^N + I_{r,t}^H$$

$$u_{r,t}^N = \frac{Q_{r,t}^N}{H_{r,t}^N} \leq 1$$

### 5.5 Product market

$$P_t^N = \mathcal{D}(Q_t^N), \qquad \mathcal{D}'(Q_t^N) < 0$$

**Regime 1 (capacity binding, early phase):** $Q^N = H^N$, shadow price of capacity $> 0$

**Regime 2 (capacity slack, overcapacity phase):** $Q^N < H^N$, price determined by demand curve

### 5.6 Firm entry and exit

$$V(z) = \max \left\{ 0, \; \pi(z) + \beta \, \mathbb{E}[V(z')] \right\}$$

Entry: firm pays cost $F^N$ and draws productivity $z \sim G(z)$.
Exit: firm shuts down when $V(z) \leq 0$.

---

## 6. Learning externalities [Accepted baseline]

$$A_{r,t+1}^N = (1 - \delta_A) A_{r,t}^N
+ \psi_L \left(Q_{r,t}^N\right)^\nu
+ \psi_G \left(\bar{Q}_t^N\right)^\nu$$

- $\psi_L$: local learning-by-doing (own-region production)
- $\psi_G$: cross-region knowledge spillover (national average output $\bar{Q}_t^N$)
- $\nu$: curvature of LBD (to be calibrated)

**Why $\psi_G$ is essential:** Without cross-region spillovers, regional LBD is fully decoupled.
The model would underestimate the social gain from coordinated policy and produce a fragmented
technology landscape. The Chinese NEV case clearly shows national-level spillovers
(CATL battery, BYD manufacturing processes benefit the whole industry).

---

## 7. Open questions

*(Record here.)*

---

## 8. Imported previous notes

*(Codex: append relevant content from `NEV_model_memo_en.md` and
`NEV_产业政策_地方竞争_模型整合notes.md` here.)*
```

---

## 6. `model_notes/03_government_game.md`

**职责**：地方政府目标函数、调整摩擦、Markov-Nash 博弈的形式化定义和求解策略。不包含规划者问题（在 04）。

```markdown
# Module 3: Local Government Objective and Markov-Nash Game

## 1. Purpose

This module records the local government's optimization problem and the
Markov-Nash equilibrium among local governments.
The planner problem and full equilibrium definition are in Module 4.

---

## 2. Local government objective [Accepted baseline]

Local government $r$ chooses $\{s_{r,t}\}_{t \geq 0}$ to maximize:

$$\mathcal{L}_r = \sum_{t=0}^{\infty} \beta_g^t \left[
\omega_Y Y_{r,t}^N
+ \omega_I I_{r,t}^H
+ \omega_E L_{r,t}^N
+ \omega_T \text{Tax}_{r,t}
- \frac{\kappa}{2} s_{r,t}^2
- \frac{\chi_s}{2} (s_{r,t} - s_{r,t-1})^2
\right]$$

**Parameter interpretation:**

|
 Parameter 
|
 Interpretation 
|
|
---
|
---
|
|
 $\omega_Y$ 
|
 weight on local NEV output (GDP target) 
|
|
 $\omega_I$ 
|
 weight on local investment (capital attraction) 
|
|
 $\omega_E$ 
|
 weight on local NEV employment 
|
|
 $\omega_T$ 
|
 weight on local tax base 
|
|
 $\kappa$ 
|
 convex policy cost (fiscal and political cost of higher wedge) 
|
|
 $\chi_s$ 
|
 policy adjustment friction (inertia, sunk commitments, credibility) 
|

**What local government does NOT internalize:**

- National excess capacity $\sum_{r'} H_{r',t}^N - D_t^N$
- National capital misallocation $MPK_t^O - MPK_t^N$
- Learning spillovers to other regions ($\psi_G$ term)

---

## 3. Policy adjustment and exit [Accepted baseline]

**Core mechanism:** Local governments exit policy more slowly than the planner.

**Reasons for slow exit:**

1. **Adjustment friction** ($\chi_s > 0$): Rapid policy reversal is costly (political, reputational).
2. **Sunk commitments:** Industrial park construction, land allocation, fund promises create path dependency.
3. **Local fiscal incentives:** Even when national welfare is falling, local governments still gain from maintaining output and employment.
4. **Regional competition:** If one region reduces $s$, firms may relocate to other regions, creating a fear-of-exit trap.

**Implication for the model:**

The policy exit speed is a key calibration target. It is identified from the data on:
policy continuation after overcapacity becomes observable,
and firm-level capacity persistence after market-level oversupply.

---

## 4. Markov-Nash equilibrium [Accepted baseline]

**Definition:**

A Markov-Nash equilibrium is a collection of policy functions
$\{s_{r,t}^D\}_{r=1}^R$ such that, for each region $r$:

$$s_{r,t}^D = BR_r\!\left(s_{-r,t}^D;\; Z_{r,t},\; Z_t\right)$$

where $Z_{r,t}$ is the local state vector and $Z_t$ is the aggregate state vector.

**State vectors:**

- Local state: $Z_{r,t} = (A_{r,t}^N, H_{r,t}^N, s_{r,t-1})$
- Aggregate state: $Z_t = (\bar{A}_t^N, H_t^N, D_t^N, r_t)$

---

## 5. Solution strategy for Nash equilibrium [Accepted baseline]

**Step 1:** Define a grid over the policy space $[0, s_{\max}]$.

**Step 2:** For each candidate $s$ (own policy), compute the FOC residual given all other regions play $s$ (symmetric case first).

**Step 3:** Detect candidate roots by sign change of FOC residual on the grid.

**Step 4:** Use detected candidates as initial values for `nlsolve` (Newton's method).

**Step 5:** Verify Nash deviations: confirm no profitable unilateral deviation exists.

**Step 6:** If multiple equilibria exist, select the stable equilibrium closest to the previous-period policy state $s_{r,t-1}$.

**Starting point:** Symmetric 2-region model. All regions identical except realized shocks.
Extend to asymmetric regions (high-policy vs. low-policy types) in Phase 4.

---

## 6. Open questions

*(Record here. E.g.: Does the Nash equilibrium always exist and is it unique?
Under what conditions on $\kappa$, $\chi_s$, $\omega_Y$ is $s^D > s^P$ guaranteed?)*

---

## 7. Imported previous notes

*(Codex: append all content from `地方政府博弈_notes.md` here.)*
```

---

## 7. `model_notes/04_planner_equilibrium.md`

**职责**：规划者最优化问题 + 完整均衡8条条件。与 03 分开，因为规划者是规范性基准，不是博弈参与者。

```markdown
# Module 4: Planner Problem and Full Equilibrium Definition

## 1. Purpose

This module records:
- The social planner's optimization problem (normative benchmark).
- The full equilibrium definition (8 conditions).

The local government game is in Module 3.

---

## 2. Planner problem [Accepted baseline]

The planner maximizes aggregate household welfare:

$$\max_{\{s_{r,t}^P, I_{r,t}^H, K_{r,t}^j\}} \sum_{t=0}^{\infty} \beta^t U(C_t, L_t)$$

subject to:
- Production function constraints for all firms
- Capacity law of motion: $H_{r,t+1}^N = (1-\delta_H)H_{r,t}^N + I_{r,t}^H$
- Learning law of motion: $A_{r,t+1}^N = (1-\delta_A)A_{r,t}^N + \psi_L(Q_{r,t}^N)^\nu + \psi_G(\bar{Q}_t^N)^\nu$
- Product market demand: $P_t^N = \mathcal{D}(Q_t^N)$
- Government budget constraint
- Economy-wide resource constraint

**The planner is NOT a no-policy benchmark.**

The planner chooses state-contingent policy:

$$s_{r,t}^P = s^P(Z_{r,t}, Z_t)$$

**What the planner internalizes that local governments do not:**

1. Cross-region learning spillovers ($\psi_G$ term in LBD)
2. National excess capacity cost: when $H_t^{N,D} > D_t^N$, idle capacity wastes resources
3. National capital misallocation: $MPK_t^O - MPK_t^N > 0$ implies TFP loss

**Planner's state-contingent optimum:**

In the early phase (large learning externality, low $A^N$, low $H^N$): $s^P > 0$

In the mature phase (high $H^N/D^N$, high $MPK^O - MPK^N$): $s^P \to 0$

The transition point is the key quantitative result. The decentralized equilibrium crosses
this transition point too slowly (due to $\chi_s > 0$ and local incentives).

---

## 3. Full equilibrium: 8 conditions [Accepted baseline]

A decentralized equilibrium is a sequence of prices, quantities, and policies
$\{P_t^j, Q_{r,t}^j, K_{r,t}^j, L_{r,t}^j, H_{r,t}^N, A_{r,t}^N, s_{r,t}^D\}$ satisfying:

**Condition 1: Household FOC**
Euler equation for consumption-saving and intratemporal labor supply condition.

**Condition 2: Firm FOC**
Capital demand: $MPK_{r,t}^j = R_{r,t}^j$ for $j \in \{N, O\}$
Labor demand: $MPN_{r,t}^j = W_{r,t}$
Capacity investment: $\text{(Tobin's Q condition for } I_{r,t}^H\text{)}$

**Condition 3: Local government FOC**

$$\frac{\partial \mathcal{L}_r}{\partial s_{r,t}} = 0$$

(First-order condition of the local government's Lagrangian with respect to $s_{r,t}$)

**Condition 4: Markov-Nash best-response**

$$s_{r,t}^D = BR_r(s_{-r,t}^D; Z_{r,t}, Z_t) \quad \forall r$$

**Condition 5: Market clearing**

Goods: $Y_t = C_t + \sum_r (I_{r,t}^K + I_{r,t}^H) + \text{costs}$
Labor: $\sum_r (L_{r,t}^N + L_{r,t}^O) = L_t$ (household labor supply)
Capital: $\sum_r (K_{r,t}^N + K_{r,t}^O) = K_t$

**Condition 6: Laws of motion**

$$H_{r,t+1}^N = (1-\delta_H)H_{r,t}^N + I_{r,t}^H$$

$$A_{r,t+1}^N = (1-\delta_A)A_{r,t}^N + \psi_L(Q_{r,t}^N)^\nu + \psi_G(\bar{Q}_t^N)^\nu$$

**Condition 7: Government budget constraint**

Local government's policy cost $\frac{\kappa}{2}s_{r,t}^2$ must be financed
(lump-sum tax on households, or central transfer — to be specified in calibration).

**Condition 8: Resource constraint**

$$Y_t = C_t + \sum_r I_{r,t}^H + I_t^K + \frac{\kappa}{2} \sum_r s_{r,t}^2
+ \text{AdjCost}_t + \text{IdleCost}_t$$

---

## 4. Open questions

*(E.g.: How to specify the government budget constraint empirically?
Is capital fully mobile across regions in the baseline?)*

---

## 5. Imported previous notes

*(Codex: append relevant planner and equilibrium content from
`NEV_产业政策_地方竞争_模型整合notes.md` here.)*
```

---

## 8. `model_notes/05_quantification_solution.md`

**职责**：校准矩与数据来源 + 求解算法（分阶段）。反事实不在此文件，在 06。

```markdown
# Module 5: Quantification Moments and Solution Algorithm

## 1. Purpose

This module records:
- The mapping from model parameters to calibration moments and data sources.
- The solution algorithm (phases 1–5).

Counterfactual specifications are in Module 6.

---

## 2. Quantification moments [Accepted baseline]

|
 Parameter / object 
|
 Moment 
|
 Data source / proxy 
|
|
---
|
---
|
---
|
|
 $\phi$ 
|
 policy-investment elasticity 
|
 regional policy intensity, investment, capacity 
|
|
 $\phi_F$ 
|
 policy-entry elasticity 
|
 firm entry registrations by region-year 
|
|
 $\delta_H$ 
|
 capacity persistence 
|
 capacity utilization data (MIIT, NBS) 
|
|
 $\varepsilon_D$ 
|
 demand elasticity 
|
 NEV prices and sales (CAAM data) 
|
|
 $\psi_L, \psi_G$ 
|
 local and cross-region LBD 
|
 cumulative output, cost decline, TFP by region 
|
|
 $\chi_s$ 
|
 policy inertia 
|
 policy continuation rate after overcapacity onset 
|
|
 $\kappa$ 
|
 policy cost 
|
 fiscal reports, industrial funds, land grants, credit 
|
|
 MPK gap 
|
 capital misallocation 
|
 firm-level financial data (CSMAR, Wind) 
|
|
 welfare weight $\omega_Y$ 
|
 local government preference 
|
 GDP growth target intensity 
|

---

## 3. Identification strategy

- $\phi$: Regional variation in subsidy intensity interacted with firm-level investment responses.
- $\psi_G$: Difference in TFP growth between regions with early vs. late policy adoption (spillover gap).
- $\chi_s$: Duration analysis of policy continuation after utilization falls below 70%.
- MPK gap: Hsieh-Klenow (2009) methodology applied to NEV vs. outside manufacturing firms.

---

## 4. Solution algorithm [Accepted baseline]

**Phase 1: Steady-state analytic model (symmetric 2-region)**

- Derive closed-form conditions for symmetric Nash equilibrium under simplifying assumptions
  (linear demand, log utility, Cobb-Douglas production).
- Prove Proposition 2: $s^D > s^P$ in symmetric equilibrium.
- Compute planner optimum analytically. Characterize the gap.

**Phase 2: Deterministic transition dynamics**

- Solve the model for a given policy sequence $\{s_{r,t}\}$.
- Compute transition path from high-policy to low-policy steady state.
- Identify the capacity-regime switching point (binding → slack).

**Phase 3: Local Nash computation (2-region numerical)**

```text
Step 1: Discretize state space (A_r, H_r) — 20 nodes per dimension per region.
Step 2: Value function iteration with LinearInterpolation.
Step 3: For each state, compute FOC residual grid over policy space.
Step 4: Detect sign changes → candidate Nash points.
Step 5: Refine with nlsolve (Newton's method).
Step 6: Verify no profitable deviation exists.
Step 7: If multiple equilibria, select stable equilibrium closest to s_{r,t-1}.
Step 8: Compare s^D and s^P at each state. Compute welfare loss W^P - W^D.
```

**Phase 4: Heterogeneous firms + exit**

- Add idiosyncratic productivity $z_{i,t}$.
- Firm exit when $V(z) \leq 0$.
- Calibrate exit hazard to match historical NEV firm consolidation (500+ brands → ~30).

**Phase 5: Extensions**

- Asymmetric regions (high-policy vs. low-policy types).
- Supply chain IO (see `08_extensions.md`).
- Differentiated demand (see `08_extensions.md`).

---

## 5. Two-regime capacity handling

**Regime 1 (capacity binding):** $\sum_r H_{r,t}^N \leq D_t^N$
→ NEV price exceeds demand-clearing price. Production = capacity. Shadow value of capacity $> 0$.
→ Firms invest in capacity. Policy wedge is welfare-improving.

**Regime 2 (capacity slack):** $\sum_r H_{r,t}^N > D_t^N$
→ NEV price clears demand. Utilization $u^N < 1$. Idle capacity.
→ Policy wedge generates misallocation. Planner sets $s^P \to 0$.

**Regime switching condition:**

$$\sum_r H_{r,t}^N \gtrless D_t^N$$

This kink is handled explicitly by solving each regime with separate Julia functions
and checking which regime is active at each state.

---

## 6. Open questions

*(E.g.: What is the right functional form for $\mathcal{D}(Q^N)$?
Linear inverse demand is tractable but may not fit the data well.)*

---

## 7. Imported previous notes

*(Codex: append relevant quantification and solution content from
`NEV_model_memo_en.md` and `宏观模型_单一政策wedge_修正版.md` here.)*
```

---

## 9. `model_notes/06_counterfactuals.md`

**职责**：5组反事实的完整规格——模型改动、经济问题、输出变量、福利分解。独立成文件，因为反事实是论文定量贡献的主体。

```markdown
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
```

---

## 10. `model_notes/07_literature_positioning.md`

**职责**：文献定位。JMP 必须有——需要把论文精确放置在现有文献格局中。

```markdown
# Module 7: Literature Positioning

## 1. Purpose

This module records the literature positioning of the paper.
It should be updated whenever a new closely related paper is found.

---

## 2. Primary references

|
 Paper 
|
 How this project uses it 
|
|
---
|
---
|
|
 Barwick, Kalouptsidi, Zahur (2024/2025, RestUD) 
|
 Primary model template: dynamic model of China's industrial policy, entry, investment, idle capacity, counterfactuals 
|
|
 Fajgelbaum, Morales, Suárez Serrato, Zidar (2019, RestUD) 
|
 Multi-region fiscal policy competition framework; spatial misallocation welfare analysis 
|
|
 Hsieh and Klenow (2009, QJE) 
|
 MPK/MRPK dispersion and aggregate TFP loss measurement 
|
|
 Restuccia and Rogerson (2008, RED) 
|
 Policy wedge methodology for misallocation 
|

---

## 3. Secondary references

|
 Paper 
|
 Relevance 
|
|
---
|
---
|
|
 Juhász (2018, QJE) 
|
 LBD and industrial policy; temporary protection and technology adoption 
|
|
 Aghion, Cai, Dewatripont et al. (2015, AEJ:Macro) 
|
 Industrial policy and competition in China; Lerner index 
|
|
 Liu (2019, QJE) 
|
 Industrial policies in production networks; sectoral externalities 
|
|
 Moll (2014, AER) 
|
 Capital misallocation dynamics; MPK equalization 
|
|
 Lin Yifu (2007, Economic Research) 
|
 潮涌现象 (herd behavior); simultaneous entry and overcapacity 
|
|
 Wang, Xu, Zhao, Liu (2023, 经济理论与经济管理) 
|
 China's NEV policy stages; New Structural Economics framework 
|
|
 Wang, Xu, Hu (2024, China Economist) 
|
 NEV supply chain integration; collaborative development 
|

---

## 4. Positioning statement

**This paper's contribution relative to Barwick et al.:**
Barwick et al. evaluate China's industrial policy using structural IO methods at the firm level.
This paper adds: (i) multi-region local government competition as the source of over-subsidization,
(ii) a macro GE framework connecting policy to aggregate misallocation,
(iii) a welfare comparison between decentralized Nash and planner allocation.

**This paper's contribution relative to Fajgelbaum et al.:**
Fajgelbaum et al. study fiscal competition in the US across all industries.
This paper focuses on a single strategic emerging industry with LBD externalities,
where the social optimum is time-varying and industry-state-dependent.

**This paper's contribution relative to Hsieh-Klenow:**
Hsieh-Klenow quantify the *level* of misallocation in China.
This paper identifies one *mechanism* that generates misallocation in a specific industry:
decentralized local industrial policy competition.

---

## 5. Open questions on positioning

*(E.g.: Are there recent papers (2023–2025) on Chinese NEV policy with macro models
that directly compete with this paper?)*
```

---

## 11. `model_notes/08_extensions.md`

**职责**：扩展模块。所有内容明确标注为非 baseline。防止扩展内容进入主模型。

```markdown
# Module 8: Extensions (Outside Baseline)

## ⚠️ Important rule

> **None of the content in this module should enter the baseline macro GE model
> until the core decentralized-policy-misallocation mechanism is fully solved,
> calibrated, and producing stable results.**

This module stores extensions that are planned but not yet in the baseline.

---

## 1. Supply chain IO [Extension — not baseline]

Extend the model to include a production network:
upstream battery/materials firms → midstream component firms → downstream OEMs.

Purpose: Capture how the policy wedge at the OEM level propagates upstream.
Reference: Liu (2019, QJE) on industrial policies in production networks.

Requires: Input-output structure, supplier-OEM relationships, intermediate goods prices.

---

## 2. Differentiated demand: BLP [Extension — not baseline]

Replace the inverse demand function $P^N = \mathcal{D}(Q^N)$ with a BLP-type
differentiated product demand system.

Purpose: Capture product-level competition among NEV brands.
Reference: Berry, Levinsohn, Pakes (1995).

Requires: Vehicle-level price and characteristic data, market share data.

---

## 3. Soft budget constraint [Extension — not baseline]

Add an explicit soft budget constraint: local government bails out
loss-making firms above a threshold size (zombie firm mechanism).

Purpose: Explain why capacity exit is even slower than $\chi_s$ alone predicts.
Reference: Caballero, Hoshi, Kashyap (2008, AER) on zombie firms.

---

## 4. International trade [Extension — not baseline]

Add a rest-of-world market for NEV exports.

Purpose: Capture how domestic overcapacity drives export surges.
Relevant for welfare calculation: if overcapacity is absorbed by exports,
domestic welfare calculation changes.

---

## 5. Financial frictions [Extension — not baseline]

Add borrowing constraints on firm-level investment.

Purpose: Capture the role of local government credit support
(policy banks, directed credit) as a form of relaxing constraints.

---

## 6. When to consider promoting to baseline

An extension should be promoted to the baseline only when:
1. The core model is solved and producing stable quantitative results.
2. The extension is necessary to match a key empirical pattern
   that the baseline cannot explain.
3. The extension does not fundamentally change the core mechanism.
```

---

## 12. `model_notes/99_decision_log.md`

**职责**：记录所有已接受和已拒绝的模型设定决策，带原因。只记录已经关闭的决策，不记录 open questions。

```markdown
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
```

---

## 13. 源文件迁徙映射

|
 源文件 
|
 目标文件 
|
 迁徙方式 
|
|
---
|
---
|
---
|
|
`NEV_model_memo_en.md`
|
`00_MASTER_model_memo.md`
|
 英文内容直接搬运到对应 section 
|
|
`地方政府博弈_notes.md`
|
`03_government_game.md`
|
 全部追加到 
`## Imported previous notes`
|
|
`内卷在模型中的位置_notes.md`
|
`01_research_mechanism.md`
|
 全部追加到 
`## Imported previous notes`
|
|
`NEV_产业政策_地方竞争_模型整合notes.md`
|
`02`
, 
`03`
, 
`04`
, 
`05`
|
 按内容拆分，追加到各 module 的 
`## Imported previous notes`
|
|
`宏观模型_单一政策wedge_修正版.md`
|
`00_MASTER`
（公式）+ 
`05`
（求解部分）
|
 追加到对应 section 
|

**规则：**
- 所有源文件保持原样，不删除。
- 如果目标文件已存在，追加内容，不替换。
- 数学公式原样保留，不改写。

---

## 14. Codex 执行 Checklist

Codex 执行完毕后，逐项确认：

- [ ] 目录结构已按第 1 节创建（只补缺失，不覆盖）
- [ ] `README.md` 已填写（第 2 节内容）
- [ ] `00_MASTER_model_memo.md` 已填写（第 3 节骨架）
- [ ] `01_research_mechanism.md` 已填写（第 4 节骨架）
- [ ] `02_environment_firms.md` 已填写（第 5 节骨架）
- [ ] `03_government_game.md` 已填写（第 6 节骨架）
- [ ] `04_planner_equilibrium.md` 已填写（第 7 节骨架）
- [ ] `05_quantification_solution.md` 已填写（第 8 节骨架）
- [ ] `06_counterfactuals.md` 已填写（第 9 节骨架）
- [ ] `07_literature_positioning.md` 已填写（第 10 节骨架）
- [ ] `08_extensions.md` 已填写（第 11 节骨架）
- [ ] `99_decision_log.md` 已填写（第 12 节内容，8条决策）
- [ ] 源文件迁徙已按第 13 节执行（追加而非覆盖）
- [ ] 所有源文件保持原样，未被删除
- [ ] 输出摘要：已创建 / 已追加 / 已跳过的文件列表