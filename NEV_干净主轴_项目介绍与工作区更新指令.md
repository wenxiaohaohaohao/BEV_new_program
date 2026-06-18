# NEV 项目干净主轴：项目介绍与工作区更新指令

## 0. 文件目的

本文件用于统一当前 NEV 项目的最新主轴，并作为 Codex 更新工作区文件的依据。当前项目已经从较宽的“地方政策竞争—内卷—价格战—供应链—创新”叙事，收紧为一个更干净的宏观产业政策模型：

> **地方分散化产业政策如何通过部分不可逆的耐用品产能积累，在需求吸收不足时造成动态产能错配和地方—中央福利回报偏离。**

Codex 更新工作区时，应以本文为准：删除或降级此前不再采用的宽泛机制、模糊状态变量和过重扩展模块，保持所有模型 primitive 均有明确文献来源。

---

## 1. 当前最干净的项目标题

建议主标题：

> **Decentralized Industrial Policy and Dynamic Capacity Misallocation: Evidence from China’s NEV Industry**

备选标题：

> **Coordinating Local Industrial Policy in a Strategic Industry: Evidence from China’s NEV Sector**

此前标题 **Decentralized Industrial Policy over the Industry Life Cycle: Creative Destruction or Aggregate Misallocation?** 可以作为早期 broader framing，但若目标是 EJ / ReStat / AEJ Policy 的干净设定，应弱化 “creative destruction” 作为标题核心，因为它会要求完整的企业进入退出、生产率筛选和创新机制。

---

## 2. 一句话主轴

> 地方政府按本地回报支持 NEV 扩张；但 NEV 产能是部分不可逆的耐用品状态变量，投资具有建设滞后。当多地同时扩张导致未来产能相对有效需求过高时，中央社会回报下降，而地方本地回报仍可能为正，因此地方分散化政策产生动态产能错配和部门间资本错配。

更正式地说：

\[
s_{rt}
\rightarrow
I^H_{rt}
\rightarrow
H^N_{r,t+1}
\rightarrow
D_t^N(P_t^N),\ u_t^N,\ P_t^N,\ MPK_t^N-MPK_t^O
\rightarrow
\zeta^{L,NEV}_{rt}-\zeta^{C,NEV}_{rt}
\rightarrow
W^D-W^{CP}.
\]

---

## 3. 研究问题

本文不问：

> 中国 NEV 产业政策是否成功？

也不问：

> 有产业政策是否比没有产业政策好？

本文问：

> 当产业政策由地方政府分散化执行时，地方政府按本地回报推动 NEV 进入和产能投资。由于产能具有部分不可逆性和建设滞后，多地同时扩张可能使未来产能相对需求过高。此时中央社会回报下降，但地方回报仍可能为正。由此产生的地方—中央回报差距如何影响动态产能错配和 welfare？

核心反事实不是 policy vs no policy，而是：

\[
D \quad \text{vs.} \quad CP
\]

其中：

- \(D\)：decentralized local implementation，地方分散化实施；
- \(CP\)：implementable centralized coordination，可实施中央协调 benchmark；
- 核心福利对象：

\[
W^D-W^{CP}.
\]

---

## 4. 主要理论锚点与模块来源

本项目必须采用 **provenance-controlled modular extraction**。每一个进入基准模型的 primitive 必须来自已有文献，不能自创模糊状态变量。

### 4.1 Chen–Liu–Song：地方—中央政策回报偏离

**作用：第一理论锚点。**

从 Chen–Liu–Song 保留：

\[
\zeta^L_{nk},\quad \zeta^C_{nk}
\]

其中：

- \(\zeta^L_{nk}\)：local intervention index，地方政府视角下地区 \(n\)、行业 \(k\) 的产业政策每一单位财政支出的本地福利回报；
- \(\zeta^C_{nk}\)：central intervention index，全国或中央视角下同一政策每一单位财政支出的 aggregate welfare return。

NEV 项目中映射为：

\[
\zeta^{L,NEV}_{rt},\quad \zeta^{C,NEV}_{rt}
\]

以及：

\[
Gap^{NEV}_{rt}=\zeta^{L,NEV}_{rt}-\zeta^{C,NEV}_{rt}.
\]

如果：

\[
\zeta^{L,NEV}_{rt}>0\quad \text{but}\quad \zeta^{C,NEV}_{rt}\leq 0,
\]

则地方继续扩张是本地理性的，但从全国视角已经没有正的边际社会回报。

**从 Chen–Liu–Song 借鉴的实证思路：policy platform approach。**

