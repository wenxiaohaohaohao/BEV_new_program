# Notes：地方政府博弈在 NEV 宏观模型中的位置与求解策略

## 1. 核心判断

地方政府之间的博弈在该模型中非常重要，但需要区分：

- **经济学机制上**：地方政府博弈是核心机制。
- **数值计算上**：不应把政府博弈做得过度复杂。

本文要解释的不是单个地方政府为什么支持新能源汽车，而是：

> 每个地方政府从本地角度看都有理由支持 NEV，但所有地方同时支持同一产业后，会在全国层面形成重复建设、产能过剩和资本错配。

因此，模型必须包含 decentralized local-government policy game。

---

## 2. 为什么地方政府博弈是核心机制？

如果没有地方政府博弈，模型只能说明：

$$
s_{r,t} \rightarrow K_{r,t}^N,H_{r,t}^N,Y_{r,t}^N
$$

即“政策提高投资和产能”。

但本文真正需要解释的是：

$$
\{s_{r,t}\}_{r=1}^R
$$

如何共同决定全国 NEV 产能、价格、利润、资本回报和福利。

地方政府最大化本地目标：

$$
V_{r,t}^L=
\omega_Y Y_{r,t}^N+
\omega_I I_{r,t}^H+
\omega_E L_{r,t}^N+
\omega_T Tax_{r,t}
-\frac{\kappa}{2}s_{r,t}^2
-\frac{\chi_s}{2}(s_{r,t}-s_{r,t-1})^2.
$$

但全国性过剩产能是：

$$
IdleCapacity_t=
\max\left\{0,\sum_r H_{r,t}^N-D_t^N\right\}.
$$

地方政府没有完全内部化：

$$
\frac{\partial IdleCapacity_t}{\partial s_{r,t}},
\quad
\frac{\partial Misallocation_t}{\partial s_{r,t}},
\quad
\frac{\partial P_t^N}{\partial s_{r,t}}.
$$

因此分散均衡中可能出现：

$$
s_{r,t}^{D}>s_{r,t}^{P},
$$

$$
H_{r,t}^{N,D}>H_{r,t}^{N,P},
$$

$$
MPK_{r,t}^{N,D}<MPK_{r,t}^{O,D}.
$$

这正是文章的核心宏观机制。

---

## 3. 没有政府博弈，文章会变弱

如果把地方政策设成外生过程：

$$
s_{r,t}=\rho_s s_{r,t-1}+\varepsilon_{r,t},
$$

模型只能说明：

> 政策冲击导致产能扩张。

但无法解释：

1. 为什么地方政府会系统性地过度支持同一产业；
2. 为什么政策退出慢于社会最优；
3. 为什么每个地方单独看都合理，但全国加总后形成内卷；
4. 为什么 decentralized equilibrium 和 planner allocation 不一致。

因此，地方政府博弈是将文章从普通产业政策模型提升为：

> **分散化产业政策与总量错配模型**

的关键结构。

---

## 4. 政府博弈不应过度复杂

基准模型不建议直接做 31 个省份的高维动态 Nash game。更合理的第一版设定是：

### 方案 A：两类地区

$$
r\in\{H,L\}
$$

其中：

- $H$：产业基础强、财政能力强、供应链基础较好；
- $L$：产业基础较弱，但也参与 NEV 政策竞争。

地方政府选择：

$$
s_H,\quad s_L.
$$

Nash 均衡满足：

$$
F_H(s_H,s_L)=0,
$$

$$
F_L(s_H,s_L)=0.
$$

这已经足以表达地方政府之间的政策竞争。

### 方案 B：对称地区

也可以先设定 $R$ 个对称地区，并求对称 Nash 均衡：

$$
s_1=s_2=\cdots=s_R=s^D.
$$

这种设定更便于解析推导。

---

## 5. 多重 Nash 均衡是一个真实风险

政府博弈可能存在多个均衡，尤其是在政策存在战略互补时。

### 情况一：战略替代

如果其他地区大量补贴和扩产会降低全国价格和利润，本地区可能减少支持：

$$
\frac{\partial BR_r(s_{-r})}{\partial s_{-r}}<0.
$$

此时均衡通常更容易唯一。

### 情况二：战略互补

如果其他地区加大支持会使本地政府担心企业、投资、供应链和税基被抢走，本地政府也提高支持：

$$
\frac{\partial BR_r(s_{-r})}{\partial s_{-r}}>0.
$$

此时可能出现多个均衡：

