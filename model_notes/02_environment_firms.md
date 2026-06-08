# Module 2: Environment, Household, Final Good, Firms, LBD

## 1. Purpose

This module records the basic building blocks of the model:
environment, household optimization, final good aggregation,
firm production and dynamics, and learning externalities.

---

## 2. Environment [Accepted baseline]

- **Time:** discrete, $t = 0, 1, 2, \ldots$
- **Regions:** $r = 1, \ldots, R$
- **Sectors:** $j \in \{N, O\}$ (NEV sector and outside sector)
- **Agents:** household, heterogeneous firms, local governments, social planner

---

## 3. Representative household [Accepted baseline]

$$\max \sum_{t=0}^{\infty} \beta^t U(C_t, L_t)$$

Standard Euler equation and labor supply condition apply.

---

## 4. Final good [Accepted baseline]

**CES aggregator:**

$$Y_t = \left[ \eta \left(Y_t^N\right)^{\frac{\varepsilon-1}{\varepsilon}}
+ (1-\eta) \left(Y_t^O\right)^{\frac{\varepsilon-1}{\varepsilon}} \right]^{\frac{\varepsilon}{\varepsilon-1}}$$

**Resource constraint:**

$$Y_t = C_t + I_t^K + \sum_r I_{r,t}^H + \text{PolicyCost}_t + \text{AdjCost}_t + \text{IdleCost}_t$$

**Open question:** How to measure idle cost ($\text{IdleCost}_t$) in the data? [Open question]

---

## 5. Firms [Accepted baseline]

### 5.1 Production function

$$y_{i,r,t}^j = z_{i,t} \cdot A_{r,t}^j \cdot (k_{i,r,t}^j)^{\alpha_j} \cdot (l_{i,r,t}^j)^{1-\alpha_j}$$

### 5.2 Capital cost wedge

Outside sector: $R_{r,t}^O = r_t$

NEV sector: $R_{r,t}^N = r_t - \phi \, s_{r,t}$

### 5.3 Entry cost (extension candidate)

$$F_{r,t}^N = F_0^N - \phi_F \, s_{r,t}$$ [Appendix candidate]

### 5.4 Capacity dynamics

$$H_{r,t+1}^N = (1 - \delta_H) H_{r,t}^N + I_{r,t}^H$$

$$u_{r,t}^N = \frac{Q_{r,t}^N}{H_{r,t}^N} \leq 1$$

### 5.5 Product market

$$P_t^N = \mathcal{D}(Q_t^N), \qquad \mathcal{D}'(Q_t^N) < 0$$

**Regime 1 (capacity binding, early phase):** $Q^N = H^N$, shadow price of capacity $> 0$

**Regime 2 (capacity slack, overcapacity phase):** $Q^N < H^N$, price determined by demand curve

### 5.6 Firm entry and exit