由于产业政策很多时候并不以显性补贴形式出现，不能只依赖政策文本计数。Chen–Liu–Song 使用 SEZ 和 SOE 等 policy platforms 来识别中央和地方产业政策强度。NEV 项目应沿用这一测度原则。

---

### 4.2 Aggregate Demand and Irreversible Investment：部分不可逆固定资本、需求吸收和 MRPK dispersion

**作用：产能不可逆与需求吸收模块。**

从该文保留：

- fixed capital is partially irreversible；
- 投资形成固定资本存量；
- 固定资本不能无成本快速缩减；
- 需求下降或需求吸收不足会降低企业收入回报；
- 不可逆资本与需求不足会导致 MRPK dispersion / misallocation。

NEV 中映射为：

\[
H^N_{r,t+1}=(1-\delta_H)H^N_{r,t}+I^H_{rt},\quad I^H_{rt}\geq 0 \ \text{or}\ \delta_H \text{ small}.
\]

含义：

> NEV 产能是部分不可逆的固定资本。建成产能不能无成本即时退出，只能通过折旧、停产、转用、重组或缓慢退出下降。

该文不应被完整照搬。基准模型不引入：

- working capital financial friction；
- endogenous default risk；
- bank pricing；
- hand-to-mouth households；
- full heterogeneous-firm recursive equilibrium。

这些可以作为 extension 或 future work。

---

### 4.3 Barwick–Kalouptsidi–Zahur：产业政策、进入、投资、产能闲置和福利

**作用：产业政策—进入—投资—产能模块。**

从该文保留：

\[
Policy\rightarrow Entry,
\]

\[
Policy\rightarrow Investment,
\]

\[
Investment\rightarrow Capacity,
\]

\[
Capacity\rightarrow IdleCapacity,
\]

\[
Policy\rightarrow WelfareCounterfactual.
\]

NEV 中映射为：

- 地方扩张型 NEV 政策 \(s_{rt}\)；
- 企业进入 \(Entry_{rt}\)；
- 产能投资 \(I^H_{rt}\)；
- 产能存量 \(H^N_{r,t}\)；
- 低利用率 / 闲置产能；
- \(D\) vs \(CP\) welfare comparison。

基准模型不应复制完整 dynamic IO estimation。只保留经济机制和 counterfactual logic。

---

### 4.4 Hsieh–Klenow / misallocation literature：MPK / MRPK gap

**作用：将产能过剩提升为宏观资源错配。**

保留：

\[
MPK^N_t-MPK^O_t,
\]

或：

\[
MRPK,\quad TFPR,\quad TFP\ loss.
\]

核心判断：

> 如果 NEV 部门资本边际回报低于 outside sector，但地方政策仍继续推动资本和产能流入 NEV，则这是宏观资源错配，而不是单纯行业价格竞争。

---

### 4.5 Klepper：产业生命周期语言

**作用：叙事，不是模型 primitive 来源。**

Klepper 仅用于说明产业生命周期中 entry、exit、growth、innovation 和 market structure 会随产业成熟变化。不能从 Klepper 中抽取地方政府政策、福利函数或政策 wedge。

在基准模型中，不定义：

- `scale-competition stage`；
- `after success`；
- `LearningState`；
- `SelectionState`；
- `InvolutionState`。

产业生命周期由模型对象的动态路径体现，而不是外生分期。

---

## 5. 当前基准模型应保留的变量

### 5.1 地方政策变量

\[
s_{rt}
\]

含义：地区 \(r\) 在年份 \(t\) 的地方 NEV 扩张型产业政策 wedge。

它不是某一个具体补贴，而是地方政府推动 NEV 进入和产能扩张的政策平台强度。

### 5.2 地方—中央政策回报

\[
\zeta^{L,NEV}_{rt},\quad \zeta^{C,NEV}_{rt},\quad Gap^{NEV}_{rt}=\zeta^{L,NEV}_{rt}-\zeta^{C,NEV}_{rt}
\]

### 5.3 产能投资和产能存量

\[
I^H_{rt}
\]

\[
H^N_{r,t+1}=(1-\delta_H)H^N_{r,t}+I^H_{rt}
\]

### 5.4 需求吸收、价格和利用率

\[
D^N_t(P^N_t)
\]

\[
P^N_t
\]

\[
u^N_t=\frac{Q^N_t}{H^N_t}
\]

其中 \(H^N_t=\sum_r H^N_{r,t}\)。

### 5.5 资本错配

\[
MPK^N_t-MPK^O_t
\]

或：

\[
MRPK\ dispersion,\quad TFPR\ dispersion.
\]

### 5.6 福利比较

