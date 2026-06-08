# Module 4: Planner Problem and Full Equilibrium Definition

## 1. Purpose

This module records:
- The social planner's optimization problem (normative benchmark).
- The full equilibrium definition (8 conditions).

The local government game is in Module 3.

---

## 2. Planner problem [Accepted baseline]

The planner maximizes aggregate household welfare:

$$\max_{\{s_{r,t}^P, I_{r,t}^H, K_{r,t}^j\}} \sum_{t=0}^{\infty} \beta^t U(C_t, L_t)$$

subject to:
- Production function constraints for all firms
- Capacity law of motion: $H_{r,t+1}^N = (1-\delta_H)H_{r,t}^N + I_{r,t}^H$
- Learning law of motion: $A_{r,t+1}^N = (1-\delta_A)A_{r,t}^N + \psi_L(Q_{r,t}^N)^\nu + \psi_G(\bar{Q}_t^N)^\nu$
- Product market demand: $P_t^N = \mathcal{D}(Q_t^N)$
- Government budget constraint
- Economy-wide resource constraint

**The planner is NOT a no-policy benchmark.**

The planner chooses state-contingent policy:

$$s_{r,t}^P = s^P(Z_{r,t}, Z_t)$$

**What the planner internalizes that local governments do not:**

1. Cross-region learning spillovers ($\psi_G$ term in LBD)
2. National excess capacity cost: when $H_t^{N,D} > D_t^N$, idle capacity wastes resources
3. National capital misallocation: $MPK_t^O - MPK_t^N > 0$ implies TFP loss

**Planner's state-contingent optimum:**

In the early phase (large learning externality, low $A^N$, low $H^N$): $s^P > 0$

In the mature phase (high $H^N/D^N$, high $MPK^O - MPK^N$): $s^P \to 0$

The transition point is the key quantitative result. The decentralized equilibrium crosses
this transition point too slowly (due to $\chi_s > 0$ and local incentives).

---

## 3. Full equilibrium: 8 conditions [Accepted baseline]

A decentralized equilibrium is a sequence of prices, quantities, and policies
$\{P_t^j, Q_{r,t}^j, K_{r,t}^j, L_{r,t}^j, H_{r,t}^N, A_{r,t}^N, s_{r,t}^D\}$ satisfying:

**Condition 1: Household FOC**
Euler equation for consumption-saving and intratemporal labor supply condition.

