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
\underbrace{\text{Price and profit compression}}_{\text{P\downarrow, \, \pi \to 0}}
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

> Historical source:
> [`内卷在模型中的位置_notes.md`](../legacy/model_drafts/内卷在模型中的位置_notes.md).

### 7.1 核心判断

内卷不是一个外生冲击，也不是一个单独的原始变量，而是地方分散化产业政策竞争生成的一组均衡结果。

最简洁的逻辑链条是：

\[
\text{地方政府政策博弈}
\Rightarrow
\text{过度进入与产能扩张}
\Rightarrow
\text{价格/利润压缩}
\Rightarrow
\text{资本错配与福利损失}
\]

更正式地说：

> **内卷 = 地方分散化政策竞争导致扩张型政策 wedge 过高，使 NEV 部门出现过度进入、过度产能、低价格、低利润、低利用率和低资本回报，并相对于 planner allocation 形成 aggregate misallocation。**

### 7.2 六层内卷结构

| 层面 | 内卷表现 | 模型对象 |
|---|---|---|
| 第一层：政策内卷 | 地方政府竞相加码 | $s_{r,t}^D > s_{r,t}^P$ |
| 第二层：投资内卷 | 过度进入与产能扩张 | $N^{D} > N^{P}, H^{D} > H^{P}$ |
| 第三层：产能内卷 | 产能利用率下降 | $u^N < 1$ |
| 第四层：价格战内卷 | 价格下降、利润压缩 | $P^{N,D} < P^{N,P}, \pi^{N,D} < \pi^{N,P}$ |
| 第五层：资本错配 | 跨部门 MPK 偏离 | $MPK^{N,D} < MPK^{O,D}$ |
| 第六层：动态内卷 | 政策退出太慢 | $\|\Delta s^D\| < \|\Delta s^P\|$ |

### 7.3 建议在论文中使用的英文表述

> **Involution is not modeled as an exogenous shock. It is an equilibrium outcome of decentralized local industrial policy. In the model, local governments choose expansionary NEV policy wedges to maximize local output, investment, employment, and tax-base gains. Because they do not fully internalize national excess capacity, price compression, and cross-sector capital misallocation, the decentralized equilibrium features excessive policy support, over-entry, excessive capacity, lower utilization, lower NEV prices and profits, and a lower marginal product of capital in NEV relative to the outside sector. I refer to this joint equilibrium pattern as industrial involution.**

### 7.4 建议在论文中使用的中文表述

> **本文不把"内卷"设定为一个外生冲击，而是将其定义为地方分散化产业政策竞争的均衡结果。在模型中，地方政府选择扩张型 NEV 政策 wedge，以最大化本地产值、投资、就业和税基收益。由于地方政府不完全内部化全国层面的产能过剩、价格压缩和跨部门资本错配，分散均衡表现为政策支持过度、企业过度进入、产能过度扩张、产能利用率下降、NEV 价格和利润压缩，以及 NEV 部门资本边际回报低于其他部门。本文将这一组均衡现象定义为产业内卷。**