$$V(z) = \max \left\{ 0, \; \pi(z) + \beta \, \mathbb{E}[V(z')] \right\}$$

Entry: firm pays cost $F^N$ and draws productivity $z \sim G(z)$.
Exit: firm shuts down when $V(z) \leq 0$.

---

## 6. Learning externalities [Accepted baseline]

$$A_{r,t+1}^N = (1 - \delta_A) A_{r,t}^N
+ \psi_L \left(Q_{r,t}^N\right)^\nu
+ \psi_G \left(\bar{Q}_t^N\right)^\nu$$

- $\psi_L$: local learning-by-doing (own-region production)
- $\psi_G$: cross-region knowledge spillover (national average output $\bar{Q}_t^N$)
- $\nu$: curvature of LBD (to be calibrated)

**Why $\psi_G$ is essential:** Without cross-region spillovers, regional LBD is fully decoupled.
The model would underestimate the social gain from coordinated policy and produce a fragmented
technology landscape. The Chinese NEV case clearly shows national-level spillovers
(CATL battery, BYD manufacturing processes benefit the whole industry).

---

## 7. Open questions

*(Record here.)*

---

## 8. Imported previous notes

> Historical source:
> [`NEV_产业政策_地方竞争_模型整合notes.md`](../legacy/model_drafts/NEV_产业政策_地方竞争_模型整合notes.md),
> Sections 3-8 (Environment, Household, Firms, LBD, and Product market).

### 8.1 经济环境 (from 整合 notes Sec. 3)

地区：$r = 1, \dots, R$

部门：$j \in \{N, O\}$，其中 $N$ = NEV 部门，$O$ = 其他制造业 / outside sector。

主体：家庭（消费、储蓄、劳动供给）、企业（进入、退出、资本、劳动、产能投资、生产）、地方政府（选择 NEV 政策 wedge $s_{r,t}$）、社会规划者（最大化全国福利）。

### 8.2 家庭 (from 整合 notes Sec. 4)

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

预算约束：$C_t+K_{t+1} = (1+r_t)K_t+w_tL_t+\Pi_t+T_t$

Euler equation：$1=\beta (C_{t+1}/C_t)^{-\sigma} (1+r_{t+1}-\delta_K)$

劳动供给：$\chi L_t^{\varphi}=w_t C_t^{-\sigma}$

第一版可以将劳动供给设为外生。

### 8.3 企业生产与进入退出 (from 整合 notes Sec. 5)

企业 $i$ 在地区 $r$、部门 $j$ 生产：

\[
y^j_{i,r,t}=z_{i,t}A^j_{r,t}(k^j_{i,r,t})^{\alpha_j}(l^j_{i,r,t})^{1-\alpha_j}
\]

企业生产率演化：$\log z_{i,t+1}=\rho_z\log z_{i,t}+\varepsilon_{i,t+1}$

企业利润：$\pi^j_{i,r,t}=p^j_t y^j_{i,r,t}-w_{r,t}l^j_{i,r,t}-R^j_{r,t}k^j_{i,r,t}-F^j_{r,t}$

其他部门资本成本：$R^O_{r,t}=r_t$

NEV 部门资本成本受地方政策影响：$R^N_{r,t}=r_t-\phi s_{r,t}$

进入条件：$V^N_{i,r,t}(z)\geq V^O_{i,r,t}(z)$ 或 $V^N_{i,r,t}(z)\geq F^N_{r,t}$

政策比较静态：$\partial \bar z^N_{r,t}/\partial s_{r,t}<0$，政策越强，进入阈值越低。

退出条件：$V^N_{i,r,t}(z)<\bar V^{exit}\Rightarrow exit$

### 8.4 产品市场与价格压缩 (from 整合 notes Sec. 6)

基准：逆需求 + 产能约束

\[
P^N_t=\mathcal D(Q^N_t),\quad \mathcal D'(\cdot)<0
\]

总产量：$Q^N_t=\sum_r Q^N_{r,t}$，产能约束：$Q^N_{r,t}\leq H^N_{r,t}$

地区 NEV 利润：$\pi^N_{r,t}=P^N_tQ^N_{r,t}-w_{r,t}L^N_{r,t}-R^N_{r,t}K^N_{r,t}-FC^N_{r,t}$

当地方政策推动产能扩张但需求增长有限时：$H^N_t>D^N_t \Rightarrow P^N_t\downarrow, \pi^N_t\downarrow, u^N_t\downarrow$

### 8.5 产能动态与区制切换 (from 整合 notes Sec. 7)

产能积累：$H^N_{r,t+1}=(1-\delta_H)H^N_{r,t}+I^H_{r,t}$

产能利用率：$u^N_{r,t}=Q^N_{r,t}/H^N_{r,t}$

全国过剩产能：$IdleCapacity_t=\max\{0,\sum_r H^N_{r,t}-D^N_t\}$

两个区制：
- **Regime B (capacity constrained):** $D^N_t(P^N_t)>H^N_t$，产能约束绑定，产能影子价值为正
- **Regime S (excess capacity):** $H^N_t>D^N_t(P^N_t)$，产能约束松弛，利用率下降

关键：不要假设产能闲置时投资自动停止。内卷机制恰恰是"即使社会边际回报下降，地方政策 wedge 仍可能使地方政府和企业继续投资"。

### 8.6 学习外部性与产业链协同 (from 整合 notes Sec. 8)

基准学习方程：

\[
A^N_{r,t+1}=(1-\delta_A)A^N_{r,t}
+ \psi_L(Q^N_{r,t})^{\nu}
+ \psi_G(\bar Q^N_t)^{\nu}
\]

其中 $\bar Q^N_t=\sum_r Q^N_{r,t}$。

政策的社会边际收益包括：学习外部性、市场培育、基础设施、产业链协同、需求牵引创新。
