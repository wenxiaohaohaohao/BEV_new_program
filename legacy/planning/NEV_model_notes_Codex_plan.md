# Codex Plan：NEV 模型 notes 模块化配置与维护方案

## 0. 目标

本计划用于配置一个可长期维护的 NEV 产业政策模型 notes 系统。核心原则是：

> **模块化 notes + 一个 MASTER model memo + 一个 decision log。**

不要把所有模型讨论都塞进一个大文件，也不要只保留零散 notes。正确做法是：

1. 每个模型模块维护一个独立 notes；
2. `00_MASTER_model_memo.md` 只保存当前已经确认的基准模型版本；
3. `99_decision_log.md` 记录所有已经接受和拒绝的关键模型设定；
4. 每次深度讨论只更新对应模块；
5. 定期把 accepted baseline 内容同步到 MASTER。

---

## 1. 项目目录结构

请在项目根目录下创建如下结构：

```text
NEV_model_project/
├── README.md
├── model_notes/
│   ├── 00_MASTER_model_memo.md
│   ├── 01_research_question_and_mechanism.md
│   ├── 02_environment_household_final_good.md
│   ├── 03_firms_entry_capacity_exit.md
│   ├── 04_local_government_game.md
│   ├── 04b_policy_adjustment_exit.md
│   ├── 05_planner_problem.md
│   ├── 06_equilibrium_definition.md
│   ├── 07_involution_definition.md
│   ├── 08_quantification_moments.md
│   ├── 09_counterfactuals.md
│   ├── 10_solution_algorithm.md
│   ├── 11_extensions_supply_chain_IO.md
│   ├── 12_literature_positioning.md
│   └── 99_decision_log.md
├── paper_draft/
│   ├── model_section.tex
│   ├── appendix_model.tex
│   └── references.bib
└── code_plan/
    ├── moments_data_plan.md
    ├── calibration_plan.md
    └── solution_algorithm_plan.md
```

If a directory already exists, do not overwrite it. Add missing files only.

---

## 2. README.md 内容

Create `README.md` with the following purpose:

```markdown
# NEV Model Project

This repository organizes notes, model specifications, draft sections, and coding plans for the project:

**State-Contingent Industrial Policy, Local Competition, and Aggregate Misallocation: Evidence from China's NEV Industry**

## Core workflow

The project uses a modular notes structure:

1. `model_notes/00_MASTER_model_memo.md` records the current baseline model.
2. Module-specific notes record detailed discussions and alternatives.
3. `model_notes/99_decision_log.md` records accepted and rejected modeling decisions.
4. Only accepted baseline content should be incorporated into the MASTER memo.
5. Open questions and alternatives should remain in module notes until resolved.

## Key principle

Do not rewrite the entire model after every discussion. Update the relevant module note first, then selectively update the MASTER memo.
```

---

## 3. MASTER 文件：`00_MASTER_model_memo.md`

### 3.1 文件职责

`00_MASTER_model_memo.md` 是唯一的当前基准模型文件。它不是讨论记录，也不是备选方案集合。它只包含已经确认的模型版本。

### 3.2 文件初始结构

Create or update `model_notes/00_MASTER_model_memo.md` with the following skeleton:

