# NEV 项目：基准模型变量收紧与文献来源纪律

## 0. 核心结论

现在应当明确收紧模型纪律：**基准模型中不再构造 `LearningState`、`SelectionState`、`InvolutionState`、`CapacityPressureState`、`MisallocationState` 这类模糊状态变量。**

这些概念最多只能作为叙事标签、机制描述或 empirical discussion，不能作为模型 primitive，也不能进入：

- 均衡定义；
- 福利函数；
- planner 问题；
- decentralized equilibrium；
- counterfactual；
- calibration moments。

现在的基准模型必须切换到：

> **provenance-controlled baseline model**  
> 即每一个进入模型的变量、状态、政策 wedge、福利项和反事实对象，都必须能追溯到已有参考文献中的对象。

---

## 1. 新模型纪律：No Uncited Primitive

基准模型采用如下纪律：

> **No uncited primitive.**  
> 模型中每一个 primitive object 都必须来自已有文献，或者是已有文献对象在 NEV 场景中的直接映射。没有文献来源的对象，不进入基准模型。

这里的 primitive object 包括：

- 主体；
- 状态变量；
- 政策 wedge；
- 产能动态；
- 需求函数；
- 价格机制；
- 福利对象；
- 反事实对象；
- calibration moments。

本文的创新不是自创新的状态变量，而是：

> **将已有文献中的地方分散化政策模块、动态产业政策模块、产能—需求—价格模块和资源错配模块组合到中国 NEV 行业。**

---

## 2. 哪些变量可以进入基准模型？

### 2.1 来自 Chen–Liu–Song 的地方分散化政策模块

保留以下对象：

\[
\zeta^L_{nk}
\]

\[
\zeta^C_{nk}
\]

分别表示：

- local intervention index：地方政府视角下一单位财政支出的本地福利收益；
- central intervention index：中央或全国视角下一单位财政支出的 aggregate welfare 收益。

在 NEV 项目中可写成：

\[
\zeta^{L,NEV}_{rt}
\]

\[
\zeta^{C,NEV}_{rt}
\]

并定义 local-central gap：

\[
Gap^{NEV}_{rt}
=
\zeta^{L,NEV}_{rt}
-
\zeta^{C,NEV}_{rt}
\]

这个 gap 是地方分散化政策偏离中央协调 benchmark 的核心对象。

可以保留的经验概念：

- policy platform；
- local vs central policy platform；
- fiscal autonomy；
- 地方财政自主权越高，地方政府越可能按照 local return 实施政策。

这些可以用于 NEV 中的：

- 新能源汽车产业园；
- 地方产业基金；
- 地方国资平台；
- 地方城投参与项目；
- 土地优惠；
- 信贷支持；
- 招商项目；
- 规划产能公告。

---

### 2.2 来自 Barwick–Kalouptsidi–Zahur 的动态产业政策模块

保留以下对象：

\[
Entry_{rt}
\]

\[
Investment_{rt}
\]

\[
Capacity_{rt}
\]

\[
IdleCapacity_{rt}
\]

\[
PolicyWedge_{rt}
\]

对应机制为：

\[
Policy
\rightarrow
Entry
\rightarrow
Investment
\rightarrow
Capacity
\rightarrow
IdleCapacity/Welfare
\]

在 NEV 中映射为：

\[
s_{rt}
\rightarrow
Entry^{NEV}_{rt}
\rightarrow
I^{H,NEV}_{rt}
\rightarrow
H^{NEV}_{r,t+1}
\rightarrow
u^N_t,
P^N_t,
\pi^N_t,
W
\]

基准模型中不应引入多个具体政策工具，而是保留一个 composite expansionary policy wedge：

\[
s_{rt}
\]

它代表地方扩张型产业政策，包括补贴、土地、信贷、产业基金、园区和招商便利等。

---

### 2.3 来自 Kalouptsidi 2014 的产能—需求—价格模块

保留动态产能积累：