| 均衡类型 | 经济含义 |
|---|---|
| 低支持均衡 | 各地克制，不重复扩张 |
| 高支持均衡 | 各地竞相补贴，形成产能竞赛 |
| 非对称均衡 | 部分地区扩张，部分地区退出 |

新能源汽车“内卷式竞争”更接近：

> 高支持均衡或政策退出失败的均衡。

---

## 6. 数值求解策略：网格搜索 + nlsolve

直接从任意初始值开始用 `nlsolve` 风险较大，因为可能收敛到错误均衡或经济意义较弱的均衡。

更稳健的做法是：

### Step 1：粗网格搜索

在政策空间上设置网格：

$$
s_H\in[0,\bar{s}],\quad s_L\in[0,\bar{s}].
$$

计算每个点的一阶条件残差：

$$
F_H(s_H,s_L),
\quad
F_L(s_H,s_L).
$$

寻找残差接近零或符号变化的位置。

### Step 2：多初始值 Newton / nlsolve

用网格搜索发现的候选点作为初始值：

$$
(s_H^{0,m},s_L^{0,m}),
\quad m=1,\ldots,M.
$$

然后使用 `nlsolve` 精确求解。

### Step 3：检查是否是真正 Nash 均衡

每个候选均衡都要检查：

1. 一阶条件残差是否足够接近零；
2. 二阶条件是否满足；
3. 各地区是否不存在 profitable deviation；
4. 政策强度是否在可行区间；
5. 对应的价格、产能、利用率和 MPK 是否经济上合理。

### Step 4：明确均衡选择规则

如果存在多个均衡，不能任意选择。需要说明均衡选择规则。

可选规则包括：

| 选择规则 | 适用逻辑 |
|---|---|
| 稳定均衡 | best-response iteration 会收敛到该均衡 |
| 历史路径选择 | 选择离上一期政策状态 $s_{t-1}$ 最近的均衡 |
| 高支持均衡 | 用于刻画地方政策竞赛和内卷 |
| 数据匹配均衡 | 选择最能匹配现实政策强度的均衡 |
| 福利上下界 | 用不同均衡给出稳健性区间 |

对于本文，最自然的选择规则是：

$$
\text{equilibrium selected by previous policy state } s_{t-1}.
$$

因为模型中已经包含政策调整摩擦：

$$
\frac{\chi_s}{2}(s_{r,t}-s_{r,t-1})^2.
$$

这意味着均衡具有历史依赖性。地方政府不是每期从零开始选择政策，而是在既有产业园、基金、招商协议、基础设施和地方财政承诺基础上调整。

---

## 7. 不要让多重均衡变成主战场

多重均衡是重要的计算和稳健性问题，但不应成为论文主线。

论文主线仍应是：

$$
\text{local objectives}
\Rightarrow
s^D>s^P
\Rightarrow
over-entry
\Rightarrow
excess capacity
\Rightarrow
low utilization / low MPK
\Rightarrow
welfare loss.
$$

主文中可以简洁表述：

> The decentralized equilibrium is a Markov-Nash equilibrium among local governments. In the baseline quantitative exercise, we restrict attention to stable equilibria selected by the previous-period policy state.

附录中再详细说明：

1. 粗网格搜索；
2. 多初始值 `nlsolve`；
3. 稳定性检查；
4. 多重均衡时的选择规则；
5. 其他均衡下的稳健性结果。

---

## 8. 推荐的基准建模强度

| 模块 | 是否需要 | 理由 |
|---|---:|---|
| 地方政府目标函数 | 必须 | 解释本地收益和全国成本错位 |
| Markov-Nash equilibrium | 必须 | 正式刻画地方政策竞争 |
| Planner benchmark | 必须 | 核心比较是 decentralized vs planner |
| 多重均衡检查 | 应该有 | 保证数值稳健性 |
| 31 省高维动态博弈 | 不建议基准做 | 计算过重，容易失控 |
| Stackelberg 中央—地方博弈 | 不建议基准做 | 可作为扩展 |
| 完整财政竞争模型 | 不建议基准做 | 会偏离本文主线 |

---

## 9. 最终结论

地方政府博弈是本文的核心结构。没有它，文章只能讲“政策导致产能扩张”；有了它，文章才能解释：

> 地方政府分散化执行使扩张型产业政策在全国层面被过度使用，从而导致产能过剩、价格和利润压缩、资本错配和福利损失。

但计算上必须克制。最合适的处理是：

> 基准模型使用低维 Markov-Nash 政府博弈；数值上先用粗网格搜索定位候选均衡，再用 Newton / nlsolve 精确求解；如果存在多重均衡，则采用基于历史政策状态和稳定性的均衡选择规则，并在附录中报告稳健性。