```markdown
# MASTER Model Memo

## Project title

State-Contingent Industrial Policy, Local Competition, and Aggregate Misallocation: Evidence from China's NEV Industry

## Status

Baseline model memo.  
This file records the current accepted model.  
Detailed discussions, alternatives, and unresolved issues are stored in module-specific notes.

## Last updated

YYYY-MM-DD

---

## 1. Research question

How does decentralized local industrial policy in a strategic emerging industry generate over-entry, excess capacity, price and profit compression, and aggregate capital misallocation after initially facilitating industrial upgrading?

---

## 2. Core mechanism

The baseline mechanism is:

\[
\text{local policy game}
\Rightarrow
\text{over-entry and excessive capacity}
\Rightarrow
\text{price and profit compression}
\Rightarrow
\text{low utilization and MPK gap}
\Rightarrow
\text{aggregate misallocation and welfare loss}.
\]

Industrial policy is not assumed to be always harmful. It is state-contingent. The policy wedge may be welfare-improving when learning, market creation, and coordination externalities are strong. The distortion arises when decentralized local governments overuse expansionary policy wedges relative to the planner.

---

## 3. Environment

- Time: discrete.
- Regions: \(r=1,\ldots,R\).
- Sectors: \(j\in\{N,O\}\), where \(N\) is the NEV sector and \(O\) is the outside sector.
- Agents:
  1. representative household;
  2. heterogeneous firms;
  3. local governments;
  4. social planner benchmark.

---

## 4. Policy wedge

The baseline policy object is one local expansionary policy wedge:

\[
s_{r,t}\geq 0.
\]

It summarizes local NEV support through subsidies, land support, industrial funds, credit support, investment facilitation, tax preferences, infrastructure support, and local industrial parks.

The baseline model does not separately model six or seven policy tools.

---

## 5. Firms

Firms produce:

\[
y_{i,r,t}^j=z_{i,t}A_{r,t}^j(k_{i,r,t}^j)^{\alpha_j}(l_{i,r,t}^j)^{1-\alpha_j}.
\]

For the outside sector:

\[
R_{r,t}^O=r_t.
\]

For the NEV sector:

\[
R_{r,t}^N=r_t-\phi s_{r,t}.
\]

Possible extension:

\[
F_{r,t}^N=F_0^N-\phi_Fs_{r,t}.
\]

---

## 6. Capacity and demand

NEV capacity evolves as:

\[
H_{r,t+1}^N=(1-\delta_H)H_{r,t}^N+I_{r,t}^H.
\]

Capacity utilization is:

\[
u_{r,t}^N=\frac{Q_{r,t}^N}{H_{r,t}^N}.
\]

Product-market demand:

\[
P_t^N=\mathcal D(Q_t^N),\quad \mathcal D'(Q_t^N)<0.
\]

---

## 7. Learning externalities

\[
A_{r,t+1}^N=(1-\delta_A)A_{r,t}^N+\psi_L(Q_{r,t}^N)^\nu+\psi_G(\bar Q_t^N)^\nu.
\]

---

## 8. Local government problem

Local government \(r\) chooses \(s_{r,t}\) to maximize:

\[
\sum_{t=0}^{\infty}\beta_g^t
\left[
\omega_YY_{r,t}^N+\omega_II_{r,t}^H+\omega_EL_{r,t}^N+\omega_TTax_{r,t}
-\frac{\kappa}{2}s_{r,t}^2
-\frac{\chi_s}{2}(s_{r,t}-s_{r,t-1})^2
\right].
\]

Local governments internalize local output, investment, employment, and tax-base gains, but not fully national excess capacity and capital misallocation.

---

## 9. Planner problem

The planner maximizes:

\[
\max \sum_{t=0}^{\infty}\beta^tU(C_t,L_t)
\]

subject to production, capacity, learning, demand, budget, and resource constraints.

The planner is not a no-policy benchmark. It chooses state-contingent industrial policy:

\[
s_{r,t}^P=s^P(Z_{r,t},Z_t).
\]

---

## 10. Decentralized equilibrium

The decentralized equilibrium is a Markov-Nash equilibrium among local governments:

\[
s_{r,t}^D=BR_r(s_{-r,t}^D;Z_{r,t},Z_t).
\]

---

## 11. Definition of involution

Involution is not modeled as an exogenous shock. It is an equilibrium outcome of decentralized local industrial policy.

The key equilibrium gaps are:

\[
s_t^D-s_t^P,
\]

\[
H_t^{N,D}-H_t^{N,P},
\]

\[
u_t^{N,P}-u_t^{N,D},
\]

\[
MPK_t^{O,D}-MPK_t^{N,D},
\]

\[
W^P-W^D.
\]

---

## 12. Main propositions

1. State-contingent industrial policy can raise welfare when learning and coordination externalities are strong.
2. Decentralized local governments overuse expansionary policy relative to the planner.
3. Excessive policy support generates over-entry and excess capacity.
4. Overcapacity compresses prices and profits.
5. Decentralized policy generates aggregate capital misallocation and welfare loss.
6. Policy exits too slowly under local adjustment frictions.

---

## 13. Quantification moments

Baseline moments:

1. policy-entry elasticity;
2. policy-investment elasticity;
3. capacity utilization;
4. price and profit compression;
5. MPK gap;
6. learning-by-doing;
7. policy inertia;
8. fiscal cost.

---

## 14. Counterfactuals

1. No local policy competition.
2. Centralized planner industrial policy.
3. Subsidy cap or anti-duplication rule.
4. Faster exit and consolidation.
5. Expansionary versus productivity-enhancing support.

---

## 15. Solution strategy

1. Static or steady-state analytic model.
2. Deterministic transition model.
3. Heterogeneous firms and exit.
4. Numerical solution.
5. Extensions.
```

---

## 4. 模块 notes 模板