**Condition 2: Firm FOC**
Capital demand: $MPK_{r,t}^j = R_{r,t}^j$ for $j \in \{N, O\}$
Labor demand: $MPN_{r,t}^j = W_{r,t}$
Capacity investment: $\text{(Tobin's Q condition for } I_{r,t}^H\text{)}$

**Condition 3: Local government FOC**

$$\frac{\partial \mathcal{L}_r}{\partial s_{r,t}} = 0$$

(First-order condition of the local government's Lagrangian with respect to $s_{r,t}$)

**Condition 4: Markov-Nash best-response**

$$s_{r,t}^D = BR_r(s_{-r,t}^D; Z_{r,t}, Z_t) \quad \forall r$$

**Condition 5: Market clearing**

Goods: $Y_t = C_t + \sum_r (I_{r,t}^K + I_{r,t}^H) + \text{costs}$
Labor: $\sum_r (L_{r,t}^N + L_{r,t}^O) = L_t$ (household labor supply)
Capital: $\sum_r (K_{r,t}^N + K_{r,t}^O) = K_t$

**Condition 6: Laws of motion**

$$H_{r,t+1}^N = (1-\delta_H)H_{r,t}^N + I_{r,t}^H$$

$$A_{r,t+1}^N = (1-\delta_A)A_{r,t}^N + \psi_L(Q_{r,t}^N)^\nu + \psi_G(\bar{Q}_t^N)^\nu$$

**Condition 7: Government budget constraint**

Local government's policy cost $\frac{\kappa}{2}s_{r,t}^2$ must be financed
(lump-sum tax on households, or central transfer — to be specified in calibration).

**Condition 8: Resource constraint**

$$Y_t = C_t + \sum_r I_{r,t}^H + I_t^K + \frac{\kappa}{2} \sum_r s_{r,t}^2
+ \text{AdjCost}_t + \text{IdleCost}_t$$

---

## 4. Open questions

*(E.g.: How to specify the government budget constraint empirically?
Is capital fully mobile across regions in the baseline?)*

---

## 5. Imported previous notes

> Historical source:
> [`NEV_产业政策_地方竞争_模型整合notes.md`](../legacy/model_drafts/NEV_产业政策_地方竞争_模型整合notes.md),
> Sections 9-12 (Government, Planner, Equilibrium, and Market clearing).

### 5.1 市场出清与一般均衡闭合 (from 整合 notes Sec. 11)

资本市场：$\sum_{r,j,i}k^j_{i,r,t}+\sum_r H^N_{r,t}=K_t$，或将产能资本并入部门资本，简化为 $\sum_{r,j}K^j_{r,t}=K_t$

劳动市场：$\sum_{r,j,i}l^j_{i,r,t}=L_t$

NEV 产品市场：$\sum_r Q^N_{r,t}=D^N_t(P^N_t)$，或在存在过剩产能时 $Q^N_t=\min\{\sum_r H^N_{r,t},D^N_t(P^N_t)\}$

最终品市场 / 资源约束：$Y_t=C_t+I^K_t+\sum_r I^H_{r,t}+PolicyCost_t+AdjustmentCost_t+IdleCost_t$

有市场出清，模型才是一般均衡；否则只是局部均衡或行业模型。

### 5.2 均衡定义 (from 整合 notes Sec. 12)

**Decentralized equilibrium:** 给定初始状态 $\{K_0, H^N_{r,0}, A^N_{r,0}, s_{r,-1}, \mu_{r,0}(z)\}_r$，一个 decentralized equilibrium 是一组路径 $\{C_t, K_{t+1}, L_t, w_{r,t}, r_t, p^N_t, p^O_t, s_{r,t}, N^N_{r,t}, H^N_{r,t}, Q^N_{r,t}\}_{t=0}^{\infty}$ 满足：

1. 家庭最大化效用
2. 企业选择进入、退出、资本、劳动和产能投资以最大化价值
3. 地方政府在给定其他地区政策和 aggregate prices 下最大化本地目标
4. 劳动市场、资本市场和产品市场清算
5. 政府预算约束满足
6. 产能和生产率动态满足
7. 每个地区政府的政策是 Nash equilibrium：$s^D_{r,t}=BR_r(s^D_{-r,t})$

**Planner allocation:** 与 decentralized 的区别不是有没有产业政策，而是：Planner 会继续支持存在学习外部性和比较优势的地区/企业，但会限制低效率重复进入和过度产能。

### 5.3 核心命题 (from 整合 notes Sec. 13)

**Proposition 1:** 当 NEV 部门存在较强学习外部性、市场培育约束和产业链协同不足时，适度产业政策可以提高动态福利。

**Proposition 2:** 若地方政府重视本地 NEV 产值、投资、就业和税基，但不完全内部化全国性产能过剩和资本错配，则 $s^D_{r,t} > s^P_{r,t}$，尤其在 $H^N_t > D^N_t$ 或 $MPK^N_t < MPK^O_t$ 的状态下。

**Proposition 3:** 由于政策降低进入阈值或有效资本成本，分散均衡相对 planner 有过度的进入、产能和更低的利用率。

**Proposition 4:** 在逆需求下，若地方政策导致总供给/产能相对需求过快增长，则价格下降、利润压缩、亏损退出压力增大。

**Proposition 5:** 若分散均衡使 NEV 部门资本边际回报低于其他部门，则存在资本错配，可能导致 TFP 和福利下降。

**Proposition 6:** 当产能利用率低于阈值或 NEV 部门 MPK 低于 outside sector 时，planner 会更快降低扩张型政策。原因包括：本地投资/就业/税基收益、全国过剩产能未被完全内部化、政策调整成本、招商承诺/园区投资/地方债务惯性、地方政府不愿在竞争中率先退出。
