# Notes：内卷在 NEV 宏观模型中的位置

## 1. 核心判断

在这个 NEV 宏观模型中，**内卷不是一个外生冲击，也不是一个单独的原始变量**，而是地方分散化产业政策竞争生成的一组均衡结果。

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

因此，模型中不应写：

\[
Involution_t = \varepsilon_t^{involution}
\]

也不应把内卷处理成外生冲击。更好的处理方式是：

\[
Involution_t
=
f(s_t^D-s_t^P,\ H_t^{N,D}-H_t^{N,P},\ u_t^{N,P}-u_t^{N,D},\ MPK_t^{O,D}-MPK_t^{N,D},\ W^P-W^D).
\]

---

## 2. 第一层：地方政府博弈中的“政策内卷”

内卷首先体现在地方政府的政策选择上。

地方政府选择地区 \(r\) 的 NEV 扩张型产业政策 wedge：

\[
s_{r,t}.
\]

该 wedge 综合代表地方补贴、低价土地、产业基金、信贷支持、园区招商、投资便利、税费优惠等扩张型政策。

地方政府目标函数可以写成：

\[
V_{r,t}^L=
\omega_Y Y_{r,t}^N+
\omega_I I_{r,t}^N+
\omega_E L_{r,t}^N+
\omega_T Tax_{r,t}
-C(s_{r,t}).
\]

其中，地方政府内部化的是本地收益：

\[
Y_{r,t}^N,\quad I_{r,t}^N,\quad L_{r,t}^N,\quad Tax_{r,t}.
\]

但地方政府没有完全内部化全国层面的：

\[
IdleCapacity_t,\quad Misallocation_t,\quad MPK_t^N-MPK_t^O.
\]

因此，分散均衡可能出现：

\[
s_{r,t}^{D}>s_{r,t}^{P}.
\]

这里：

- \(D\)：decentralized local-government equilibrium；
- \(P\)：planner allocation。

这就是模型中的**政策内卷**：

> 每个地方政府从本地角度看都有理由支持 NEV，但所有地方同时支持后，全国扩张型政策 wedge 被过度叠加。

如果没有地方政府博弈，模型只能说：

\[
s_{r,t} \rightarrow K_{r,t}^N,H_{r,t}^N,Y_{r,t}^N.
\]

即“政策影响投资和产能”。  
但有了地方政府博弈，模型才能解释：

\[
\{s_{r,t}\}_{r=1}^R
\]

如何共同导致全国性的重复建设和资源错配。

---

## 3. 第二层：企业进入与产能中的“投资内卷”

政策 wedge 进入企业问题：

\[
R_{r,t}^N=R_t-\phi s_{r,t},
\]

或者：

\[
F_{r,t}^N=F_0^N-\phi_F s_{r,t}.
\]

也就是说，地方政策降低 NEV 部门的有效资本成本或进入成本。

因此：

\[
\frac{\partial K_{r,t}^N}{\partial s_{r,t}}>0,
\]

\[
\frac{\partial \bar z_{r,t}^N}{\partial s_{r,t}}<0.
\]

其中，\(\bar z_{r,t}^N\) 是进入 NEV 部门所需的生产率阈值。政策越强，进入门槛越低。

分散均衡中可能出现：

\[
K_{r,t}^{N,D}>K_{r,t}^{N,P},
\]

\[
N_{r,t}^{D}>N_{r,t}^{P},
\]

\[
H_{r,t}^{N,D}>H_{r,t}^{N,P}.
\]

这就是**投资内卷 / 进入内卷**：

> 地方政策降低进入门槛，使更多企业、项目、车型和产能进入 NEV 部门，其中一部分在社会规划者看来并不应该进入。

这一步把内卷从“政策竞争”推进到“企业进入和产能扩张”。

---

## 4. 第三层：产能利用率中的“过剩产能内卷”

产能动态为：

\[
H_{r,t+1}^N=(1-\delta_H)H_{r,t}^N+I_{r,t}^H.
\]

产能利用率为：

\[
u_{r,t}^N=\frac{Q_{r,t}^N}{H_{r,t}^N}.
\]

当地方政策推动产能扩张，但有效需求没有同步增长时：