Every module note should follow the same structure:

```markdown
# Module X: [Module Name]

## 1. Purpose of this module

Explain what this module does in the overall model.

## 2. Current baseline specification

Record the accepted baseline specification.

## 3. Equations

List the key equations.

## 4. Economic intuition

Explain the mechanism in words.

## 5. Link to other modules

Explain how this module connects to firms, local governments, planner, equilibrium, moments, or counterfactuals.

## 6. Accepted baseline content

Content that should eventually be incorporated into `00_MASTER_model_memo.md`.

## 7. Alternatives considered

List alternative specifications and why they are not baseline.

## 8. Open questions

List unresolved issues.

## 9. Main-text version

Write the short version that can later enter the paper's model section.

## 10. Appendix / computational details

Put technical details here.
```

Use this template for every file from `01_` to `12_`.

---

## 5. 各模块文件的具体任务

### 5.1 `01_research_question_and_mechanism.md`

Purpose:

- Define research question.
- State the core contribution.
- Clarify the macro version vs applied IO version.
- Clarify that the project is about decentralized industrial policy and aggregate misallocation.

Must include:

```text
Industrial policy is state-contingent.
The question is not whether industrial policy should exist.
The question is whether decentralized local governments overuse expansionary policy relative to the planner.
```

---

### 5.2 `02_environment_household_final_good.md`

Purpose:

- Record model environment.
- Define regions, sectors, households, final good, resource constraint.

Must include:

```math
Y_t=\left[\eta_N(Y_t^N)^{\frac{\epsilon-1}{\epsilon}}+(1-\eta_N)(Y_t^O)^{\frac{\epsilon-1}{\epsilon}}\right]^{\frac{\epsilon}{\epsilon-1}}.
```

and

```math
Y_t=C_t+I_t^K+\sum_r I_{r,t}^H+PolicyCost_t+AdjustmentCost_t+IdleCost_t.
```

Open issue:

- Whether labor supply should be endogenous or fixed in the first implementation.

---

### 5.3 `03_firms_entry_capacity_exit.md`

Purpose:

- Record firm production, productivity heterogeneity, entry, capacity, and exit.

Must include:

```math
y_{i,r,t}^j=z_{i,t}A_{r,t}^j(k_{i,r,t}^j)^{\alpha_j}(l_{i,r,t}^j)^{1-\alpha_j}.
```

```math
R_{r,t}^N=r_t-\phi s_{r,t}.
```

```math
H_{r,t+1}^N=(1-\delta_H)H_{r,t}^N+I_{r,t}^H.
```

```math
V_{i,r,t}^N(z)=\max\left\{0,\ \pi_{i,r,t}^N(z)+\beta E_tV_{i,r,t+1}^N(z')\right\}.
```

Open issues:

- Whether the baseline uses only capital-cost wedge or also entry-cost wedge.
- Whether firm heterogeneity enters the first quantitative version or is added in the second stage.

---

### 5.4 `04_local_government_game.md`

Purpose:

- Record local government objective and Markov-Nash equilibrium.
- Include multiple-equilibrium concern and solution algorithm.

Must include:

```math
V_{r,t}^L=
\omega_Y Y_{r,t}^N+
\omega_I I_{r,t}^H+
\omega_E L_{r,t}^N+
\omega_T Tax_{r,t}
-\frac{\kappa}{2}s_{r,t}^2
-\frac{\chi_s}{2}(s_{r,t}-s_{r,t-1})^2.
```

```math
s_{r,t}^D=BR_r(s_{-r,t}^D;Z_{r,t},Z_t).
```

Must record:

- Do not begin with 31-province dynamic game.
- Start with two-type regions or symmetric regions.
- Use grid search before `nlsolve`.
- If multiple equilibria exist, use previous-period policy state and stability as selection rule.

---

### 5.5 `04b_policy_adjustment_exit.md`

Purpose:

- Record state-dependent policy adjustment and exit.
- Clarify that policy is not fixed and does not never exit.

Must include:

```math
s_{r,t}=\rho_s s_{r,t-1}+(1-\rho_s)\tilde{s}_{r,t}.
```

and:

```math
\frac{\chi_s}{2}(s_{r,t}-s_{r,t-1})^2.
```

Core statement:

```text
The model does not assume that local policy never exits. The mechanism is that local policy exits too slowly relative to the planner because of adjustment costs, local fiscal incentives, sunk commitments, and interregional competition.
```

---

### 5.6 `05_planner_problem.md`

Purpose:

