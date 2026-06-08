# NEV 模型 notes 简化结构确认版

> 用途：与 Claude Code 确认后执行。本文档记录简化后的目录结构和各文件内容大纲。

---

## 一、目录结构（仅需创建的部分）

```text
BEV_new_program/NEV_model_project/
├── README.md
├── model_notes/
│   ├── 00_MASTER_model_memo.md
│   ├── 01_research_mechanism_involution.md
│   ├── 02_environment_firms.md
│   ├── 03_government_planner_equilibrium.md
│   ├── 04_quantification_counterfactuals_solution.md
│   └── 99_decision_log.md
```

> 以下暂不创建，后续按需补充：
> - paper_draft/
> - code_plan/
> - 扩展模块（供应链 IO、文献定位）

---

## 二、各文件职责与初始内容大纲

### 2.0 `README.md`

内容直接取自原始 Codex plan 第 2 节（项目简介 + workflow 说明），无需修改。

---

### 2.1 `model_notes/00_MASTER_model_memo.md`

**职责**：唯一的当前 accepted baseline 模型。不包含讨论、备选方案、open questions。

**初始内容大纲**：

```markdown
# MASTER Model Memo

## Status / Last updated
YYYY-MM-DD

## 1. Research question
State-contingent industrial policy + 分散化地方竞争 → 总量资源错配。
产业政策不是坏东西；问题在于分散化地方政府是否过度使用扩张性政策。

## 2. Core mechanism
local policy game → over-entry + excess capacity → price/profit compression
→ low utilization + MPK gap → aggregate misallocation + welfare loss

## 3. Environment
- 时间：离散
- 区域：r = 1,…,R
- 部门：N (NEV), O (outside)
- Agents：household, heterogeneous firms, local governments, social planner

## 4. Policy wedge
单一扩张性政策楔子 s_{r,t} ≥ 0，概括地方支持的所有形式

## 5. Household & final good
CES aggregator + 资源约束方程

## 6. Firms
生产函数、资本成本楔子、产能动态、利用率、进入退出条件

## 7. Learning externalities
A_{r,t+1}^N 的动态方程

## 8. Local government objective & Markov-Nash

## 9. Planner problem
计划者不是无政策基准；内化学习外部性、闲置产能、资本错配

## 10. Decentralized equilibrium（8 条条件）

## 11. Involution as equilibrium outcome（5 个均衡缺口）

## 12. Main propositions（1-6）

## 13. Quantification moments（表格）

## 14. Counterfactuals（5 组列表）

## 15. Solution strategy（阶段 1-5）
```

**源文件迁徙来源**：
- `NEV_model_memo_en.md` → 已确认的 baseline 内容搬运到各对应 section
- `NEV_产业政策_地方竞争_模型整合notes.md` → 已确认的 baseline 内容搬运到各对应 section
- `宏观模型_单一政策wedge_修正版.md` → baseline 公式搬运

---

### 2.2 `model_notes/01_research_mechanism_involution.md`

**职责**：研究问题 + 核心机制链条 + 内卷定义。这三个是最高层问题，合在一起讨论最自然。

**初始内容大纲**：

```markdown
# Module 1: Research question, Core mechanism, Involution definition

## 1. Purpose

## 2. Research question（正式表述，含"state-contingent"澄清）

## 3. Core mechanism（箭头链 + 每一步经济直觉）

## 4. Definition of involution
内卷不是外生冲击，是分散化地方产业政策的均衡结果。
5 维向量：policy gap, capacity gap, utilization gap, MPK gap, welfare gap

## 5. Link to other modules

## 6. Open questions

## 7. Accepted baseline / Alternatives / Main-text version

## Imported previous notes
```

**源文件迁徙来源**：`内卷在模型中的位置_notes.md` 全部内容搬运到 "Imported previous notes" 小节。

---

### 2.3 `model_notes/02_environment_firms.md`

**职责**：模型的基础构件。环境设定 + 家庭 + 最终品市场 + 企业（生产、进入、产能、退出）+ 学习外部性。

**初始内容大纲**：

```markdown
# Module 2: Environment, Household, Final good, Firms

## 1. Purpose

## 2. Environment（时间、区域、部门、agents）

## 3. Representative household（效用、劳动供给）

## 4. Final good
- CES aggregator: Y = [η(Y^N)^{(ε-1)/ε} + (1-η)(Y^O)^{(ε-1)/ε}]^{ε/(ε-1)}
- Resource constraint: Y = C + I^K + ΣI^H + PolicyCost + AdjustmentCost + IdleCost

## 5. Firms
- 5.1 生产函数: y = z · A · k^α · l^{1-α}
- 5.2 资本成本楔子: R^N = r - φ·s
- 5.3 产能动态: H_{t+1} = (1-δ_H)H_t + I^H_t, 利用率 u = Q/H
- 5.4 进入与退出: V(z) = max{ 0, π(z) + β·E[V(z')] }

## 6. Learning externalities
A_{t+1}^N = (1-δ_A)A_t^N + ψ_L·(Q_t^N)^ν + ψ_G·(Q̅_t^N)^ν

## 7. Link to other modules

## 8. Accepted baseline / Alternatives / Open questions

## Imported previous notes
```

**源文件迁徙来源**：
- `NEV_model_memo_en.md` 中 environment、household、firms 部分
- `NEV_产业政策_地方竞争_模型整合notes.md` 中企业设定部分

---

### 2.4 `model_notes/03_government_planner_equilibrium.md`

**职责**：模型的核心行为模块。地方政府博弈（含政策调整与退出）+ 计划者基准 + 均衡定义。

**初始内容大纲**：

