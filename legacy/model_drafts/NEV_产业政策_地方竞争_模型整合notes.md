# 新能源汽车产业政策、地方竞争与“内卷”：模型整合 Notes

> 当前版本用途：作为后续继续讨论、建模、写 model memo、让 Codex/Claude 协助实现模型与数据任务的基础 notes。  
> 核心原则：保留已经收敛的模型设定；删除过重、过政策研究化、或与经济学模型纪律不一致的设定。

---

## 0. 当前已经确定的核心判断

### 0.1 论文核心问题

本文不应被表述为：

> 新能源汽车价格战如何影响供应商创新？

这更像 applied IO / corporate finance / supply-chain innovation 论文。更合适的宏观产业政策版本是：

> **分散化地方产业政策如何在战略性新兴产业中导致过度进入、重复产能、价格竞争和资本错配？这种错配的总量福利成本有多大？**

英文标题可以考虑：

> **Decentralized Industrial Policy, Overcapacity, and Aggregate Misallocation: Evidence from China’s NEV Industry**

或：

> **State-Contingent Industrial Policy, Local Competition, and Aggregate Misallocation: Evidence from China’s NEV Industry**

### 0.2 不是“政策早期好、后期坏”

不能把故事写成简单的：

```text
早期政策有效 → 成熟阶段政策有害
```

这会和“动态因势利导”“产业链协同升级”的正面机制冲突。正确表述是：

> **产业政策存在 state-contingent trade-off。政策可以通过学习外部性、市场培育、基础设施和产业链协同促进产业升级；但当多个地方政府围绕同一产业赛道叠加扩张型政策时，也可能带来重复建设、产能—需求错配和资本错配。问题不是产业政策本身是否应当存在，而是政策强度和政策工具是否随产业状态及时调整。**

### 0.3 基准模型不要放六七个政策工具

此前讨论中曾考虑政策工具向量：

\[
g_{r,t}=(s^{entry}_{r,t},s^{investment}_{r,t},s^{infra}_{r,t},s^{R\&D}_{r,t},s^{coord}_{r,t},s^{exit}_{r,t})
\]

这个设定更像政策报告，不适合作为顶刊宏观或定量 GE 模型的基准。最终选择：

> **基准模型只放一个地区—部门层面的扩张型政策 wedge：\(s_{r,t}\)。**

它代表地方政府对新能源汽车部门的综合扩张型支持，包括：

```text
补贴、低价土地、产业基金、信贷支持、园区招商、投资便利、税费优惠、基础设施配套等。
```

这些现实政策不逐项进入基准模型，而是在实证部分用于构造、校准或解释 \(s_{r,t}\)。

扩展模型可以最多拆成两个 wedge：

\[
s^E_{r,t}: \text{扩张型政策，降低进入/资本/产能成本}
\]

\[
s^P_{r,t}: \text{生产率型政策，提高学习、协同、关键技术能力}
\]

但这个只应作为 extension 或 appendix，而不是基准模型。

### 0.4 Planner 不是 no-policy benchmark

中央规划者或社会规划者不是选择取消产业政策。Planner 是：

> **state-contingent optimal industrial policy benchmark。**

即：

\[
s^P_{r,t}=s^P(Z_{r,t},Z_t)
\]

而不是：

\[
s^P_{r,t}=0
\]

本文批评的不是产业政策本身，而是：

```text
分散化执行
+ 地方政府政策竞争
+ 扩张型工具惯性
+ 多层政策叠加
+ 全国性外部性未被内部化
```

### 0.5 政策退出和调整必须进入模型

模型不能设定：

\[
s_{r,t}=\text{固定政策强度}
\]

而应设定：

\[
s_{r,t}=s(Z_{r,t},Z_t)
\]

其中 \(Z_t\) 是产业状态。政策确实会调整，但地方政府的调整可能慢于社会规划者，尤其在产能过剩、资本边际回报下降、但本地就业和税基仍受政策支持时。

---

## 1. 文献和模型定位

### 1.1 主参考文献分层

| 用途 | 参考文献 | 在本文中的作用 |
|---|---|---|
| 产业政策—进入—投资—产能闲置 | Barwick, Kalouptsidi, Zahur | 行业政策模板：政策促进投资和进入，也可能带来碎片化和闲置产能 |
| 多地区政策与空间错配 | Fajgelbaum / Fajgelbaum–Gaubert / Fajgelbaum–Morales–Suárez Serrato–Zidar | 地区政策异质性、地方均衡 vs planner、空间资源错配 |
| 宏观错配测度 | Hsieh–Klenow | MRPK / TFPR dispersion、aggregate TFP loss |
| well-intended policy 叙事 | Buera–Moll–Shin | 好政策在动态中可能形成持久扭曲和资源错配 |
| 生产网络扩展 | Ernest Liu | 如果后续加入上游供应链和投入产出网络，可作为理论扩展 |