- Define the planner benchmark.
- Clarify that planner is not no-policy benchmark.

Must include:

```math
\max \sum_{t=0}^{\infty}\beta^tU(C_t,L_t)
```

subject to all feasibility constraints.

Must clarify:

- Planner internalizes learning externalities.
- Planner internalizes national idle capacity.
- Planner internalizes capital misallocation.
- Planner may still use industrial policy.

---

### 5.7 `06_equilibrium_definition.md`

Purpose:

- Define decentralized equilibrium and planner allocation.

Must include:

1. household optimization;
2. firm optimization;
3. local government optimization;
4. Markov-Nash condition;
5. market clearing;
6. capacity and productivity laws of motion;
7. government budget;
8. resource constraint.

---

### 5.8 `07_involution_definition.md`

Purpose:

- Define involution as a model object.
- Connect policy involution, entry involution, capacity involution, price-war involution, MPK misallocation, and welfare loss.

Must include:

```math
Involution_t
=
\left(
s_t^D-s_t^P,\ 
H_t^{N,D}-H_t^{N,P},\
u_t^{N,P}-u_t^{N,D},\
MPK_t^{O,D}-MPK_t^{N,D},\
W^P-W^D
\right).
```

Must include the English wording:

```text
Involution is not modeled as an exogenous shock. It is an equilibrium outcome of decentralized local industrial policy...
```

---

### 5.9 `08_quantification_moments.md`

Purpose:

- Map model parameters to moments and data.

Must include table:

| Parameter / object | Moment | Data source / proxy |
|---|---|---|
| \(\phi\) | policy-investment elasticity | policy text, investment, capacity |
| \(\phi_F\) | policy-entry elasticity | firm entry, registrations |
| \(\delta_H\) | capacity persistence | capacity data |
| \(\epsilon_D\) | demand elasticity | prices and sales |
| \(\psi_L,\psi_G\) | learning externality | cumulative output, TFP, cost decline |
| \(\rho_s,\chi_s\) | policy inertia | policy continuation after overcapacity |
| MPK gap | capital misallocation | firm financials |
| fiscal cost | subsidy cost | fiscal reports, funds, land, credit proxies |

---

### 5.10 `09_counterfactuals.md`

Purpose:

- Record all model counterfactuals.

Must include:

1. no local policy competition;
2. centralized planner industrial policy;
3. subsidy cap or anti-duplication rule;
4. faster exit and consolidation;
5. expansionary versus productivity-enhancing support.

For each counterfactual, write:

- model change;
- economic question;
- expected variables to report;
- welfare components.

---

### 5.11 `10_solution_algorithm.md`

Purpose:

- Record computational plan.

Must include:

1. steady-state analytic model;
2. deterministic transition;
3. local government Nash computation;
4. grid search;
5. `nlsolve`;
6. multiple equilibrium checks;
7. equilibrium selection rule;
8. robustness.

For local Nash:

```text
Step 1: define policy grid.
Step 2: compute FOC residuals.
Step 3: detect candidate roots.
Step 4: use candidates as initial values for nlsolve.
Step 5: verify Nash deviations.
Step 6: select stable equilibrium closest to previous-period policy state.
```

---

### 5.12 `11_extensions_supply_chain_IO.md`

Purpose:

- Store extensions that are not in baseline.

Must include:

- differentiated Bertrand;
- nested logit or BLP as optional extension;
- supplier payment terms;
- supplier innovation;
- production networks.

Important rule:

```text
These extensions should not enter the baseline macro GE model until the core decentralized-policy-misallocation mechanism is solved.
```

---

### 5.13 `12_literature_positioning.md`

Purpose:

- Store literature mapping.

Must include:

| Literature | Use in this project |
|---|---|
| Buera-Moll-Shin | well-intended policy and dynamic misallocation |
| Barwick-Kalouptsidi-Zahur | industrial policy, entry, investment, idle capacity |
| Fajgelbaum / spatial policy | decentralized spatial allocation vs planner |
| Hsieh-Klenow | MPK/MRPK dispersion and aggregate TFP loss |
| Ernest Liu | production network extension |

---

### 5.14 `99_decision_log.md`

Purpose:

- Record accepted and rejected modeling decisions.

Initial content:

