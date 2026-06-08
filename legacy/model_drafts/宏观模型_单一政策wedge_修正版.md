# 宏观模型政策设定修正版：单一政策 wedge、状态依赖 trade-off 与新能源汽车产业政策

## 文件用途

本文用于修正新能源汽车产业政策宏观模型中的政策设定。此前将地方产业政策拆分为多个具体工具，例如进入补贴、投资补贴、基础设施、研发支持、产业链协同和退出治理。这种写法虽然有政策研究意义，但不适合作为顶刊宏观模型的基准设定。

更适合的做法是：

> **在基准宏观模型中，将复杂的地方产业政策压缩为一个地区—部门层面的政策 wedge。**

该 wedge 代表地方政府对新能源汽车部门的有效扩张型支持，包括但不限于补贴、低价土地、产业基金、信贷支持、园区招商、税收优惠和投资便利。现实政策工具可以在实证和政策讨论中展开，但不应在基准模型中逐项进入。

---

# 一、核心修正

此前模型设定为政策工具向量：

```math
g_{r,t}
=
\left(
s^{entry}_{r,t},
s^{investment}_{r,t},
s^{infra}_{r,t},
s^{R\&D}_{r,t},
s^{coord}_{r,t},
s^{exit}_{r,t}
\right)
```

这个写法的问题是：

1. **政策维度过高**：多地区、两部门、异质性企业和动态产能已经足够复杂，再加入六个政策变量会使模型难以求解。
2. **识别和校准负担过重**：每个政策工具都需要独立识别其作用、成本和状态依赖收益。
3. **不像顶刊宏观模型**：顶刊宏观模型通常把复杂现实政策压缩为少数 wedge、tax、subsidy 或 transfer，而不是逐项列举政策工具。
4. **容易变成政策报告**：多政策工具列表适合政策讨论，不适合构成宏观模型的基准结构。
5. **理论纪律性不足**：若每个现实工具都进入模型，会使机制过多，主线不清晰。

因此，基准模型应改为：

```math
s_{r,t}
```

其中 `s_{r,t}` 是地区 `r` 在时期 `t` 对新能源汽车部门的有效产业政策 wedge。

---

# 二、基准模型中的政策变量

## 2.1 政策 wedge 的含义

设：

```math
s_{r,t} \geq 0
```

表示地方政府对新能源汽车部门的有效扩张型产业政策强度。

它不是某一个具体补贴，而是现实中多种地方支持政策的 reduced-form 总结，包括：

```text
财政补贴
低价土地
产业基金
政策性信贷
贷款贴息
园区招商
税收优惠
投资便利
地方采购
配套基础设施
```

这些具体工具不在基准模型中逐项出现，而是共同体现为新能源汽车部门面对的一个有效政策 wedge。

---

## 2.2 政策进入企业问题的方式

在基准模型中，政策 wedge 可以有两种进入方式。

### 方案 A：政策降低进入成本

```math
F^N_{r,t}
=
F^N_0
-
\phi_F s_{r,t}
```

其中：

| 符号 | 含义 |
|---|---|
| `F^N_{r,t}` | 地区 `r` 新能源汽车部门企业进入成本 |
| `F^N_0` | 无政策时的基准进入成本 |
| `s_{r,t}` | 地方产业政策 wedge |
| `\phi_F` | 政策降低进入成本的强度 |

该设定适合解释：

```text
企业进入
产业园区扩张
招商项目增加
新车型投放
整车厂和零部件企业进入
```

---

### 方案 B：政策降低资本成本

```math
R^N_{r,t}
=
R_t
-
\phi_K s_{r,t}
```

其中：

| 符号 | 含义 |
|---|---|
| `R^N_{r,t}` | 地区 `r` 新能源汽车部门面对的有效资本成本 |
| `R_t` | 全国资本回报或基准资本成本 |
| `s_{r,t}` | 地方产业政策 wedge |
| `\phi_K` | 政策降低资本成本的强度 |

该设定适合解释：

```text
投资扩张
产能建设
资本流入新能源汽车部门
资本边际回报下降
部门间资本错配
```

---

## 2.3 基准模型建议使用资本成本 wedge

对于一个目标定位为宏观 JMP 的模型，最推荐的基准设定是：

```math
R^N_{r,t}
=
R_t
-
\phi s_{r,t}
```

原因是：

| 设定 | 优点 | 缺点 |
|---|---|---|
| 进入成本 wedge | 更容易解释企业进入和产业园扩张 | 与总量资本错配联系略弱 |
| 资本成本 wedge | 直接连接 MPK、资本错配、产能投资和福利损失 | 对企业进入的解释较间接 |
| 两者同时进入 | 现实更丰富 | 参数过多、识别复杂、基准模型过重 |

