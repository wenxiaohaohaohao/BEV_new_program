# 模型模块审计与文献来源纪律：NEV 地方分散化产业政策项目

## 0. 核心判断

下一步不是自由搭建一个新模型，而是做一个 **provenance-controlled modular model extraction**。

也就是说，本项目应当以现有文献中的可验证模块为基础，逐一抽取模型中需要的部分，删除不需要或不适合本项目的部分，然后再将这些模块组合到中国新能源汽车（NEV）地方分散化产业政策场景中。

关键约束是：

> **No uncited primitive.**  
> 基准模型中的 primitive objects 不能自创。包括主体、状态变量、政策 wedge、产能动态、价格机制、福利项和反事实对象。

但需要注意：完全不允许任何连接也不现实。本文的创新本来就是将已有模块连接到 NEV 场景中。因此，更严格、更可执行的原则是：

> **Primitive 不自创；bridge 明确标注为本文扩展。**

---

## 1. 不能“平行堆叠”，必须有母体模型

模型母体应当是：

> **Chen–Liu–Song, _Decentralized Industrial Policy_**

原因是本文的核心问题是地方分散化政策与中央协调之间的偏离。Chen–Liu–Song 正是研究地方产业政策和全国福利之间的错位，推导了 local intervention index 和 central intervention index，并强调地方政策可能因 local welfare 与 aggregate welfare 不一致而削弱总体产业政策效果。

因此，本项目的模型主干应当是：

\[
\zeta^{L}_{nk} \neq \zeta^{C}_{nk}
\]

本文的工作是在这个结构基础上改造成 NEV 动态版本：

\[
\zeta^{L,NEV}_{rt}(Z_t) \neq \zeta^{C,NEV}_{rt}(Z_t)
\]

其中，\(Z_t\) 不是任意定义的“早期/后期”阶段，而是从动态产业模型中继承来的产能、需求、价格和资本回报状态。

---

## 2. 每篇文献只能抽取它真正提供的模块

| 文献 | 可以抽取 | 不能抽取 |
|---|---|---|
| **Chen–Liu–Song** | 多地区；local vs central planner；local/central intervention index；policy platform；财政自主权异质性 | 不能从它抽取 NEV 生命周期、产能动态、价格战 |
| **Barwick–Kalouptsidi–Zahur** | 产业政策工具；进入；投资；产能闲置；动态行业福利反事实 | 不能从它抽取地方政府分散化竞争 |
| **Kalouptsidi 2014** | time-to-build；产能投资滞后；需求不确定；价格反应 | 不能从它抽取产业政策福利或地方政府目标 |
| **Klepper 1996** | 产品生命周期中的进入、退出、创新和市场结构规律 | 不能从它抽取地方政策或福利反事实 |

其中：

- **Chen–Liu–Song** 用于支撑地方分散化政策与中央协调之间的 welfare-return gap；
- **Barwick–Kalouptsidi–Zahur** 用于支撑产业政策如何影响企业进入、投资、产能闲置和福利；
- **Kalouptsidi 2014** 用于支撑产能积累、需求吸收与价格反应；
- **Klepper 1996** 用于支撑产业生命周期中的进入、退出、创新和市场结构变化。

---

## 3. 建议的“抽取—删除—保留”清单

### A. 从 Chen–Liu–Song 保留

保留：

\[
\zeta^L_{nk}
=
\text{local welfare gain per fiscal dollar}
\]

\[
\zeta^C_{nk}
=
\text{aggregate welfare gain per fiscal dollar}
\]

保留：

\[
Gap_{nk}
=
\zeta^L_{nk}
-
\zeta^C_{nk}
\]

解释：

- \(\zeta^L\) 是地方政府视角下产业政策支出的 bang-for-the-buck；
- \(\zeta^C\) 是中央或全国福利视角下的 bang-for-the-buck；
- 二者之差刻画 local-central policy misalignment。

删除或弱化：

- 完整的 42 行业 × 31 省投入产出网络；
- 只通过 SOE/SEZ 度量政策的原始经验设计；
- import substitution / terms-of-trade 机制，除非 NEV 主模型确实需要。

可借鉴但需映射：

- policy platform 思路。Chen–Liu–Song 用 SEZ 和 SOE 作为政策平台；NEV 可以对应为新能源汽车产业园、地方产业基金、地方国资平台、土地优惠、信贷支持和招商项目。

---

### B. 从 Barwick–Kalouptsidi–Zahur 保留

保留：

\[
Policy \rightarrow Entry
\]

\[
Policy \rightarrow Investment
\]

\[
Investment \rightarrow Capacity
\]