\[
H_{t+1}
=
(1-\delta_H)H_t+I_t
\]

保留 time-to-build / adjustment friction 逻辑：

\[
I_t
\rightarrow
H_{t+\ell}
\]

保留需求吸收和价格反应：

\[
Q_t=D_t(P_t)
\]

\[
P_t=\mathcal{D}(Q_t,H_t)
\]

在 NEV 中的含义是：

> 当地方政府和企业在当前时期同时扩产，而未来需求增长不能同步吸收产能时，未来会出现低利用率、价格压缩和利润下降。

基准模型不需要照搬完整 shipping dynamic IO estimation，只需要保留经济机制：

> **产能投资今天决定未来供给，但未来需求不一定同步增长，因此价格、利用率和利润内生调整。**

---

### 2.4 来自 Hsieh–Klenow / misallocation 文献的资源错配模块

保留：

\[
MPK_t^N-MPK_t^O
\]

或者：

\[
MRPK,
\quad
TFPR,
\quad
TFP\ loss
\]

用于将 NEV 产能问题上升为宏观资源错配问题。

在模型中，若：

\[
MPK_t^N<MPK_t^O
\]

但地方政策继续推动资本和产能流入 NEV：

\[
K_t^N\uparrow,
\quad
H_t^N\uparrow
\]

则说明存在 aggregate misallocation。

---

### 2.5 来自 Klepper 的产业生命周期解释

Klepper 只用于保留 industry life cycle 的语言和经验规律：

```text
entry, exit, growth, innovation, and market structure evolve over the product life cycle
```

可以用于解释：

- 早期进入和试错；
- 成长期扩张和竞争；
- 成熟期退出、集中和市场结构变化；
- 创新结构随产业成熟变化。

但不能从 Klepper 直接构造模型变量，例如：

\[
LearningState_t
\]

\[
InvolutionState_t
\]

\[
SelectionState_t
\]

这些不应进入基准模型。

---

## 3. 哪些变量要删除或降级？

| 变量或概念 | 处理方式 |
|---|---|
| `LearningState` | 从基准模型删除；若需要学习机制，用文献中的 \(A_t\)、cumulative output、learning-by-doing |
| `SelectionState` | 从基准模型删除；若需要选择机制，用 entry/exit/productivity decomposition，放在 empirical mechanism |
| `InvolutionState` | 从基准模型删除；只能作为中文政策叙事标签 |
| `CapacityPressureState` | 从基准模型删除；改用 \(H_t/D_t\)、\(u_t=Q_t/H_t\)、idle capacity |
| `MisallocationState` | 从基准模型删除；改用 \(MPK^N-MPK^O\)、MRPK dispersion、TFPR dispersion |
| `ScaleCompetitionState` | 从基准模型删除；改用 entry、number of firms、price、markup、exit |

这些变量之前可以帮助思考机制，但现在进入严格建模阶段，必须删除或降级。

---

## 4. 基准模型最终应保留的最小对象

基准模型只保留以下对象：

### 政策对象

\[
s_{rt}
\]

地方 NEV 扩张型政策 wedge。

---

### 地方与中央政策回报

\[
\zeta^{L,NEV}_{rt}
\]

\[
\zeta^{C,NEV}_{rt}
\]

\[
Gap^{NEV}_{rt}
=
\zeta^{L,NEV}_{rt}
-
\zeta^{C,NEV}_{rt}
\]

---

### 进入、投资和产能

\[
Entry_{rt}
\]

\[
I^H_{rt}
\]

\[
H^N_{rt}
\]

---

### 需求、价格和利用率

\[
D_t^N(P_t)
\]

\[
P_t^N
\]

\[
u_t^N=
\frac{Q_t^N}{H_t^N}
\]

---

### 资本错配

\[
MPK_t^N-MPK_t^O
\]

---

### 福利比较

\[
W^D-W^{CP}
\]

其中：

- \(D\)：decentralized local implementation；
- \(CP\)：implementable centralized coordination。