因此，基准模型应优先采用：

> **一个地方产业政策 wedge，通过降低新能源汽车部门的有效资本成本，推动资本进入和产能扩张。**

进入成本 wedge 可以作为扩展或稳健性版本。

---

# 三、为什么不需要多个政策工具也能表达 trade-off？

你的核心思想是：

> 政策不是该不该存在，而是政策边际收益和边际成本是否随产业状态变化而变化。

这个思想不需要多个政策工具才能表达。一个政策 wedge 足够刻画状态依赖的 trade-off。

设产业状态为：

```math
Z_t
=
\left(
A^N_t,
H^N_t,
D^N_t,
MPK^N_t - MPK^O_t
\right)
```

其中：

| 状态变量 | 含义 |
|---|---|
| `A^N_t` | 新能源汽车部门技术能力 |
| `H^N_t` | 新能源汽车部门产能 |
| `D^N_t` | 新能源汽车有效需求 |
| `MPK^N_t - MPK^O_t` | 新能源汽车部门与其他部门的资本边际回报差异 |

政策的社会边际收益为：

```math
MB^{social}_{r,t}
=
\frac{\partial B(s_{r,t};Z_t)}{\partial s_{r,t}}
```

政策的社会边际成本为：

```math
MC^{social}_{r,t}
=
\frac{\partial C(s_{r,t};Z_t)}{\partial s_{r,t}}
```

社会规划者最优政策满足：

```math
MB^{social}_{r,t}
=
MC^{social}_{r,t}
```

当新能源汽车技术能力较低、市场尚未形成、产业链协同不足时，政策的社会边际收益较高；当总产能已经超过有效需求，且新能源汽车部门资本边际回报低于其他部门时，继续扩张型政策的社会边际成本上升。

因此，模型不是说：

```text
早期政策好，后期政策坏
```

而是说：

```text
政策 wedge 的边际收益和边际成本随产业状态变化。
```

---

# 四、王勇文章在模型中的位置

王勇等关于中国电动汽车产业协同融合发展的文章，不应被机械映射为多个政策工具，而应被映射为模型中的**学习外部性、市场培育和产业链协同机制**。

也就是说，王勇文章提供的是模型中的正向机制基础：

```text
产业链协同
资源、信息和技术流动
需求牵引创新
上中下游共同升级
市场规模促进技术迭代
```

在模型中，这可以通过新能源汽车部门的生产率动态体现：

```math
A^N_{r,t+1}
=
(1-\delta_A)A^N_{r,t}
+
\psi (Y^N_{r,t})^\nu
```

其中：

| 符号 | 含义 |
|---|---|
| `A^N_{r,t}` | 地区 `r` 新能源汽车部门生产率或技术能力 |
| `Y^N_{r,t}` | 地区 `r` 新能源汽车部门产出 |
| `\psi` | 学习、市场培育和产业链协同外部性强度 |
| `\nu` | 学习外部性的非线性参数 |

这个设定综合表达：

```text
learning-by-doing
market creation
supply-chain coordination
industry-specific capability accumulation
```

不需要将这些机制分别建成多个政策工具。

---

# 五、过度产能和资源错配如何进入模型？

## 5.1 产能动态

新能源汽车部门产能为：

```math
H^N_{r,t}
```

其动态方程为：

```math
H^N_{r,t+1}
=
(1-\delta_H)H^N_{r,t}
+
I^H_{r,t}
```

其中：

| 符号 | 含义 |
|---|---|
| `H^N_{r,t}` | 地区 `r` 新能源汽车部门产能 |
| `I^H_{r,t}` | 产能投资 |
| `\delta_H` | 产能折旧率 |

产出受产能约束：

```math
Y^N_{r,t}
\leq
H^N_{r,t}
```

产能利用率为：

```math
u^N_{r,t}
=
\frac{Y^N_{r,t}}{H^N_{r,t}}
```

---

## 5.2 全国过剩产能

全国过剩产能定义为：

```math
OC_t
=
\max
\left\{
0,
\sum_r H^N_{r,t}
-
D^N_t
\right\}
```

其中：

| 符号 | 含义 |
|---|---|
| `OC_t` | 全国新能源汽车过剩产能 |
| `\sum_r H^N_{r,t}` | 全国新能源汽车总产能 |
| `D^N_t` | 全国新能源汽车有效需求 |

当地方政府竞争推动多地同时扩张产能，而需求没有同步增长时：

```math
\sum_r H^N_{r,t}
>
D^N_t
```

则出现过剩产能。

---

## 5.3 资源错配

