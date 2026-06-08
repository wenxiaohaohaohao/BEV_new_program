# Module 5: Quantification Moments and Solution Algorithm

## 1. Purpose

This module records:
- The mapping from model parameters to calibration moments and data sources.
- The solution algorithm (phases 1–5).

Counterfactual specifications are in Module 6.

---

## 2. Quantification moments [Accepted baseline]

| Parameter / object | Moment | Data source / proxy |
|---|---|---|
| $\phi$ | policy-investment elasticity | regional policy intensity, investment, capacity |
| $\phi_F$ | policy-entry elasticity | firm entry registrations by region-year |
| $\delta_H$ | capacity persistence | capacity utilization data (MIIT, NBS) |
| $\varepsilon_D$ | demand elasticity | NEV prices and sales (CAAM data) |
| $\psi_L, \psi_G$ | local and cross-region LBD | cumulative output, cost decline, TFP by region |
| $\chi_s$ | policy inertia | policy continuation rate after overcapacity onset |
| $\kappa$ | policy cost | fiscal reports, industrial funds, land grants, credit |
| MPK gap | capital misallocation | firm-level financial data (CSMAR, Wind) |
| welfare weight $\omega_Y$ | local government preference | GDP growth target intensity |

---

## 3. Identification strategy

- $\phi$: Regional variation in subsidy intensity interacted with firm-level investment responses.
- $\psi_G$: Difference in TFP growth between regions with early vs. late policy adoption (spillover gap).
- $\chi_s$: Duration analysis of policy continuation after utilization falls below 70%.
- MPK gap: Hsieh-Klenow (2009) methodology applied to NEV vs. outside manufacturing firms.

---

## 4. Solution algorithm [Accepted baseline]

**Phase 1: Steady-state analytic model (symmetric 2-region)**

- Derive closed-form conditions for symmetric Nash equilibrium under simplifying assumptions
  (linear demand, log utility, Cobb-Douglas production).
- Prove Proposition 2: $s^D > s^P$ in symmetric equilibrium.
- Compute planner optimum analytically. Characterize the gap.

**Phase 2: Deterministic transition dynamics**

- Solve the model for a given policy sequence $\{s_{r,t}\}$.
- Compute transition path from high-policy to low-policy steady state.
- Identify the capacity-regime switching point (binding → slack).

**Phase 3: Local Nash computation (2-region numerical)**

```text
Step 1: Discretize state space (A_r, H_r) — 20 nodes per dimension per region.
Step 2: Value function iteration with LinearInterpolation.
Step 3: For each state, compute FOC residual grid over policy space.
Step 4: Detect sign changes → candidate Nash points.
Step 5: Refine with nlsolve (Newton's method).
Step 6: Verify no profitable deviation exists.
Step 7: If multiple equilibria, select stable equilibrium closest to s_{r,t-1}.
Step 8: Compare s^D and s^P at each state. Compute welfare loss W^P - W^D.
```

**Phase 4: Heterogeneous firms + exit**

- Add idiosyncratic productivity $z_{i,t}$.
- Firm exit when $V(z) \leq 0$.
- Calibrate exit hazard to match historical NEV firm consolidation (500+ brands → ~30).

**Phase 5: Extensions**

- Asymmetric regions (high-policy vs. low-policy types).
- Supply chain IO (see `08_extensions.md`).
- Differentiated demand (see `08_extensions.md`).

---

## 5. Two-regime capacity handling

**Regime 1 (capacity binding):** $\sum_r H_{r,t}^N \leq D_t^N$
→ NEV price exceeds demand-clearing price. Production = capacity. Shadow value of capacity $> 0$.
→ Firms invest in capacity. Policy wedge is welfare-improving.

**Regime 2 (capacity slack):** $\sum_r H_{r,t}^N > D_t^N$
→ NEV price clears demand. Utilization $u^N < 1$. Idle capacity.
→ Policy wedge generates misallocation. Planner sets $s^P \to 0$.

**Regime switching condition:**

$$\sum_r H_{r,t}^N \gtrless D_t^N$$