\[
W^D-W^{CP}
\]

---

## 6. 基准模型应删除或降级的内容

以下内容不进入基准模型：

- 供应链账期；
- 供应商创新质量；
- 官员考核；
- 居民储蓄率和完整消费储蓄决策；
- 完整税制；
- 出口摩擦和贸易冲突；
- 车型级 BLP；
- 完整 dynamic IO 行业估计；
- 企业僵尸化、破产制度、地方救助的大模块。

它们可以放在 background、discussion、appendix 或后续项目中，但不能破坏基准模型干净性。

以下模糊变量必须从基准模型中删除：

- `LearningState`；
- `SelectionState`；
- `InvolutionState`；
- `CapacityPressureState`；
- `MisallocationState`；
- `ScaleCompetitionStage`；
- `PostSuccess`。

替代方式：

| 原模糊变量 | 替代对象 |
|---|---|
| LearningState | learning-by-doing 或 cost decline，可选，不进核心 |
| SelectionState | entry / exit / productivity decomposition，作为机制扩展 |
| InvolutionState | 不进模型，只作中文政策叙事 |
| CapacityPressureState | \(H_t/D_t\), \(u_t=Q_t/H_t\), idle capacity |
| MisallocationState | \(MPK^N-MPK^O\), MRPK dispersion |
| ScaleCompetitionStage | entry, capacity, price, utilization 的动态表现 |
| PostSuccess | 删除，不作为模型变量 |

---

## 7. 地方政策测度：policy platform approach

本文借鉴 Chen–Liu–Song 的 policy platform approach。由于地方产业政策往往并不以可直接观测的显性补贴出现，仅依赖政策文本计数会低估地方政府真实的资源动员。Chen–Liu–Song 通过 SEZ 和 SOE 等政策平台识别中央和地方产业政策强度。沿用这一思路，本文构造地方 NEV 扩张型政策平台暴露，重点包括：

- NEV 产业园 / 开发区 / 智能网联示范区；
- 地方国资参与；
- 地方产业基金 / 政府引导基金；
- 土地支持；
- 信贷支持；
- 规划产能项目；
- 招商项目。

主政策变量建议为：

\[
LocalExpansionaryPlatform^{NEV}_{rt}
\]

主 index 不应把所有政策都等权相加。建议分组：

### 7.1 主 policy platform index

\[
PolicyPlatform^{main}_{rt}
=
IndustrialPark_{rt}
+
LocalStateCapital_{rt}
+
LocalFund_{rt}
+
LandSupport_{rt}
+
PlannedCapacity_{rt}.
\]

### 7.2 辅助金融支持平台

\[
FinancialSupport_{rt}
=
LocalFund_{rt}+CreditSupport_{rt}.
\]

### 7.3 需求侧或生态支持平台

充电基础设施、消费券、牌照政策等不应混入主扩产型政策 index。它们可作为 demand-side support 或 robustness/control。

---

## 8. 中央政策的处理

中央政策应区分三类。

### 8.1 全国性中央政策环境

全国统一的中央 NEV 政策，例如国家补贴、购置税减免、双积分、车型目录、技术标准等，在实证中主要由年份固定效应吸收：

\[
\lambda_t.
\]

主文可写：

> 全国性中央 NEV 政策在基准实证中由年份固定效应吸收。本文识别重点是共同中央政策环境下地方政府如何通过差异化政策平台进行扩张。

### 8.2 中央选择性平台

如有需要，可构造：

\[
CentralPlatform^{NEV}_{rt}
\]

包括：

- 中央 NEV 试点城市；
- 国家级示范城市群；
- 国家级开发区 / 高新区；
- 中央 SOE / 央企 NEV 项目；
- 国家级先进制造业集群；
- 国家级智能网联汽车试点。

它作为控制变量或异质性变量，而非主机制。

### 8.3 中央协调 benchmark

核心中央政策对象是反事实：

\[
CP,\quad s^{CP}_{rt},\quad \zeta^{C,NEV}_{rt}.
\]

它不是现实观测到的中央政策文本，而是可实施中央协调 benchmark。

---

## 9. 产能数据要求

本项目成败高度依赖产能数据。必须尽力构造：

\[
I^H_{rt}\rightarrow H^N_{r,t+1}.
\]

### 9.1 最优产能数据

企业—工厂—年份层面的设计产能 / 已建成产能：

\[
firm\times plant\times year.
\]

可能来源：

- MarkLines；
- 企业年报；
- 招股说明书；
- 环评报告；
- 地方项目公告。

### 9.2 可行公开数据

项目级数据库：