资源错配可以用新能源汽车部门与其他部门的资本边际回报差异衡量：

```math
Misallocation_t
=
\sum_r
\left(
\log MPK^N_{r,t}
-
\log MPK^O_{r,t}
\right)^2
```

其中：

| 符号 | 含义 |
|---|---|
| `MPK^N_{r,t}` | 地区 `r` 新能源汽车部门资本边际产出 |
| `MPK^O_{r,t}` | 地区 `r` 其他部门资本边际产出 |

如果地方政策使资本过度进入新能源汽车部门，则可能出现：

```math
MPK^N_{r,t}
<
MPK^O_{r,t}
```

此时继续扩大新能源汽车部门投资会降低总量资源配置效率。

---

# 六、地方政府与社会规划者的区别

## 6.1 地方政府目标函数

地方政府选择政策 wedge：

```math
s_{r,t}
```

最大化本地目标：

```math
V^L_r
=
\sum_t \beta_g^t
\left[
\omega_Y Y^N_{r,t}
+
\omega_I I^H_{r,t}
+
\omega_E L^N_{r,t}
-
\frac{\kappa}{2}s_{r,t}^2
\right]
```

其中：

| 项 | 含义 |
|---|---|
| `Y^N_{r,t}` | 本地新能源汽车产值 |
| `I^H_{r,t}` | 本地新能源汽车产能投资 |
| `L^N_{r,t}` | 本地新能源汽车部门就业 |
| `\frac{\kappa}{2}s_{r,t}^2` | 地方政策成本 |
| `\omega_Y,\omega_I,\omega_E` | 地方政府对产值、投资和就业的权重 |

地方政府内部化的是：

```text
本地产值
本地投资
本地就业
本地税基
```

但没有完全内部化：

```text
全国性过剩产能
全国性资本错配
其他地区重复建设
跨地区财政竞争
```

因此，地方分散化政策均衡可能出现过度政策支持。

---

## 6.2 社会规划者目标函数

社会规划者最大化全国福利：

```math
W
=
\sum_t \beta^t
\left[
U(C_t)
+
\Omega_A A^N_t
-
\Omega_{OC}OC_t
-
\Omega_M Misallocation_t
-
\sum_r \frac{\kappa}{2}s_{r,t}^2
\right]
```

其中：

| 项 | 含义 |
|---|---|
| `U(C_t)` | 家庭消费福利 |
| `\Omega_A A^N_t` | 新能源汽车技术能力或学习外部性收益 |
| `\Omega_{OC}OC_t` | 过剩产能成本 |
| `\Omega_M Misallocation_t` | 资源错配成本 |
| `\sum_r \frac{\kappa}{2}s_{r,t}^2` | 政策财政成本 |

社会规划者内部化：

```text
消费者福利
学习外部性
产业链协同收益
财政成本
过剩产能
部门间资源错配
地区间重复建设
```

因此，社会规划者的政策选择满足：

```math
MB^{social}_{r,t}
=
MC^{social}_{r,t}
```

而地方政府选择通常满足的是：

```math
MB^{local}_{r,t}
=
MC^{local}_{r,t}
```

由于：

```math
MC^{local}_{r,t}
<
MC^{social}_{r,t}
```

可能得到：

```math
s^{D}_{r,t}
>
s^{P}_{r,t}
```

其中：

| 符号 | 含义 |
|---|---|
| `s^{D}_{r,t}` | 地方分散化均衡下的政策强度 |
| `s^{P}_{r,t}` | 社会规划者选择的政策强度 |

---

# 七、最终基准模型结构

基准模型应尽量简洁：

```text
Household:
    consumption-saving, owns capital and firms

Regions:
    r = 1,...,R

Sectors:
    NEV and Other manufacturing

Firms:
    produce with capital and labor
    face sector-region productivity
    invest in NEV capacity
    respond to local policy wedge

Local governments:
    choose one policy wedge s_{r,t}
    care about local NEV output, investment, employment
    do not fully internalize national overcapacity and capital misallocation

Central planner:
    internalizes national welfare, learning externality,
    idle capacity, policy cost, and misallocation

Equilibrium:
    decentralized policy equilibrium vs planner allocation

Quantification:
    match policy-investment elasticity,
    capacity utilization,
    MPK dispersion,
    demand elasticity,
    fiscal cost,
    learning-by-doing

Counterfactuals:
    no local policy competition
    centralized optimal policy
    subsidy cap
    faster exit / lower expansionary wedge
```

---

# 八、如何表达 state-contingent trade-off？

你可以这样写：