This kink is handled explicitly by solving each regime with separate Julia functions
and checking which regime is active at each state.

---

## 6. Open questions

*(E.g.: What is the right functional form for $\mathcal{D}(Q^N)$?
Linear inverse demand is tractable but may not fit the data well.)*

---

## 7. Imported previous notes

> Historical sources:
> [`宏观模型_单一政策wedge_修正版.md`](../legacy/model_drafts/宏观模型_单一政策wedge_修正版.md)
> and
> [`NEV_产业政策_地方竞争_模型整合notes.md`](../legacy/model_drafts/NEV_产业政策_地方竞争_模型整合notes.md)
> (quantification section).

### 7.1 量化 moments 与数据需求 (from 整合 notes Sec. 14)

| 参数 / 机制 | 需要匹配的 moment | 可能数据 |
|---|---|---|
| $\phi$ | 政策对 NEV 资本/投资的弹性 | 地方政策文本、投资、资本开支、在建工程、产能项目 |
| $\phi_F$ | 政策对企业进入的弹性 | 企业注册、整车/电池/零部件进入、车型上市 |
| $\delta_H, \kappa_H$ | 产能动态和调整成本 | 产能公告、产量、销量、利用率 |
| $\epsilon_D$ | NEV 需求弹性 | 车型价格、销量、城市/车型面板 |
| $\psi_L, \psi_G$ | 学习外部性 | 累计产量、TFP、单位成本、专利质量 |
| $\kappa$ | 政策财政成本 | 补贴、基金、土地优惠、贷款贴息、基础设施投入 |
| $\rho_s, \chi_s$ | 政策惯性/调整成本 | 政策持续性、园区投资、基金期限、地方债务、招商协议 |

### 7.2 基准模型结构总结 (from 宏观模型修正版 Sec. 7)

最终基准模型结构：
- Household: consumption-saving, owns capital and firms
- Regions: $r = 1, \dots, R$
- Sectors: NEV and Other manufacturing
- Firms: produce with capital and labor, face sector-region productivity, invest in NEV capacity, respond to local policy wedge
- Local governments: choose one policy wedge $s_{r,t}$, care about local NEV output, investment, employment, do not fully internalize national overcapacity and capital misallocation
- Central planner: internalizes national welfare, learning externality, idle capacity, policy cost, and misallocation
- Equilibrium: decentralized policy equilibrium vs planner allocation
- Quantification: match policy-investment elasticity, capacity utilization, MPK dispersion, demand elasticity, fiscal cost, learning-by-doing
- Counterfactuals: no local policy competition, centralized optimal policy, subsidy cap, faster exit / lower expansionary wedge

### 7.3 状态依赖 trade-off 的核心表述 (from 宏观模型修正版 Sec. 8)

> 本文不将产业政策设定为固定地"有效"或"无效"。产业政策的福利效应取决于产业状态。地方政策 wedge 一方面扩大新能源汽车产出，并通过学习效应、市场培育和产业链协同提高未来生产率；另一方面，它也推动资本和产能继续流入新能源汽车部门。当产业处于技术积累和市场形成阶段时，政策的社会边际收益可能较高；当总产能超过有效需求，或新能源汽车部门资本边际产出低于其他部门时，继续提高政策 wedge 会加剧产能闲置和资本错配。问题不是产业政策是否应该存在，而是地方分散化政策竞争是否导致政策强度偏离状态依赖的社会最优水平。

英文：This paper models local industrial policy as a region-sector-specific wedge that lowers the effective capital cost in the NEV sector. The wedge captures a bundle of expansionary local policies, including subsidies, land support, credit support, industrial funds, and investment facilitation. The key trade-off is state-contingent. The wedge raises NEV activity and generates learning-by-doing and supply-chain coordination externalities, but it also encourages capital accumulation in the NEV sector. When aggregate capacity exceeds effective demand or the marginal product of capital in NEV falls below that in the outside sector, decentralized local policies generate overcapacity and aggregate misallocation. The issue is not whether industrial policy is always good or bad, but whether decentralized local governments choose policy intensity consistent with the state-contingent social optimum.