- 项目名称；
- 企业；
- 地点；
- 产品类型；
- 规划产能；
- 总投资；
- 开工年份；
- 投产年份；
- 达产年份；
- 项目状态。

产能口径必须区分：

| 口径 | 含义 |
|---|---|
| 规划产能 | signed / announced capacity |
| 在建产能 | under-construction capacity |
| 已建成产能 | installed / online capacity |
| 有效产能 | effective capacity after ramp-up |

基准模型最好使用已建成产能；规划和在建产能用于刻画地方扩张预期和投资滞后。

---

## 10. 最小模型方程

### 10.1 地方政策推动投资

\[
I^H_{rt}=I^H(s_{rt}),\quad \frac{\partial I^H_{rt}}{\partial s_{rt}}>0.
\]

### 10.2 产能状态转移

\[
H^N_{r,t+1}=(1-\delta_H)H^N_{r,t}+I^H_{rt}.
\]

产能不可逆或退出慢可通过：

\[
\delta_H \ \text{small}
\]

或：

\[
I^H_{rt}\geq 0
\]

表达。

### 10.3 需求吸收

\[
Q^N_t=D^N_t(P^N_t).
\]

可设：

\[
D^N_t(P^N_t)=\bar D_t(P^N_t)^{-\epsilon}.
\]

### 10.4 产能利用率

\[
u^N_t=\frac{Q^N_t}{\sum_r H^N_{r,t}}.
\]

### 10.5 资本错配

\[
\Delta MPK_t=MPK^N_t-MPK^O_t.
\]

如果：

\[
\Delta MPK_t<0
\]

且地方政策仍推动 \(I^H_{rt}>0\)，则存在动态产能错配。

### 10.6 地方—中央回报偏离

\[
\zeta^{L,NEV}_{rt}>0
\quad \text{but}\quad
\zeta^{C,NEV}_{rt}\leq 0.
\]

这是地方政策由 discovery / expansion 变为 duplicated capacity / misallocation 的核心条件。

---

## 11. 参数校准要求

如果模型要做：

\[
W^D-W^{CP},
\]

必须做参数校准或估计。

### 11.1 最小参数表

| 参数 | 含义 | discipline moment |
|---|---|---|
| \(\phi_I\) | 地方政策对产能投资的影响 | \(I^H_{rt}\) on \(s_{rt}\) |
| \(\delta_H\) | 产能折旧 / 退出率 | 工厂关闭率、产能持续时间、低利用率持续性 |
| \(\ell_H\) | 投资建设滞后 | 项目开工到投产时间 |
| \(\epsilon\) | NEV 需求价格弹性 | 价格—销量估计或文献 |
| \(\kappa_s\) | 政策成本 | 财政支持、基金、土地、贴息、园区成本 |
| \(\alpha_N,\alpha_O\) | 资本产出弹性 | 生产函数估计或文献 |
| \(\Delta MPK_t\) | NEV vs outside sector 资本回报差异 | 企业财务数据 |
| recovery rate / \(\eta_H\) | 产能清算/转用价值 | 不可逆投资文献或项目退出数据 |

### 11.2 不进入基准校准的参数

- 供应链账期参数；
- 供应商创新弹性；
- 官员晋升权重；
- 居民储蓄偏好；
- 完整税制；
- 银行违约阈值；
- working capital financial friction；
- BLP 随机系数需求参数。

---

## 12. 最小实证事实链条

主文必须先做四个 facts。

### Fact 1：地方政策平台推动 NEV 投资和产能项目

\[
I^H_{rt}=\beta s_{rt}+\alpha_r+\lambda_t+X_{rt}+\varepsilon_{rt}.
\]

### Fact 2：投资滞后形成未来产能

\[
H^N_{r,t+1}=\rho H^N_{r,t}+\gamma I^H_{rt}+\alpha_r+\lambda_t+\varepsilon_{rt}.
\]

### Fact 3：产能相对需求上升导致利用率下降和价格压缩

\[
u^N_t\downarrow,\quad P^N_t\downarrow.
\]

### Fact 4：高政策 / 高产能暴露导致 NEV MPK 下降或 MPK gap 扩大

\[
MPK^N_t-MPK^O_t\downarrow.
\]

没有这四个 facts，不应直接进入 welfare 量化。

---

## 13. 福利分解

不能把价格下降直接写成 welfare loss，因为价格下降可能提高消费者剩余。

最小 welfare decomposition：

\[
\Delta W
=
\Delta CS
+
\Delta ProducerSurplus
+
\Delta Learning
-
FiscalCost
-
IdleCapacityCost
-
MisallocationCost.
\]