> 本文不将产业政策设定为固定地“有效”或“无效”。产业政策的福利效应取决于产业状态。地方政策 wedge 一方面扩大新能源汽车产出，并通过学习效应、市场培育和产业链协同提高未来生产率；另一方面，它也推动资本和产能继续流入新能源汽车部门。当产业处于技术积累和市场形成阶段时，政策的社会边际收益可能较高；当总产能超过有效需求，或新能源汽车部门资本边际产出低于其他部门时，继续提高政策 wedge 会加剧产能闲置和资本错配。问题不是产业政策是否应该存在，而是地方分散化政策竞争是否导致政策强度偏离状态依赖的社会最优水平。

英文可写为：

> This paper models local industrial policy as a region-sector-specific wedge that lowers the effective capital cost in the NEV sector. The wedge captures a bundle of expansionary local policies, including subsidies, land support, credit support, industrial funds, and investment facilitation. The key trade-off is state-contingent. The wedge raises NEV activity and generates learning-by-doing and supply-chain coordination externalities, but it also encourages capital accumulation in the NEV sector. When aggregate capacity exceeds effective demand or the marginal product of capital in NEV falls below that in the outside sector, decentralized local policies generate overcapacity and aggregate misallocation. The issue is not whether industrial policy is always good or bad, but whether decentralized local governments choose policy intensity consistent with the state-contingent social optimum.

---

# 九、扩展版本：最多两个政策 wedge

如果后续确实需要区分政策类型，可以在扩展模型中最多拆成两个 wedge：

```math
s^E_{r,t},\quad s^P_{r,t}
```

其中：

| 符号 | 含义 |
|---|---|
| `s^E_{r,t}` | 扩张型政策 wedge：降低资本成本、促进进入和产能扩张 |
| `s^P_{r,t}` | 生产率型政策 wedge：提高生产率、学习、基础设施和协同 |

对应：

```math
R^N_{r,t}
=
R_t
-
\phi_E s^E_{r,t}
```

```math
A^N_{r,t+1}
=
(1-\delta_A)A^N_{r,t}
+
\psi (Y^N_{r,t})^\nu
+
\phi_P s^P_{r,t}
```

但这应放在扩展部分，而不是基准模型。基准模型只需要一个 wedge：

```math
s_{r,t}
```

这样模型更干净，也更接近宏观顶刊的写法。

---

# 十、修正后的论文核心句

建议将论文核心句写成：

> **This paper studies a state-contingent trade-off in decentralized industrial policy. I model local industrial policy as a region-sector-specific wedge that lowers the effective capital cost in the NEV sector. The wedge captures a bundle of local expansionary policies. It raises NEV activity and generates learning-by-doing and supply-chain coordination externalities, but it also encourages capital accumulation in the NEV sector. Since local governments internalize local output, investment, and employment gains but not national overcapacity and capital misallocation, decentralized policy competition can lead to excessive policy intensity relative to the social optimum. The model quantifies when the dynamic gains from industrial upgrading are outweighed by the aggregate costs of overcapacity and misallocation.**

中文对应为：

> **本文研究分散化产业政策中的状态依赖型权衡。模型将地方产业政策设定为一个地区—部门层面的政策 wedge，它降低新能源汽车部门的有效资本成本。该 wedge 综合刻画地方补贴、土地支持、信贷支持、产业基金和投资便利等扩张型政策。它一方面扩大新能源汽车部门活动，并通过学习效应和产业链协同提高未来生产率；另一方面，它也推动资本继续流入新能源汽车部门。由于地方政府内部化本地产值、投资和就业收益，但不完全内部化全国性产能过剩和资本错配成本，地方分散化政策竞争可能导致政策强度高于社会最优水平。模型量化产业升级的动态收益在何种条件下会被产能过剩和资源错配的总量成本所抵消。**

---

# 十一、最终判断

基准宏观模型不应写成多政策工具列表。

最终应采用：

```math
s_{r,t}
```

一个政策 wedge。

它通过：

```math
R^N_{r,t}
=
R_t
-
\phi s_{r,t}
```

影响新能源汽车部门资本成本、投资和产能。

同时通过：

```math
A^N_{r,t+1}
=
(1-\delta_A)A^N_{r,t}
+
\psi (Y^N_{r,t})^\nu
```

体现学习、市场培育和产业链协同的动态收益。

负向机制通过：

```math
OC_t
=
\max
\left\{
0,
\sum_r H^N_{r,t}
-
D^N_t
\right\}
```

和：

```math
Misallocation_t
=
\sum_r
\left(
\log MPK^N_{r,t}
-
\log MPK^O_{r,t}
\right)^2
```

体现产能过剩和资本错配。

这比多政策工具向量更严谨、更简洁，也更接近顶刊宏观模型的设定方式。