```markdown
# Module 3: Local government game, Policy adjustment, Planner, Equilibrium

## 1. Purpose

## 2. Local government objective
目标函数：L = ω_Y·Y^N + ω_I·I^H + ω_E·L^N + ω_T·Tax - κ/2·s² - χ_s/2·(s_t - s_{t-1})²

## 3. Policy adjustment and exit
政策不是固定的，也不是永不退出的。
核心机制：地方政府退出比计划者慢，原因：调整成本、财政激励、沉没承诺、区域竞争

## 4. Markov-Nash equilibrium
- 反应函数: s_{r,t} = BR_r(s_{-r,t}; Z_{r,t}, Z_t)
- 求解策略：先对称区域 / 两类型区域，后扩展到多区域
- 多均衡处理：grid search → nlsolve → 稳定性选择规则

## 5. Planner problem
计划者不是无政策基准。内化学习外部性、闲置产能、资本错配。
s_{r,t}^P = s^P(Z_{r,t}, Z_t)

## 6. Equilibrium definition（8 条条件）
1. household FOC  2. firm FOC  3. local gov FOC
4. Markov-Nash condition  5. market clearing
6. capacity/productivity law of motion  7. gov budget  8. resource constraint

## 7. Link to other modules

## 8. Accepted baseline / Alternatives / Open questions

## Imported previous notes
```

**源文件迁徙来源**：
- `地方政府博弈_notes.md` 全部内容
- `NEV_产业政策_地方竞争_模型整合notes.md` 中政府、计划者、均衡部分

---

### 2.5 `model_notes/04_quantification_counterfactuals_solution.md`

**职责**：模型怎么联系数据、用来回答什么问题、怎么计算。

**初始内容大纲**：

```markdown
# Module 4: Quantification moments, Counterfactuals, Solution strategy

## 1. Purpose

## 2. Quantification moments
| 参数 | 矩 | 数据来源/代理 |
|---|---|---|
| φ    | policy-investment elasticity | 政策文本、投资、产能 |
| φ_F  | policy-entry elasticity | 企业注册 |
| δ_H  | capacity persistence | 产能数据 |
| ε_D  | demand elasticity | 价格和销量 |
| ψ_L, ψ_G | learning externality | 累计产出、TFP、成本下降 |
| ρ_s, χ_s | policy inertia | 产能过剩后政策持续性 |
| MPK gap | capital misallocation | 企业财务数据 |
| fiscal cost | subsidy cost | 财政报告、基金、土地、信贷 |

## 3. Counterfactuals
1. No local policy competition
2. Centralized planner industrial policy
3. Subsidy cap or anti-duplication rule
4. Faster exit and consolidation
5. Expansionary vs productivity-enhancing support

（每组：模型改动、经济问题、输出变量、福利分解）

## 4. Solution strategy
Phase 1: 稳态解析模型
Phase 2: 确定性转移动态
Phase 3: 地方 Nash 计算（grid search → nlsolve → 多均衡检查）
Phase 4: 异质性企业 + 退出
Phase 5: 扩展

## 5. Open questions

## Imported previous notes
```

**源文件迁徙来源**：
- `NEV_model_memo_en.md` 中 quantification / counterfactuals 部分
- `宏观模型_单一政策wedge_修正版.md` 中求解相关内容

---

### 2.6 `model_notes/99_decision_log.md`

**职责**：记录所有已接受和已拒绝的模型设定决策，带原因。

**初始内容**：5 条初始决策

```markdown
# Decision Log

## Decision 1: Baseline policy variable
Accepted: 使用单一地方扩张性政策楔子 s_{r,t}
Rejected: 在 baseline 中单独建模 6-7 个具体政策工具
Reason: 单一楔子与宏观错配模型一致，避免维度过高

## Decision 2: Policy state dependence
Accepted: 政策状态依存，受调整摩擦约束
Rejected: 假设政策固定或永不退出
Reason: 核心机制是地方政府退出比计划者慢，而非永不退出

## Decision 3: Government game
Accepted: 地方政府 Markov-Nash 博弈
Rejected: 将地方政策视为纯外生
Reason: 核心机制要求分散化地方政策竞争

## Decision 4: Product market
Accepted: 使用逆需求函数
Rejected: 在 baseline 中使用完整 BLP
Reason: 第一个模型需要透明的价格 / 利润机制

## Decision 5: Involution
Accepted: 内卷是均衡结果，不是外生冲击
Definition: 过度政策支持、过度进入、产能过剩、低利用率、价格利润压缩、MPK 缺口、福利损失的联合模式
```

---

## 三、源文件迁徙映射

| 源文件 | → 目标 |
|---|---|
| `NEV_model_memo_en.md` | `00_MASTER_model_memo.md` + `02_environment_firms.md`（按内容拆） |
| `地方政府博弈_notes.md` | `03_government_planner_equilibrium.md`（全部） |
| `内卷在模型中的位置_notes.md` | `01_research_mechanism_involution.md`（全部） |
| `NEV_产业政策_地方竞争_模型整合notes.md` | 按内容拆到 `00_MASTER` + `02` + `03` + `04` |
| `宏观模型_单一政策wedge_修正版.md` | `00_MASTER_model_memo.md` + `04_quantification_counterfactuals_solution.md` |

已存在的源文件 **不删除**。

---

## 四、执行原则

1. 只创建不存在的目录和文件，不覆盖已有内容
2. 如果目标文件已存在，以 "## Imported previous notes" 小节追加内容，不替换
3. MASTER 只收 accepted baseline，不收 alternatives 和 open questions
4. 源文件保持原样，不删除
5. 先建骨架（目录 + 空文件 + 模板），再迁徙内容