其中：

- \(\Delta CS\)：消费者剩余变化；
- \(\Delta ProducerSurplus\)：企业利润或生产者剩余；
- \(\Delta Learning\)：可选，如果数据不足，不进入基准；
- \(FiscalCost\)：地方政策成本；
- \(IdleCapacityCost\)：闲置产能资源成本；
- \(MisallocationCost\)：MPK/MRPK gap 导致的资源配置损失。

---

## 14. 核心反事实

### 14.1 Decentralized equilibrium \(D\)

地方政府按本地回报行动：

\[
s^D_{rt}\ \text{disciplined by}\ \zeta^{L,NEV}_{rt}.
\]

### 14.2 Centralized constrained coordination \(CP\)

中央按全国回报协调：

\[
s^{CP}_{rt}\ \text{disciplined by}\ \zeta^{C,NEV}_{rt}.
\]

### 14.3 Policy counterfactuals

应包括：

1. subsidy cap：限制地方扩张型政策平台强度；
2. capacity approval rule：新增产能与利用率、需求预测或 MPK 挂钩；
3. faster capacity retirement：提高 \(\delta_H\)，即更快退出 / 重组；
4. policy-mix shift：从进入/扩产支持转向共性技术、标准、基础设施和出清协调。

---

## 15. 期刊定位

当前主轴具有较高潜力，但仍是 high-potential, high-risk project。

| 执行程度 | 可能期刊 |
|---|---|
| 描述性政策—产能事实 | CER / JCE / Economic Modelling |
| 政策测度较好 + 事实链条清楚 | JDE / JIE / World Development / IJIO |
| 动态模型 + D vs CP + 福利分解 | JDE 上档 / EJ / ReStat 可尝试 |
| 可实施中央协调反事实非常清楚 | AEJ Policy 可冲 |
| 完整 dynamic GE + aggregate TFP/growth 贡献 | AEJ Macro 才有可能 |

当前最自然的高目标是：

> **AEJ Policy / EJ / ReStat 可尝试，JDE 作为现实基准目标。**

但只有在政策测度、产能数据、MPK gap 和 welfare decomposition 做实后才成立。

---

## 16. Codex 工作区更新指令

请 Codex 按以下规则更新当前工作区：

1. 将项目主轴统一为：
   > decentralized local industrial policy + durable/partially irreversible NEV capacity + demand absorption + MPK gap + D vs CP welfare comparison。

2. 删除或降级以下内容：
   - after success；
   - scale-competition stage；
   - LearningState / SelectionState / InvolutionState；
   - 供应链账期；
   - 供应商创新；
   - 官员考核；
   - 居民储蓄；
   - 出口摩擦；
   - 完整税制；
   - BLP / dynamic IO full estimation。

3. 将 Chen–Liu–Song 设为第一理论锚点：
   - local intervention index；
   - central intervention index；
   - policy platform approach；
   - fiscal autonomy / local implementation。

4. 将 Aggregate Demand and Irreversible Investment 设为产能不可逆与需求吸收模块来源。

5. 将 Barwick–Kalouptsidi–Zahur 设为产业政策—进入—投资—产能—welfare 模块来源。

6. 将 Hsieh–Klenow / misallocation literature 设为 MPK/MRPK gap 来源。

7. 将 Klepper 仅作为产业生命周期叙事来源，不作为模型 primitive 来源。

8. 所有模型变量必须符合 “No uncited primitive” 原则。没有文献来源的变量不进入基准模型。

---

## 17. 最终项目介绍段落

本文研究地方分散化产业政策如何在战略性新兴产业中产生动态产能错配。本文以 Chen–Liu–Song 的地方—中央政策回报偏离框架为基础，强调地方政府按照本地投资、产值、就业和税基回报支持 NEV 扩张，而中央协调则内部化全国性产能、需求吸收和资本错配。本文进一步加入固定资本部分不可逆和需求吸收约束：地方政策推动企业进入和产能投资，投资滞后形成未来产能，而 NEV 产能一旦建成不能无成本即时退出。当多地地方政府同时扩张，且未来有效需求无法同步吸收新增产能时，产能利用率下降、价格压缩和 NEV 部门资本回报下降出现。此时地方本地回报仍可能为正，但中央社会回报下降甚至转负，由此导致地方分散化实施相对可实施中央协调产生动态产能错配和福利损失。本文的核心比较不是“有政策 vs 无政策”，而是地方分散化实施 \(D\) 与可实施中央协调 \(CP\) 的福利差异 \(W^D-W^{CP}\)。