```markdown
# Decision Log

## Decision 1: Baseline policy variable

Accepted: use one local expansionary policy wedge \(s_{r,t}\) in the baseline.

Rejected: modeling six or seven specific policy tools separately in the baseline.

Reason:
A single wedge is more consistent with macro misallocation models and avoids excessive dimensionality. Specific tools will be used to construct or calibrate the wedge.

---

## Decision 2: Policy state dependence

Accepted: policy is state-dependent and subject to adjustment frictions.

Rejected: assuming policy is fixed or never exits.

Reason:
The mechanism is not that local policy never exits, but that local policy exits more slowly than the planner's policy.

---

## Decision 3: Government game

Accepted: local governments play a Markov-Nash game in the baseline.

Rejected: treating local policy as purely exogenous.

Reason:
The core mechanism requires decentralized local policy competition.

---

## Decision 4: Product market

Accepted: use inverse demand in the baseline.

Rejected: using full BLP in the baseline.

Reason:
The first model needs a transparent price/profit mechanism, not a full empirical IO demand system.

---

## Decision 5: Involution

Accepted: involution is an equilibrium outcome, not an exogenous shock.

Definition:
Involution is the joint pattern of excessive policy support, over-entry, excess capacity, lower utilization, price/profit compression, MPK gap, and welfare loss relative to planner allocation.
```

---

## 6. Existing notes migration plan

If the following files already exist, copy or move them into the new structure:

| Existing file | New target |
|---|---|
| `NEV_model_memo_en.md` | `model_notes/00_MASTER_model_memo.md` |
| `地方政府博弈_notes.md` | `model_notes/04_local_government_game.md` |
| `内卷在模型中的位置_notes.md` | `model_notes/07_involution_definition.md` |
| `NEV_产业政策_地方竞争_模型整合notes.md` | use as source for `00_MASTER_model_memo.md` and module notes |

Important:

- Do not delete original files unless explicitly instructed.
- If a target file exists, append a migration note rather than overwriting without review.
- Preserve mathematical equations.

---

## 7. Update workflow for future discussions

Use the following workflow:

### Step 1: Identify the module

Before updating notes, identify which module the discussion belongs to.

Examples:

- discussion about local government Nash equilibrium → `04_local_government_game.md`;
- discussion about policy exit → `04b_policy_adjustment_exit.md`;
- discussion about firms and capacity → `03_firms_entry_capacity_exit.md`;
- discussion about moments → `08_quantification_moments.md`.

### Step 2: Update only that module

Do not rewrite the MASTER file immediately.

### Step 3: Mark content status

Within the module, label content as:

```text
Accepted baseline
Alternative
Open question
Rejected
Main-text candidate
Appendix candidate
```

### Step 4: Update decision log

If the discussion resolves a modeling choice, update `99_decision_log.md`.

### Step 5: Periodically update MASTER

Only after several modules are stabilized, update `00_MASTER_model_memo.md`.

Rule:

```text
MASTER receives only accepted baseline content.
MASTER does not receive alternatives or unresolved questions.
```

---

## 8. Codex execution checklist

Codex should execute the following tasks:

1. Create the directory structure.
2. Create all markdown files if missing.
3. Fill `README.md`.
4. Fill `00_MASTER_model_memo.md` using the skeleton above.
5. Fill every module note using the module template.
6. Fill `99_decision_log.md` with initial decisions.
7. If existing notes are found, copy their content into the relevant module files under a section titled:

```markdown
## Imported previous notes
```

8. Do not delete original files.
9. Do not overwrite existing content without adding a backup or migration section.
10. Preserve all LaTeX equations in markdown.

---

## 9. Suggested Codex prompt

Use the following prompt for Codex:

```text
Please configure the NEV model project notes according to the Markdown plan in this file.

Tasks:
1. Create the directory tree exactly as specified.
2. Create missing Markdown files.
3. Populate README.md, 00_MASTER_model_memo.md, module notes, and 99_decision_log.md using the provided skeletons.
4. If existing notes are present, migrate them into the relevant module files under "Imported previous notes" without deleting the originals.
5. Do not overwrite existing files without preserving previous content.
6. Do not invent new model assumptions beyond the plan.
7. Preserve LaTeX equations exactly.
8. After configuration, provide a summary of created files, modified files, and any files that were skipped because they already existed.
```

---

## 10. Final principle

The project should follow this logic:

```text
discussion
→ module note
→ accepted baseline
→ decision log
→ MASTER model memo
→ paper draft / code plan
```

The model should become more disciplined over time.  
Do not let every new discussion rewrite the entire model.  
Do not let isolated notes drift away from the baseline model.

The purpose of this structure is to make the NEV model cumulative, traceable, and suitable for eventual conversion into:

1. an English model section;
2. a technical appendix;
3. a quantitative implementation plan;
4. a paper-level model memo.