\[
\sum_r H_{r,t}^N>D_t^N.
\]

于是：

\[
u_{r,t}^N<1.
\]

这就是模型中最直接的“内卷”状态：

\[
H_t^N>D_t^N(P_t^N).
\]

也就是：

> **全国产能超过有效需求，产能约束不再绑定，产能利用率下降。**

需要注意的是，模型不能简单设定“产能闲置后投资自动停止”。内卷的关键恰恰是：

> 即使社会边际回报下降，地方政策 wedge 和调整摩擦仍可能使企业或地方继续投资。

因此，excess-capacity regime 不应被设定为投资停止状态，而应被设定为：

\[
H_t^N>D_t^N(P_t^N),\quad u_t^N<1,
\]

但地方分散化政策仍可能维持较高投资和较高 \(s_{r,t}\)。

---

## 5. 第四层：产品市场中的“价格战内卷”

仅仅定义产能过剩还不够。若模型只有：

\[
OC_t=\max\{0,\sum_r H_{r,t}^N-D_t^N\},
\]

那只是定义了 overcapacity，并没有解释为什么会出现价格下降、利润压缩和企业亏损。

因此，产品市场模块必须进入模型。

基准模型可以使用逆需求：

\[
P_t^N=\mathcal D(Q_t^N),\quad \mathcal D'(\cdot)<0.
\]

全国 NEV 产量为：

\[
Q_t^N=\sum_r q_{r,t}^N.
\]

企业利润为：

\[
\pi_{r,t}^N=
P_t^N q_{r,t}^N
-w_t L_{r,t}^N
-R_{r,t}^N K_{r,t}^N
-FC_{r,t}^N.
\]

当地方政策导致供给和产能扩张，而需求增长有限时：

\[
Q_t^N\uparrow
\Rightarrow
P_t^N\downarrow
\Rightarrow
\pi_{r,t}^N\downarrow.
\]

这就是**价格战内卷 / 利润压缩内卷**。

在模型语言中，价格战不是一个外生事件，而是：

> 分散化政策竞争、过度进入和过度产能共同导致的产品市场均衡结果。

---

## 6. 第五层：资本回报中的“宏观资源错配”

宏观文章不能只停留在“价格战”或“利润下降”。必须把内卷翻译成 aggregate misallocation。

两部门结构的作用就在这里。模型需要比较：

\[
MPK_{r,t}^N
\quad \text{and} \quad
MPK_{r,t}^O.
\]

如果分散化政策竞争导致资本过度流入 NEV，则可能出现：

\[
MPK_{r,t}^{N,D}<MPK_{r,t}^{O,D}.
\]

同时：

\[
K_{r,t}^{N,D}>K_{r,t}^{N,P}.
\]

这就是宏观意义上的内卷：

> 资本、土地、信贷和企业家能力过度集中于 NEV 部门，而其他部门的资本边际回报更高。

最终，模型应该能够推出：

\[
TFP^D<TFP^P,
\]

\[
W^D<W^P.
\]

这也是为什么两部门结构重要。  
如果模型只有 NEV 一个部门，只能说：

> NEV 内部产能多、价格低、利润低。

但有了 outside sector，才能说：

> NEV 政策竞争导致跨部门资本错配和 aggregate welfare loss。

---

## 7. 第六层：政策退出慢导致“动态内卷”

内卷还体现在动态调整上。

政策不是固定不变的，而是状态依赖的：

\[
s_{r,t}=s(Z_{r,t},Z_t).
\]

但地方政府调整慢于 planner：

\[
s_{r,t}^D>s_{r,t}^P,
\]

尤其当：

\[
H_t^N>D_t^N
\quad \text{or} \quad
MPK_t^N<MPK_t^O.
\]

社会规划者会更快降低扩张型政策：

\[
s_t^P\downarrow.
\]

但地方政府因为本地投资、就业、税基、招商承诺和“不愿率先退出”等原因，仍可能维持较高政策强度。

政策调整摩擦可以写成：

\[
\frac{\chi_s}{2}(s_{r,t}-s_{r,t-1})^2.
\]

因此，内卷不是：

> 政策永远不退出。

而是：

> 政策退出太慢、退出不充分、退出慢于产业状态变化。

更准确的动态机制是：