\[
Capacity \rightarrow IdleCapacity
\]

\[
Policy \rightarrow WelfareCounterfactual
\]

保留政策工具分类，但不要全部放入基准模型：

| Barwick et al. 中的政策工具 | NEV 中的对应 |
|---|---|
| production subsidy | 销售/生产补贴，地方订单支持 |
| investment subsidy | 产业基金、低息贷款、低价土地、扩产支持 |
| entry subsidy | 招商引资、园区准入、固定成本补贴 |
| consolidation policy | 兼并重组、退出治理、反重复建设 |

基准模型中最多保留一个 composite expansionary policy wedge：

\[
s_{rt}
\]

不能一上来写四五个政策工具，否则模型会变成政策清单，难以求解和识别。

---

### C. 从 Kalouptsidi 2014 保留

保留动态产能积累：

\[
H_{t+1}
=
(1-\delta_H)H_t
+
I_t
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

删除：

- 二手船价格识别 value function；
- 船舶 resale market；
- shipping-specific scrappage 和 fleet age 结构；
- 完整 dynamic IO 估计技术。

NEV 第一版只需要它的经济机制：

> 产能投资今天决定未来供给，而未来需求不一定同步增长，因此价格和利用率会调整。

---

### D. 从 Klepper 1996 保留

保留生命周期语言：

\[
Entry
\rightarrow
Competition
\rightarrow
Exit/Consolidation
\rightarrow
MarketStructure
\]

保留三个 stylized facts：

1. 产业早期进入多、试错多；
2. 成长期竞争和创新加速；
3. 成熟期退出、集中、市场结构变化。

删除：

- Klepper 的具体创新能力模型；
- 不要把它当作 welfare model；
- 不要从它推导地方政府政策。

Klepper 只能用于解释为什么本文使用 **over the industry life cycle** 这个表述，不是政策模型来源。

---

## 4. 下一步真正应该做的工作

### Step 1：建立模型来源台账

每个模型对象都必须有一行 provenance。

| 模型对象 | 你的符号 | 来源文献 | 是否进入基准模型 |
|---|---|---|---|
| 地方政策回报 | \(\zeta^L\) | Chen–Liu–Song | 是 |
| 中央政策回报 | \(\zeta^C\) | Chen–Liu–Song | 是 |
| local-central gap | \(\zeta^L-\zeta^C\) | Chen–Liu–Song | 是 |
| 政策平台 | policy platform | Chen–Liu–Song | 是，实证部分 |
| 政策影响进入 | \(Entry(s)\) | Barwick et al. | 是 |
| 政策影响投资 | \(I(s)\) | Barwick et al. | 是 |
| 产能动态 | \(H_{t+1}\) | Kalouptsidi 2014 / Barwick et al. | 是 |
| 需求吸收 | \(D(P)\) | Kalouptsidi 2014 | 是 |
| 价格压缩 | \(P=\mathcal D(Q,H)\) | Kalouptsidi 2014 / 2018 | 是 |
| 生命周期语言 | entry–exit–innovation over maturity | Klepper 1996 | 是，叙事 |
| MPK gap | \(MPK^N-MPK^O\) | Hsieh–Klenow / misallocation literature | 是 |
| 随机 DSGE 冲击 | \(\varepsilon_t\) | 暂无必要 | 否 |
| 供应链账期 | \(T_{sjt}\) | 暂无当前核心来源 | 暂不进基准 |

---

### Step 2：写“保留/删除/改造”文件

每篇文章写三栏：

```text
1. I keep:
2. I drop:
3. I adapt:
```

例如 Barwick–Kalouptsidi–Zahur：

```text
I keep:
- industrial policy affects entry, investment, production, and capacity
- different policy tools have different welfare consequences
- policy can generate both industrial rise and idle capacity

I drop:
- global shipbuilding market details
- shipyard-specific order book structure
- full dynamic IO estimation

I adapt:
- national shipbuilding policy → local NEV expansionary policy
- shipyard entry/investment → NEV firm entry/capacity expansion
- idle capacity → NEV low utilization and duplicated capacity
```

---

### Step 3：只搭一个最小合成模型

第一版合成模型只需要：

\[
s_{rt}
\rightarrow
Entry_{rt}
\rightarrow
I^H_{rt}
\rightarrow
H^N_{r,t+1}
\rightarrow
P_t^N,
 u_t^N,
 \pi_t^N,
 MPK_t^N
\rightarrow
W^D-W^{CP}
\]

其中：

- \(s_{rt}\)：来自 Chen–Liu–Song 的地方政策；
- \(Entry/I/H\)：来自 Barwick et al. 和 Kalouptsidi；
- \(P/u/\pi\)：来自 Kalouptsidi；
- \(W^D-W^{CP}\)：来自 Chen–Liu–Song 的 local-central welfare gap；
- 生命周期解释：来自 Klepper。

---

## 5. 必须避免的错误

### 错误 1：把四篇文章机械拼成一个巨型模型

不要做：

```text
Chen 的多地区 IO 网络
+ Barwick 的完整动态行业模型
+ Kalouptsidi 的完整估计框架
+ Klepper 的创新生命周期模型
```

这会不可解，也不是一篇清楚的论文。

---

### 错误 2：抽取后随意增加新状态变量

例如：

\[
LearningState,
SelectionState,
InvolutionState
\]

如果没有直接来源，不要进入基准模型。

---

### 错误 3：自创福利惩罚项

不要随便写：

\[
W=U(C)+\Omega_A A-\Omega_H Idle-\Omega_M Misallocation
\]

除非能够说明这些项来自哪篇文献。基准福利最好通过：

- 消费者剩余；
- 企业利润；
- 财政成本；
- 闲置产能资源成本；
- MPK gap / output loss；

来构造。

---

### 错误 4：把 “Klepper 生命周期” 当作政策理论

Klepper 给的是生命周期规律，不是政策干预模型。政策模块必须来自 Chen–Liu–Song、Barwick et al. 或 Kalouptsidi。

---

## 6. 最严格的项目规则

建议写在 model note 第一页：

> **Model discipline.** Every primitive in the baseline model is taken from an existing literature. The decentralized policy block follows Chen–Liu–Song. The dynamic industry block follows Barwick–Kalouptsidi–Zahur and Kalouptsidi. The industry-life-cycle interpretation follows Klepper. The paper’s contribution is not to introduce new primitives, but to combine these existing modules to study China’s NEV industry, where decentralized local policy affects entry, capacity accumulation, prices, utilization, and aggregate misallocation over the industry life cycle.

中文版本：

> **模型纪律。** 基准模型中的每一个 primitive 都必须来自已有文献。地方分散化政策模块来自 Chen–Liu–Song；动态行业政策模块来自 Barwick–Kalouptsidi–Zahur 和 Kalouptsidi；产业生命周期解释来自 Klepper。本文的贡献不是自创新的模型原件，而是将这些已有模块组合到中国新能源汽车产业场景中，研究地方分散化政策如何在产业生命周期中影响企业进入、产能积累、价格、产能利用率和总量资源错配。

---

## 7. 推荐给 Codex 的执行指令

```text
请根据本文档对当前工作区中的模型 notes 进行审计和修订。

核心原则：
1. 基准模型中的每一个 primitive 必须有明确文献来源。
2. 地方分散化政策模块必须以 Chen–Liu–Song 为基础。
3. 动态行业模块只能从 Barwick–Kalouptsidi–Zahur 和 Kalouptsidi 2014/2018 中抽取。
4. 产业生命周期语言只能来自 Klepper 1996，不得将 Klepper 当作政策福利模型。
5. 删除没有文献来源的自创状态变量，例如 LearningState、SelectionState、InvolutionState 等，除非它们被重新定义为来自文献的可观测状态或模型对象。
6. 删除任意福利惩罚项，例如没有来源的 \(\Omega_A, \Omega_H, \Omega_M\) 设定。福利应尽量通过消费者剩余、企业利润、财政成本、闲置产能资源成本和 MPK/output loss 来表达。
7. 基准模型中只保留一个 composite expansionary policy wedge \(s_{rt}\)。多政策工具只允许作为 extension 或 policy discussion。
8. 将所有模型对象整理成 provenance table：模块、来源、原文对象、NEV 映射、是否进入基准模型、是否需要改动。
9. 所有不同意本文档原则的旧内容应删除或降级为 extension/conjecture。
10. 最终保持工作区 notes 与本文档统一。
```

---

## 8. 最终判断

下一步不是“自由搭模型”，而是：

> **做模型模块审计。**

具体产出应该是一张表：

| 模块 | 来源 | 原文对象 | NEV 映射 | 是否进入基准 | 是否需要改动 |
|---|---|---|---|---|---|

只有通过这张表审计的对象，才能进入基准模型。

这样做的好处是：

1. 每个模型部分都有文献来源；
2. 不会自创状态变量；
3. 不会模型膨胀；
4. 能清楚告诉 referee 每个模块来自哪里；
5. 创新被限定在“组合与应用”，而不是随意建模。

一句话：

> **是的，应该抽取、删除、叠加；但必须是带 provenance 的模块化抽取，而不是机械拼接。**
