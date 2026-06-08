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

| Parameter | Interpretation |
|---|---|
| $\omega_Y$ | weight on local NEV output (GDP target) |
| $\omega_I$ | weight on local investment (capital attraction) |
| $\omega_E$ | weight on local NEV employment |
| $\omega_T$ | weight on local tax base |
| $\kappa$ | convex policy cost (fiscal and political cost of higher wedge) |
| $\chi_s$ | policy adjustment friction (inertia, sunk commitments, credibility) |

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

> Historical source:
> [`地方政府博弈_notes.md`](../legacy/model_drafts/地方政府博弈_notes.md).

### 7.1 核心判断

地方政府之间的博弈在该模型中非常重要，但需要区分：
- **经济学机制上**：地方政府博弈是核心机制。
- **数值计算上**：不应把政府博弈做得过度复杂。

本文要解释的不是单个地方政府为什么支持新能源汽车，而是：

> 每个地方政府从本地角度看都有理由支持 NEV，但所有地方同时支持同一产业后，会在全国层面形成重复建设、产能过剩和资本错配。

如果没有地方政府博弈，模型只能说明 $s_{r,t} \rightarrow K_{r,t}^N, H_{r,t}^N, Y_{r,t}^N$（"政策提高投资和产能"）。有了政府博弈，模型才能解释 $\{s_{r,t}\}_{r=1}^R$ 如何共同决定全国 NEV 产能、价格、利润、资本回报和福利。

### 7.2 为什么地方政府博弈是核心机制

地方政府最大化本地目标，但全国性过剩产能 $IdleCapacity_t = \max\{0, \sum_r H_{r,t}^N - D_t^N\}$ 未被完全内部化：

$$
\frac{\partial IdleCapacity_t}{\partial s_{r,t}},\quad
\frac{\partial Misallocation_t}{\partial s_{r,t}},\quad
\frac{\partial P_t^N}{\partial s_{r,t}}
$$

因此分散均衡中可能出现 $s_{r,t}^D > s_{r,t}^P$，$H_{r,t}^{N,D} > H_{r,t}^{N,P}$，$MPK_{r,t}^{N,D} < MPK_{r,t}^{O,D}$。

### 7.3 没有政府博弈，文章会变弱

如果把地方政策设成外生过程 $s_{r,t} = \rho_s s_{r,t-1} + \varepsilon_{r,t}$，模型只能说明"政策冲击导致产能扩张"，但无法解释：(1) 为什么地方政府会系统性地过度支持同一产业；(2) 为什么政策退出慢于社会最优；(3) 为什么 decentralized equilibrium 和 planner allocation 不一致。

地方政府博弈是将文章从普通产业政策模型提升为**分散化产业政策与总量错配模型**的关键结构。

### 7.4 政府博弈不应过度复杂

基准模型不建议直接做 31 个省份的高维动态 Nash game。更合理的第一版设定：

**方案 A（两类地区）：** $r \in \{H, L\}$，$H$ 产业基础强、财政能力强，$L$ 产业基础较弱。Nash 均衡满足 $F_H(s_H, s_L) = 0$, $F_L(s_H, s_L) = 0$。

**方案 B（对称地区）：** $R$ 个对称地区，求对称 Nash 均衡 $s_1 = s_2 = \cdots = s_R = s^D$，便于解析推导。

### 7.5 多重 Nash 均衡

政府博弈可能存在多个均衡。战略互补（$\partial BR_r(s_{-r})/\partial s_{-r} > 0$）时可能出现：低支持均衡、高支持均衡、非对称均衡。新能源汽车"内卷式竞争"更接近高支持均衡或政策退出失败的均衡。

### 7.6 数值求解策略：网格搜索 + nlsolve

Step 1：粗网格搜索 → Step 2：多初始值 Newton/nlsolve → Step 3：检查是否真正 Nash 均衡 → Step 4：明确均衡选择规则。

最自然的选择规则是：**equilibrium selected by previous policy state $s_{t-1}$**，因为模型中已包含政策调整摩擦 $\frac{\chi_s}{2}(s_{r,t} - s_{r,t-1})^2$。

### 7.7 多重均衡不应成为主战场

论文主线仍是：local objectives → $s^D > s^P$ → over-entry → excess capacity → low utilization / low MPK → welfare loss。

主文中简洁表述："The decentralized equilibrium is a Markov-Nash equilibrium among local governments. In the baseline quantitative exercise, we restrict attention to stable equilibria selected by the previous-period policy state." 附录中详细说明网格搜索、多初始值、稳定性检查和稳健性。

### 7.8 推荐的基准建模强度

| 模块 | 是否需要 | 理由 |
|---|---|---|
| 地方政府目标函数 | 必须 | 解释本地收益和全国成本错位 |
| Markov-Nash equilibrium | 必须 | 正式刻画地方政策竞争 |
| Planner benchmark | 必须 | 核心比较是 decentralized vs planner |
| 多重均衡检查 | 应该有 | 保证数值稳健性 |
| 31 省高维动态博弈 | 不建议基准做 | 计算过重，容易失控 |
| Stackelberg 中央—地方博弈 | 不建议基准做 | 可作为扩展 |
| 完整财政竞争模型 | 不建议基准做 | 会偏离本文主线 |