\[
\text{产业状态变化}
\Rightarrow
\text{planner 降低扩张型 wedge}
\Rightarrow
\text{local governments 调整较慢}
\Rightarrow
\text{扩张型 wedge 在过剩状态下仍偏高}
\Rightarrow
\text{过度投资、低利用率和资本错配}.
\]

---

## 8. 是否需要定义一个“内卷指数”？

可以，但不建议在主模型中过度依赖一个 composite index。

更好的做法是把内卷定义为相对于 planner 的一组均衡差距：

\[
Involution_t
=
\left(
s_t^D-s_t^P,\ 
H_t^{N,D}-H_t^{N,P},\
u_t^{N,P}-u_t^{N,D},\
MPK_t^{O,D}-MPK_t^{N,D},\
W^P-W^D
\right).
\]

如果需要一个 scalar index，可以写成：

\[
\mathcal I_t
=
\lambda_s(s_t^D-s_t^P)
+
\lambda_H(H_t^{N,D}-H_t^{N,P})
+
\lambda_u(u_t^{N,P}-u_t^{N,D})
+
\lambda_M(MPK_t^{O,D}-MPK_t^{N,D})
+
\lambda_W(W^P-W^D).
\]

但主文最好不要真的估计这个 composite index。原因是：

1. 权重 \(\lambda\) 难以识别；
2. 容易显得人为；
3. 不如直接报告各个可解释的机制变量；
4. 顶刊经济学文章更偏好清晰的机制分解，而不是自造综合指数。

因此，主文中建议把内卷拆成几个可检验结果。

---

## 9. 模型层面与实证变量的对应

| 模型层面 | 内卷表现 | 可检验变量 |
|---|---|---|
| 地方政府博弈 | 政策支持过度 | 政策强度、补贴、产业基金、园区、招商项目 |
| 企业进入 | 过度进入 | 企业进入、车型数量、产能项目、注册企业数 |
| 产能模块 | 产能超过需求 | 产能利用率、库存、产销比、capacity gap |
| 产品市场 | 价格战和利润压缩 | 价格、折扣、毛利率、净利率、markup |
| 资源配置 | 资本错配 | MPK gap、MRPK dispersion、TFP loss |
| 动态调整 | 政策退出慢 | 政策惯性、过剩后继续补贴、政策调整滞后 |

---

## 10. 建议在论文中使用的英文表述

可以在模型部分写：

> **Involution is not modeled as an exogenous shock. It is an equilibrium outcome of decentralized local industrial policy. In the model, local governments choose expansionary NEV policy wedges to maximize local output, investment, employment, and tax-base gains. Because they do not fully internalize national excess capacity, price compression, and cross-sector capital misallocation, the decentralized equilibrium features excessive policy support, over-entry, excessive capacity, lower utilization, lower NEV prices and profits, and a lower marginal product of capital in NEV relative to the outside sector. I refer to this joint equilibrium pattern as industrial involution.**

---

## 11. 建议在论文中使用的中文表述

中文可以写成：

> **本文不把“内卷”设定为一个外生冲击，而是将其定义为地方分散化产业政策竞争的均衡结果。在模型中，地方政府选择扩张型 NEV 政策 wedge，以最大化本地产值、投资、就业和税基收益。由于地方政府不完全内部化全国层面的产能过剩、价格压缩和跨部门资本错配，分散均衡表现为政策支持过度、企业过度进入、产能过度扩张、产能利用率下降、NEV 价格和利润压缩，以及 NEV 部门资本边际回报低于其他部门。本文将这一组均衡现象定义为产业内卷。**

---

## 12. 最终结论

内卷在模型中不是一个单独模块，而是贯穿以下四个核心模块：

\[
\text{local policy game}
\Rightarrow
\text{entry and capacity}
\Rightarrow
\text{product-market price/profit compression}
\Rightarrow
\text{aggregate misallocation}.
\]

最重要的模型对象包括：

\[
s_{r,t}^{D}-s_{r,t}^{P},
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

因此，本文对“内卷”的正式经济学定义应是：

> **地方分散化产业政策竞争所导致的、相对于社会规划者配置的政策过度、进入过度、产能过度、价格/利润压缩和跨部门资本错配。**