### 1.2 最准确的领域定位

不要硬说这是标准 DSGE。更准确的定位是：

> **quantitative dynamic general equilibrium model of state-contingent industrial policy and decentralized policy competition**

中文：

> **状态依赖型产业政策与地方分散化政策竞争的定量动态一般均衡模型。**

如果暂时不做完整量化，可以先写成：

> **stylized dynamic GE / macro-industrial policy model**

但最终要能走向：

```text
一般均衡
+ 动态产能积累
+ 地方政府政策竞争
+ planner benchmark
+ welfare/counterfactual
```

---

## 2. 核心经济机制

### 2.1 一句话机制

> 地方政府不完全内部化全国性产能过剩和资本错配，因此在分散化政策竞争中选择过高的 NEV 扩张型支持强度。该政策降低企业进入门槛和有效资本成本，短期促进产业扩张和学习，但当产能增长快于有效需求、且 NEV 部门资本边际回报低于其他部门时，分散均衡会导致过度进入、产能利用率下降、价格和利润压缩、资本错配和福利损失。

### 2.2 机制链条

```text
产业政策存在正向社会收益：
learning + market creation + infrastructure + supply-chain coordination

但地方政府执行存在偏差：
local output + investment + employment + tax base

地方政府偏好扩张型工具：
entry support + investment support + industrial parks + capacity projects

当产业状态变化：
capacity high, demand growth slows, MPK in NEV falls

planner 会调整政策：
less expansionary support, more coordination/R&D/exit governance

local governments adjust slowly：
continued expansionary support due to local benefits, sunk commitments, fiscal/industrial inertia

结果：
over-entry + excess capacity + price/profit compression + capital misallocation + welfare loss
```

### 2.3 状态变量

产业状态向量：

\[
Z_t=(A_t^N,H_t^N,D_t^N,u_t^N,N_t^N,S_t^N,MPK_t^N-MPK_t^O)
\]

| 状态变量 | 含义 |
|---|---|
| \(A_t^N\) | 新能源汽车技术能力 |
| \(H_t^N\) | 新能源汽车总产能 |
| \(D_t^N\) | 有效需求 |
| \(u_t^N\) | 产能利用率 |
| \(N_t^N\) | 企业/车型进入数量 |
| \(S_t^N\) | 产业链协同程度 |
| \(MPK_t^N-MPK_t^O\) | NEV 与其他部门资本边际回报差异 |

政策是否提高福利，取决于：

\[
MB^{social}_{r,t}(s_{r,t};Z_t) \gtrless MC^{social}_{r,t}(s_{r,t};Z_t)
\]

---

## 3. 基准模型结构

### 3.1 经济环境

地区：

\[
r=1,\dots,R
\]

部门：

\[
j\in\{N,O\}
\]

其中：

- \(N\)：新能源汽车部门；
- \(O\)：其他制造业 / outside sector。

主体：

| 主体 | 决策 |
|---|---|
| 家庭 | 消费、储蓄、劳动供给，拥有资本和企业利润 |
| 企业 | 进入、退出、资本、劳动、产能投资、生产 |
| 地方政府 | 选择 NEV 政策 wedge \(s_{r,t}\) |
| 社会规划者 | 最大化全国福利，内部化学习、产能、财政和错配成本 |

---

## 4. 家庭

代表性家庭最大化：

\[
\max_{\{C_t,K_{t+1},L_t\}}
\sum_{t=0}^{\infty}\beta^t
\left[
\frac{C_t^{1-\sigma}}{1-\sigma}
-
\chi\frac{L_t^{1+\varphi}}{1+\varphi}
\right]
\]

预算约束：

\[
C_t+K_{t+1}
=
(1+r_t)K_t+w_tL_t+\Pi_t+T_t
\]

Euler equation：

\[
1=\beta
\left(\frac{C_{t+1}}{C_t}\right)^{-\sigma}
(1+r_{t+1}-\delta_K)
\]

劳动供给：

\[
\chi L_t^{\varphi}=w_t C_t^{-\sigma}
\]

第一版可以将劳动供给设为外生，以降低复杂度；但如果要严格闭合宏观模型，家庭模块需要保留。

---

## 5. 企业、生产与进入退出

### 5.1 企业生产

企业 \(i\) 在地区 \(r\)、部门 \(j\) 生产：

\[
y^j_{i,r,t}=z_{i,t}A^j_{r,t}(k^j_{i,r,t})^{\alpha_j}(l^j_{i,r,t})^{1-\alpha_j}
\]

企业生产率：