---

## 5. 产业生命周期如何保留？

产业生命周期不再作为一组自造状态变量进入模型。它应被解释为已有文献对象的动态演化：

\[
s_{rt}
\rightarrow
Entry_{rt}
\rightarrow
I^H_{rt}
\rightarrow
H^N_{r,t+1}
\rightarrow
u_t^N,
P_t^N,
\pi_t^N,
MPK_t^N-MPK_t^O
\]

这条链条就是基准模型中的 industry life cycle block。

换言之：

> **产业生命周期不是一个独立变量，而是政策、进入、投资、产能、需求、价格、利润和资本回报随时间共同演化的路径。**

---

## 6. 建议对 Codex 的修改指令

```text
Update the model notes to remove all self-created state variables such as LearningState, SelectionState, InvolutionState, CapacityPressureState, and MisallocationState from the baseline model.

Replace them with provenance-controlled objects drawn directly from the reference literature:

1. From Chen–Liu–Song:
   - local intervention index ζ^L
   - central intervention index ζ^C
   - local-central gap ζ^L - ζ^C
   - policy platform and fiscal autonomy as empirical implementation concepts

2. From Barwick–Kalouptsidi–Zahur:
   - policy affects entry
   - policy affects investment
   - investment affects capacity
   - policy can generate idle capacity and welfare consequences

3. From Kalouptsidi 2014:
   - capacity law of motion H_{t+1} = (1-δ_H)H_t + I_t
   - demand absorption D(P)
   - price response to capacity and demand

4. From Hsieh–Klenow / misallocation literature:
   - MPK/MRPK gaps
   - TFPR dispersion
   - aggregate TFP or welfare loss from misallocation

5. From Klepper:
   - use only as industry life-cycle interpretation, not as a source of model primitives.

The baseline model should contain only variables with clear literature provenance. Any additional labels such as “learning state,” “selection state,” or “involution state” should be moved to narrative discussion or removed.
```

---

## 7. 模型纪律写入工作区的推荐段落

```text
Model discipline. Every primitive in the baseline model must come from an existing literature or be a direct mapping of an object in that literature to the NEV setting. The decentralized policy block follows Chen–Liu–Song. The dynamic industrial-policy block follows Barwick–Kalouptsidi–Zahur. The capacity-demand-price block follows Kalouptsidi. The industry-life-cycle interpretation follows Klepper. The misallocation block follows Hsieh–Klenow and related macro misallocation literature. The paper’s contribution is not to introduce new primitive state variables, but to combine these existing modules to study China’s NEV industry, where decentralized local policy affects entry, capacity accumulation, prices, utilization, and aggregate misallocation over the industry life cycle.
```

中文版本：

```text
模型纪律。基准模型中的每一个 primitive 都必须来自已有文献，或者是已有文献对象在 NEV 场景中的直接映射。地方分散化政策模块来自 Chen–Liu–Song；动态产业政策模块来自 Barwick–Kalouptsidi–Zahur；产能—需求—价格模块来自 Kalouptsidi；产业生命周期解释来自 Klepper；资源错配模块来自 Hsieh–Klenow 及相关宏观错配文献。本文的贡献不是引入新的 primitive state variables，而是将这些已有模块组合到中国新能源汽车产业场景中，研究地方分散化政策如何在产业生命周期中影响企业进入、产能积累、价格、产能利用率和总量资源错配。
```

---

## 8. 最终判断

现在应从“概念状态变量”切换到“文献来源变量”。

不再使用：

```text
LearningState / SelectionState / InvolutionState / CapacityPressureState / MisallocationState
```

改为使用：

```text
ζ^L, ζ^C, s_rt, Entry, Investment, Capacity, IdleCapacity, D(P), P, utilization, MPK gap, W^D - W^CP
```

最终原则是：

> **模型中只放文献里已经有的对象；NEV 项目的创新是模块组合和场景应用，而不是自创新状态变量。**