\[
\log z_{i,t+1}=\rho_z\log z_{i,t}+\varepsilon_{i,t+1}
\]

这个异质性很重要，因为它允许政策降低进入门槛，使低效率企业也进入 NEV 部门。

### 5.2 企业利润

\[
\pi^j_{i,r,t}=p^j_t y^j_{i,r,t}-w_{r,t}l^j_{i,r,t}-R^j_{r,t}k^j_{i,r,t}-F^j_{r,t}
\]

其他部门资本成本：

\[
R^O_{r,t}=r_t
\]

NEV 部门资本成本受地方政策影响：

\[
R^N_{r,t}=r_t-\phi s_{r,t}
\]

这是基准政策 wedge。它代表地方政策降低 NEV 部门有效资本成本。

### 5.3 进入成本扩展

基准模型只保留资本成本 wedge。扩展中可加入进入成本 wedge：

\[
F^N_{r,t}=F_0^N-\phi_F s_{r,t}
\]

企业进入 NEV 的条件：

\[
V^N_{i,r,t}(z)\geq V^O_{i,r,t}(z)
\]

或：

\[
V^N_{i,r,t}(z)\geq F^N_{r,t}
\]

进入阈值：

\[
\bar z^N_{r,t}=\bar z(s_{r,t},A^N_{r,t},p^N_t,r_t,w_{r,t})
\]

政策比较静态：

\[
\frac{\partial \bar z^N_{r,t}}{\partial s_{r,t}}<0
\]

含义：政策越强，进入阈值越低，低效率企业也更容易进入。

### 5.4 企业退出

模型必须有退出，否则不能解释持续亏损、低效率产能出清慢和地方继续支持。

企业价值函数可写为：

\[
V^N_{i,r,t}(z)=
\max\left\{0,\ \pi^N_{i,r,t}(z)+\beta E_tV^N_{i,r,t+1}(z')\right\}
\]

退出条件：

\[
V^N_{i,r,t}(z)<\bar V^{exit}\Rightarrow exit
\]

第一版可以简化为生产率阈值退出，不必直接估计完整企业动态规划。

---

## 6. NEV 产品市场、价格和利润压缩

### 6.1 基准：逆需求 + 产能约束

基准宏观模型不要一开始做 BLP，也不要直接做完整差异化 Bertrand。最稳的是逆需求：

\[
P^N_t=\mathcal D(Q^N_t),\quad \mathcal D'(\cdot)<0
\]

总产量：

\[
Q^N_t=\sum_r Q^N_{r,t}
\]

产能约束：

\[
Q^N_{r,t}\leq H^N_{r,t}
\]

地区 NEV 利润：

\[
\pi^N_{r,t}=P^N_tQ^N_{r,t}-w_{r,t}L^N_{r,t}-R^N_{r,t}K^N_{r,t}-FC^N_{r,t}
\]

当地方政策推动产能扩张，但需求增长有限时：

\[
H^N_t>D^N_t
\Rightarrow
P^N_t\downarrow,
\pi^N_t\downarrow,
u^N_t\downarrow
\]

这就是“内卷”的产品市场机制：不仅是产能过剩的定义，而是价格、利润、利用率和退出同时发生变化。

### 6.2 扩展：垄断竞争 / nested logit / Bertrand

如果要解释车型数量、品牌过多和市场份额稀释，可在扩展中加入 Dixit–Stiglitz 或 nested logit。

BLP 不适合作为当前主模型。它可以估计需求弹性、替代关系、markup 和消费者福利，但会把论文重心带偏为“新能源汽车需求估计”，且对真实成交价、车型特征、工具变量和城市市场规模要求很高。

---

## 7. 产能动态与区制切换

### 7.1 产能积累

\[
H^N_{r,t+1}=(1-\delta_H)H^N_{r,t}+I^H_{r,t}
\]

产能利用率：

\[
u^N_{r,t}=\frac{Q^N_{r,t}}{H^N_{r,t}}
\]

全国过剩产能：

\[
IdleCapacity_t=\max\left\{0,\sum_rH^N_{r,t}-D^N_t\right\}
\]

### 7.2 两个区制

#### Regime B：capacity constrained

\[
D^N_t(P^N_t)>H^N_t
\]

产能约束绑定：

\[
Q^N_t=H^N_t
\]

产能影子价值为正，产能投资动机强。

#### Regime S：excess capacity

\[
H^N_t>D^N_t(P^N_t)
\]

产能约束松弛，利用率下降：

\[
u^N_t<1
\]

但不要假设产能闲置时投资自动停止。内卷机制恰恰是：

> 即使社会边际回报下降，地方政策 wedge 仍可能使地方政府和企业继续投资。

---

## 8. 学习外部性与产业链协同

### 8.1 基准学习方程

不能只写地区内部 learning-by-doing，因为 NEV 产业有全国性产业链、技术扩散和供应链协同。更合理的设定是：

\[
A^N_{r,t+1}=(1-\delta_A)A^N_{r,t}
+
\psi_L(Q^N_{r,t})^{\nu}
+
\psi_G(\bar Q^N_t)^{\nu}
\]

其中：

\[
\bar Q^N_t=\sum_rQ^N_{r,t}
\]

| 项 | 含义 |
|---|---|
| \(\psi_L(Q^N_{r,t})^{\nu}\) | 本地 learning-by-doing |
| \(\psi_G(\bar Q^N_t)^{\nu}\) | 全国性知识外溢 / 产业链协同外部性 |

### 8.2 政策收益来源

政策的社会边际收益包括：

\[
MB^{social}_{r,t}=MB^{learning}_{r,t}+MB^{market}_{r,t}+MB^{coordination}_{r,t}+MB^{infrastructure}_{r,t}
\]

这对应：

```text
学习外部性
市场培育
基础设施
产业链协同
需求牵引创新
```

---

## 9. 地方政府问题

### 9.1 地方政府目标函数

地方政府选择 \(s_{r,t}\)，最大化本地目标：

\[
\max_{\{s_{r,t}\}}
\sum_{t=0}^{\infty}\beta_g^t
\left[
\omega_Y Y^N_{r,t}
+
\omega_I I^H_{r,t}
+
\omega_E L^N_{r,t}
+
\omega_T Tax_{r,t}
-
\frac{\kappa}{2}s_{r,t}^2
-
\frac{\chi_s}{2}(s_{r,t}-s_{r,t-1})^2
\right]
\]

关键点：

1. 地方政府内部化本地 NEV 产值、投资、就业和税基；
2. 地方政府承担本地政策成本；
3. 但地方政府不完全内部化全国性产能过剩、资本错配和跨地区重复建设；
4. 政策调整存在摩擦，不能瞬间退出。

### 9.2 政策调整与退出

也可以用 partial adjustment 表示政策惯性：

\[
s_{r,t}=\rho_s s_{r,t-1}+(1-\rho_s)\tilde s_{r,t}
\]

其中：

\[
\tilde s_{r,t}=\arg\max_s V^L_{r,t}(s;Z_{r,t},Z_t)
\]

\(\rho_s\) 表示政策惯性：

- \(\rho_s=0\)：政策完全灵活；
- \(\rho_s>0\)：政策退出较慢。

当：

\[
u^N_t<\bar u
\]

或：

\[
MPK^N_t<MPK^O_t
\]

社会规划者会更快降低扩张型 wedge：

\[
\Delta s^P_t<0
\]

但地方政府可能只部分调整：

\[
|\Delta s^D_{r,t}|<|\Delta s^P_t|
\]

因此核心不是“地方政府不会退出”，而是：

> **地方政府退出不充分、退出太慢，或在地区竞争中不愿率先退出。**

### 9.3 地方政府均衡

地方政府同时选择政策，形成 Markov-Nash equilibrium：

\[
s^D_{r,t}=BR_r(s^D_{-r,t};Z_{r,t},Z_t)
\]

基准模型不要引入 Stackelberg、长期承诺、hold-up 等复杂结构；这些会使模型过重。

---

## 10. 社会规划者问题

### 10.1 基准福利函数

最终定量模型中，最好不要直接写：

\[
U(C_t)+\Omega_AA^N_t-\Omega_{OC}OC_t-\Omega_MMisallocation_t
\]

这些自由权重不易识别，容易被质疑。

更干净的做法是：

\[
\max \sum_{t=0}^{\infty}\beta^tU(C_t,L_t)
\]

subject to：

```text
生产函数
资本积累
产能积累
技术学习
产品需求
资源约束
政府预算约束
市场出清条件
```

过剩产能和错配不要作为任意 welfare penalty，而应通过资源约束、投资浪费、闲置产能维护成本、企业利润下降、财政融资成本和未来生产率自然体现。

### 10.2 资源约束

一个简化资源约束：

\[
Y_t=C_t+I^K_t+\sum_r I^H_{r,t}+\sum_r C(s_{r,t})+AC_t+IdleCost_t
\]

其中：

\[
C(s_{r,t})=\frac{\kappa}{2}s_{r,t}^2
\]

\[
AC_t=\sum_r\frac{\kappa_H}{2}\left(\frac{I^H_{r,t}}{H^N_{r,t}}\right)^2H^N_{r,t}
\]

\[
IdleCost_t=\xi_H\max\left\{0,\sum_rH^N_{r,t}-D^N_t\right\}
\]

如果不想显式设定 \(IdleCost_t\)，也可以让闲置产能通过“过去投资资源被锁定但没有产出”体现福利损失。

### 10.3 Planner 的政策规则

Planner 选择：

\[
s^P_{r,t}=s^P(Z_{r,t},Z_t)
\]

当学习外部性强、需求增长快、产能不足时：

\[
s^P_{r,t}\uparrow
\]

当产能利用率下降、NEV 部门资本回报低于其他部门、过剩产能上升时：

\[
s^P_{r,t}\downarrow
\]

Planner 不是取消政策，而是根据产业状态调整政策。

---

## 11. 市场出清与一般均衡闭合

至少要有以下市场出清条件。

### 11.1 资本市场

\[
\sum_{r,j,i}k^j_{i,r,t}+\sum_rH^N_{r,t}=K_t
\]

或将产能资本并入部门资本，简化为：

\[
\sum_{r,j}K^j_{r,t}=K_t
\]

### 11.2 劳动市场

\[
\sum_{r,j,i}l^j_{i,r,t}=L_t
\]

### 11.3 NEV 产品市场

\[
\sum_rQ^N_{r,t}=D^N_t(P^N_t)
\]

或在存在过剩产能时：

\[
Q^N_t=\min\left\{\sum_rH^N_{r,t},D^N_t(P^N_t)\right\}
\]

### 11.4 最终品市场 / 资源约束

\[
Y_t=C_t+I^K_t+\sum_rI^H_{r,t}+PolicyCost_t+AdjustmentCost_t+IdleCost_t
\]

有市场出清，模型才是一般均衡；否则只是局部均衡或行业模型。

---

## 12. 均衡定义

### 12.1 Decentralized equilibrium

给定初始状态：

\[
\{K_0,H^N_{r,0},A^N_{r,0},s_{r,-1},\mu_{r,0}(z)\}_{r}
\]

一个 decentralized equilibrium 是一组路径：

\[
\{C_t,K_{t+1},L_t,w_{r,t},r_t,p^N_t,p^O_t,s_{r,t},N^N_{r,t},H^N_{r,t},Q^N_{r,t}\}_{t=0}^{\infty}
\]

满足：

1. 家庭最大化效用；
2. 企业选择进入、退出、资本、劳动和产能投资以最大化价值；
3. 地方政府在给定其他地区政策和 aggregate prices 下最大化本地目标；
4. 劳动市场、资本市场和产品市场清算；
5. 政府预算约束满足；
6. 产能和生产率动态满足；
7. 每个地区政府的政策是 Nash equilibrium：

\[
s^D_{r,t}=BR_r(s^D_{-r,t})
\]

### 12.2 Planner allocation

Planner allocation 是一组资源配置：

\[
\{C_t,K^j_{r,t},L^j_{r,t},H^N_{r,t},s_{r,t},Q^j_{r,t}\}_{t=0}^{\infty}
\]

满足：

1. 总资源约束；
2. 产能动态；
3. 生产率学习动态；
4. 产品需求或资源可行性；
5. 政策成本；
6. 中央规划者最大化全国福利。

Planner 与 decentralized 的区别不是有没有产业政策，而是：

> Planner 会继续支持存在学习外部性和比较优势的地区/企业，但会限制低效率重复进入和过度产能。

---

## 13. 核心命题

### Proposition 1：状态依赖的产业政策收益

当 NEV 部门存在较强学习外部性、市场培育约束和产业链协同不足时，适度产业政策可以提高动态福利：

\[
\psi_L>0,\ \psi_G>0 \Rightarrow W^{policy}>W^{no\ policy}
\]

但这个命题不意味着政策永远越强越好。

### Proposition 2：地方分散化导致过度扩张型政策

若地方政府重视本地 NEV 产值、投资、就业和税基，但不完全内部化全国性产能过剩和资本错配，则：

\[
s^D_{r,t}>s^P_{r,t}
\]

尤其在：

\[
H^N_t>D^N_t\quad \text{or}\quad MPK^N_t<MPK^O_t
\]

的状态下成立。

### Proposition 3：过度政策导致过度进入和产能过剩

由于政策降低进入阈值或有效资本成本：

\[
\frac{\partial \bar z^N_{r,t}}{\partial s_{r,t}}<0,
\quad
\frac{\partial K^N_{r,t}}{\partial s_{r,t}}>0
\]

分散均衡相对 planner 有：

\[
N^{N,D}_{r,t}>N^{N,P}_{r,t}
\]

\[
H^{N,D}_{r,t}>H^{N,P}_{r,t}
\]

\[
u^{N,D}_{r,t}<u^{N,P}_{r,t}
\]

### Proposition 4：价格、利润与“内卷”

在逆需求下，若地方政策导致总供给/产能相对需求过快增长：

\[
Q^{N,D}_t>Q^{N,P}_t\quad \text{or}\quad H^{N,D}_t>D^N_t
\]

则：

\[
P^{N,D}_t<P^{N,P}_t
\]

\[
\pi^{N,D}_t<\pi^{N,P}_t
\]

这解释价格战、利润压缩和亏损退出压力。

### Proposition 5：资本错配和福利损失

若分散均衡使 NEV 部门资本边际回报低于其他部门：

\[
MPK^{N,D}_{r,t}<MPK^{O,D}_{r,t}
\]

则存在资本错配：

\[
K^{N,D}_{r,t}>K^{N,P}_{r,t}
\]

并可能导致：

\[
TFP^D<TFP^P
\]

\[
W^D<W^P
\]

### Proposition 6：政策调整慢于社会最优

当产能利用率低于阈值或 NEV 部门 MPK 低于 outside sector 时，planner 会更快降低扩张型政策：

\[
\Delta s^P_{r,t}<\Delta s^D_{r,t}\leq 0
\]

原因包括：

1. 本地投资、就业和税基收益；
2. 全国过剩产能未被完全内部化；
3. 政策调整成本；
4. 招商承诺、园区投资、地方债务和企业预期带来的惯性；
5. 地方政府不愿在竞争中率先退出。

---

## 14. 量化 moments 与数据需求

### 14.1 核心 moments

| 参数 / 机制 | 需要匹配的 moment | 可能数据 |
|---|---|---|
| \(\phi\) | 政策对 NEV 资本/投资的弹性 | 地方政策文本、投资、资本开支、在建工程、产能项目 |
| \(\phi_F\) | 政策对企业进入的弹性 | 企业注册、整车/电池/零部件进入、车型上市 |
| \(\delta_H,\kappa_H\) | 产能动态和调整成本 | 产能公告、产量、销量、利用率 |
| \(\epsilon_D\) | NEV 需求弹性 | 车型价格、销量、城市/车型面板 |
| \(\psi_L,\psi_G\) | 学习外部性 | 累计产量、TFP、单位成本、专利质量 |
| \(\kappa\) | 政策财政成本 | 补贴、基金、土地优惠、贷款贴息、基础设施投入 |
| \(\rho_s,\chi_s\) | 政策惯性/调整成本 | 政策持续性、园区投资、基金期限、地方债务、招商协议 |
| \(\omega_Y,\omega_I,\omega_E,\omega_T\) | 地方政府目标权重 | 政策反应函数、本地 GDP/投资/就业/税收变化 |
| 退出阈值 | 低效率企业退出率、亏损持续性 | 企业退出、亏损、利润率、资产利用率 |
| 错配程度 | MPK/MRPK dispersion | 工业企业/上市公司财务数据 |

### 14.2 最低限度 reduced-form facts

第一阶段不应直接上大模型。应先做四个事实：

1. **政策强度提高企业进入和产能扩张**  
   \[
   Entry^N_{r,t}=\beta s_{r,t}+\alpha_r+\lambda_t+X_{r,t}+\varepsilon_{r,t}
   \]

2. **政策强地区更容易出现产能利用率下降或供需错配**  
   \[
   u^N_{r,t}=\beta s_{r,t}+\alpha_r+\lambda_t+X_{r,t}+\varepsilon_{r,t}
   \]

3. **过度产能暴露压低价格、利润和资本回报**  
   \[
   Profitability_{i,t}=\beta OvercapacityExposure_{i,t}+\alpha_i+\lambda_t+X_{i,t}+\varepsilon_{i,t}
   \]

4. **NEV 部门资本回报相对 outside sector 下降**  
   \[
   MPK^N_{r,t}-MPK^O_{r,t}
   \]

供应链账期和供应商创新可以作为 extension 的 reduced-form facts，不作为基准宏观模型的必要部分。

---

## 15. 反事实设计

### Counterfactual 1：No local policy competition

设：

\[
s_{r,t}=0\quad \forall r,t
\]

或保留中央统一政策但取消地方差异化扩张补贴。

回答：

- 产能是否下降？
- 价格是否上升？
- 消费者剩余是否下降？
- 企业利润是否上升？
- 财政成本是否下降？
- 产能利用率和总福利如何变化？

### Counterfactual 2：Centralized planner industrial policy

中央选择：

\[
\{s_{r,t}\}_{r=1}^R
\]

最大化全国福利。

回答：

- 哪些地区应发展 NEV？
- 哪些地区不应重复建设？
- 最优产能分布如何？
- 相对地方分散均衡的福利增益是多少？
- 资本错配下降多少？

这是最重要的 counterfactual。

### Counterfactual 3：Subsidy cap / anti-duplication rule

政策上限：

\[
s_{r,t}\leq \bar s
\]

或产能扩张约束：

\[
H^N_{r,t}\leq \bar H^N_{r,t}
\]

回答：限制地方重复补贴和重复产能是否提高总福利。

### Counterfactual 4：Faster exit / consolidation

降低退出摩擦：

\[
ExitCost\downarrow
\]

或提高低效率企业退出概率。

回答：

- 企业数量是否下降？
- 平均生产率是否上升？
- 价格是否上升？
- 产能利用率是否提高？
- 总福利如何变化？

### Counterfactual 5：Expansionary vs productivity-enhancing policy

扩展中区分：

\[
s^E_{r,t}: \text{进入/投资/产能扩张支持}
\]

\[
s^P_{r,t}: \text{研发/标准/协同/关键技术支持}
\]

比较：

> 补企业进入更有效，还是补公共平台、基础研发和产业链协同更有效？

---

## 16. 供应链与创新扩展

基准宏观模型先不加入供应商账期和创新，否则模型过重。但供应链机制可以作为第二阶段扩展或第二篇文章。

扩展链条：

```text
地方政策竞争
→ 过度进入和产能扩张
→ 价格战与整车厂利润压缩
→ 整车厂向供应商转嫁压力
→ 供应商账期拉长 / 采购价格下降
→ 供应商现金流约束加剧
→ R&D 和专利质量下降
```

供应商账期：

\[
T_{sjt}=T_0+	heta_1PriceWar_{jt}+\theta_2BargainingPower_j-\theta_3BargainingPower_s
\]

供应商现金流：

\[
CF^S_{s,t}=Revenue_{s,t}-Cost_{s,t}-Receivables_{s,t}
\]

创新质量：

\[
q_{s,t+1}=(1-\delta_q)q_{s,t}+A_sR_{s,t}^{\eta}
\]

现金流约束：

\[
R_{s,t}\leq \lambda CF^S_{s,t}
\]

推出：

\[
PriceWar_{jt}\uparrow
\Rightarrow
T_{sjt}\uparrow
\Rightarrow
CF^S_{s,t}\downarrow
\Rightarrow
R_{s,t}\downarrow
\Rightarrow
q_{s,t+1}\downarrow
\]

这适合作为机制扩展，而不是基准 GE 模型。

---

## 17. 不建议采用的路线

### 17.1 不建议一开始做 BLP

BLP 能估计需求弹性、替代关系、markup 和消费者福利，但它会把论文重心带到“新能源汽车需求系统估计”。目前主问题不是需求估计，而是：

```text
地方政策竞争
→ 过度进入和产能扩张
→ 价格/利润/产能利用率变化
→ aggregate misallocation
```

如果以后有高质量车型—城市—月份价格、销量和特征数据，可以在扩展中做 nested logit 或 BLP，但不作为主模型。

### 17.2 不建议一开始做完整 DSGE

本文不是商业周期、货币政策或标准财政冲击模型。更合适的是 deterministic dynamic GE：

```text
给定初始状态
→ 地方政策竞争
→ 企业进入和产能积累
→ 市场出清
→ 价格、利润、MPK 和福利变化
→ 长期稳态和转移路径比较
```

如果后续加入需求冲击、生产率冲击或政策冲击，再接近 DSGE。

### 17.3 不建议基准模型直接做完整生产网络

生产网络很重要，但应放在 extension。第一版保留 NEV vs Other 两部门已经足够解释资本错配和产能过剩。

---

## 18. 求解策略

### Step 1：静态 / 稳态解析模型

先做：

```text
对称 R 地区
一个政策 wedge
NEV / Other 两部门
逆需求
资本成本扭曲
地方 Nash vs planner
```

目标证明：

\[
s^D>s^P
\]

\[
K_N^D>K_N^P
\]

\[
MPK_N^D<MPK_O^D
\]

### Step 2：确定性动态 transition

加入：

\[
H^N_{r,t+1}=(1-\delta_H)H^N_{r,t}+I^H_{r,t}
\]

\[
A^N_{r,t+1}=(1-\delta_A)A^N_{r,t}+\psi_L(Q^N_{r,t})^{\nu}+\psi_G(\bar Q^N_t)^{\nu}
\]

做政策路径、产能扩张、价格、利用率、MPK 和 welfare 的转移路径。

### Step 3：异质性企业和退出阈值

加入生产率分布 \(\mu_t(z)\)、进入/退出阈值和企业价值函数。

### Step 4：再考虑 VFI / projection / collocation

如果企业异质性和动态退出较复杂，可用 Julia 做 VFI 或 projection。不要一开始上 VFI，也不要用 Dynare 处理容量约束 kink 和非线性大反事实。

---

## 19. 最小闭合模型的 8 个核心方程

最小模型必须至少写清楚：

1. Household Euler equation；
2. Final resource constraint；
3. Firm production；
4. Firm entry / exit condition；
5. Policy distortion：\(R^N_{r,t}=r_t-\phi s_{r,t}\)；
6. Capacity law of motion；
7. Local government objective with adjustment cost；
8. Market clearing / planner allocation。

如果这 8 个方程不闭合，就还只是 outline，不是完整模型。

---

## 20. 可直接写进 proposal 的核心段落

### 中文版

本文构建一个多地区、两部门、异质性企业的动态一般均衡模型，研究新能源汽车产业政策在地方分散化执行下如何影响进入、产能、价格、资本配置和总量福利。模型中，地方政府选择地区—部门层面的扩张型政策 wedge，该 wedge 综合刻画补贴、土地支持、信贷支持、产业基金和投资便利等政策工具，并降低新能源汽车部门的有效资本成本。政策一方面扩大新能源汽车产出，并通过学习效应、市场培育和产业链协同提高未来生产率；另一方面，它也会推动资本和企业继续流入新能源汽车部门。当总产能超过有效需求，或新能源汽车部门资本边际产出低于其他部门时，社会规划者会降低扩张型政策强度，并转向协调、出清和质量提升型治理。但在地方分散化均衡中，地方政府内部化本地产值、投资、就业和税基收益，却不完全内部化全国性产能过剩和资本错配成本。由于政策调整存在成本，且地方政府围绕同一战略性产业竞争，扩张型政策 wedge 相对于社会最优退出过慢，最终导致过度进入、产能利用率下降、价格和利润压缩以及总量资源错配。

### English version

This paper develops a multi-region, two-sector dynamic general equilibrium model with heterogeneous firms to study how decentralized industrial policy shapes entry, capacity, prices, capital allocation, and aggregate welfare in China’s NEV industry. Local governments choose a region-sector-specific expansionary policy wedge that summarizes subsidies, land support, credit support, industrial funds, and investment facilitation. The wedge lowers the effective capital cost in the NEV sector. On the one hand, the policy expands NEV production and generates learning-by-doing, market creation, and supply-chain coordination externalities. On the other hand, it also encourages capital and firms to keep flowing into the NEV sector. When aggregate capacity exceeds effective demand or the marginal product of capital in NEV falls below that in the outside sector, a social planner reduces the expansionary wedge and shifts toward coordination, exit, and quality-enhancing governance. In the decentralized equilibrium, however, local governments internalize local output, investment, employment, and tax-base gains but not national overcapacity and capital misallocation. Because policy adjustment is costly and local governments compete for the same strategic industry, the expansionary wedge declines too slowly relative to the social optimum, generating over-entry, low capacity utilization, price and profit compression, and aggregate misallocation.

---

## 21. 后续工作清单

### 文件 1：Model memo

需要写成 5–8 页，包括：

1. 模型动机；
2. 经济环境；
3. 家庭；
4. 企业；
5. 产能和需求；
6. 地方政府；
7. planner；
8. 均衡定义；
9. 命题；
10. moments；
11. counterfactuals。

### 文件 2：数据和 moments 清单

按参数列出数据需求，尤其是：

```text
policy-entry elasticity
policy-investment elasticity
capacity utilization
MPK gap between NEV and Other
demand elasticity
fiscal cost
learning-by-doing
policy inertia
firm exit / loss persistence
```

### 文件 3：reduced-form facts

先做事实，不急着求解大模型：

1. 政策强度 → 企业进入 / 车型数量 / 产能扩张；
2. 政策强度 → 利用率下降 / 库存上升 / 价格下降；
3. 过剩产能暴露 → 利润率下降 / MPK 下降；
4. 政策惯性 → 产能过剩后政策退出较慢；
5. 扩展：价格战暴露 → 供应商账期 / 研发 / 专利质量。

---

## 22. 最终版本的研究主线

最终主线应是：

> **产业政策不是简单有效或无效。它的福利效果取决于产业状态与政策工具的匹配。新能源汽车产业政策在学习外部性、市场培育和产业链协同不足时具有动态收益；但在地方政府围绕同一战略性产业进行分散化竞争时，扩张型政策工具可能被过度使用。地方政府内部化本地投资、就业和税基收益，却不完全内部化全国性产能闲置和资本错配成本。政策调整摩擦进一步导致扩张型 wedge 退出过慢，最终形成过度进入、产能利用率下降、价格和利润压缩，以及 aggregate misallocation and welfare loss。**

