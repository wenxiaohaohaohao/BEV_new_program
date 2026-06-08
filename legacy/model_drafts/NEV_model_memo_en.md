# Model Memo

## State-Contingent Industrial Policy, Local Competition, and Aggregate Misallocation: Evidence from China's NEV Industry

### 1. Objective and Core Question

This memo lays out a tractable model for a paper on decentralized industrial policy, overcapacity, and aggregate misallocation in China's new energy vehicle (NEV) industry. The goal is not to build a full DSGE model in the first step. The appropriate starting point is a quantitative dynamic general equilibrium framework with multiple regions, two sectors, heterogeneous firms, capacity accumulation, local policy competition, and a planner benchmark.

The central question is:

> How does decentralized local industrial policy in a strategic emerging industry generate over-entry, excess capacity, price and profit compression, and aggregate capital misallocation after initially facilitating industrial upgrading?

The paper should not be framed primarily as a study of NEV price wars and supplier innovation. That version is closer to applied IO, corporate finance, or supply-chain innovation. The macro-industrial-policy version is broader: it studies how local governments, each rationally pursuing local output, investment, employment, and tax-base gains, can collectively generate excess capacity and misallocation when they subsidize the same strategic sector.

The key conceptual point is state contingency. The model should not impose the mechanical narrative that industrial policy is good in the early stage and bad in the mature stage. Instead, industrial policy has a state-dependent marginal benefit and marginal cost. The benefit comes from learning-by-doing, market creation, infrastructure provision, and supply-chain coordination. The cost comes from fiscal resources, excessive entry, idle capacity, low capital returns, and crowding out of other sectors. A social planner adjusts policy as the industry state changes. Local governments also adjust, but their adjustment is too slow or insufficient because they do not fully internalize national overcapacity and aggregate misallocation.

The core result is therefore not that industrial policy should be removed. The benchmark is not a no-policy economy. The relevant comparison is between decentralized local policy competition and a state-contingent planner allocation. The planner may continue to support the NEV sector when learning and coordination externalities are large, but it reduces expansionary support when capacity exceeds effective demand or when the marginal product of capital in NEV falls below that in the outside sector.

### 2. Literature Positioning

The model combines four strands of literature.

First, the macro logic follows the well-intended-policy framework of Buera, Moll, and Shin. The relevant insight is that a policy designed to correct an initial market failure can generate persistent idiosyncratic distortions when the targeted state changes and policy does not adjust sufficiently. In the NEV setting, policy initially addresses learning, market formation, and coordination failures, but decentralized implementation can later keep capital flowing into the same sector despite falling marginal returns.

Second, the industry-policy structure is closest to Barwick, Kalouptsidi, and Zahur's work on Chinese shipbuilding. The useful elements are policy-induced entry, investment, capacity accumulation, idle capacity, and welfare counterfactuals. The present model should not copy their empirical IO structure wholesale, but it should borrow the economic discipline: policy affects entry and investment; industry structure evolves dynamically; and welfare evaluation must account for both market-share gains and misallocation costs.

Third, the multi-region structure is related to spatial policy and spatial misallocation models, including Fajgelbaum and coauthors. The paper's distinctive force comes from the wedge between local and national objectives. Each locality may find NEV promotion privately attractive, but simultaneous support across many regions can generate national overcapacity.

Fourth, the measurement of misallocation should connect to Hsieh and Klenow-style dispersion in marginal revenue products or marginal products of capital. The goal is to translate industry overcapacity into macro language: distorted allocation of capital across sectors and regions, lower aggregate TFP, and welfare losses.

A production-network extension, following Ernest Liu's industrial-policy-in-networks logic, can be added later if the paper moves toward upstream suppliers, batteries, chips, and other key intermediate inputs. That should not be part of the baseline model.

### 3. Economic Environment

Time is discrete, indexed by \(t=0,1,2,\ldots\). The economy has \(R\) regions, indexed by \(r\), and two sectors, \(j\in\{N,O\}\). Sector \(N\) is the NEV sector. Sector \(O\) is the outside sector, interpreted as other manufacturing or the rest of the tradable economy. The two-sector structure is essential because the object of interest is not just excess production within NEV, but the opportunity cost of allocating capital, labor, and policy resources to NEV rather than to other sectors.

There are four types of agents:

1. A representative household that owns capital and firms, supplies labor, consumes final goods, and receives transfers.
2. Heterogeneous firms that choose region, sector, capital, labor, production, capacity investment, and exit.
3. Local governments that choose region-specific NEV policy wedges.
4. A social planner used as a welfare benchmark.

The state of the NEV industry is summarized by

\[
Z_t=(A_t^N,H_t^N,D_t^N,u_t^N,N_t^N,S_t^N,MPK_t^N-MPK_t^O),
\]

where \(A_t^N\) is NEV technology, \(H_t^N\) is capacity, \(D_t^N\) is effective demand, \(u_t^N\) is utilization, \(N_t^N\) is the mass or number of firms/products, \(S_t^N\) is supply-chain coordination, and \(MPK_t^N-MPK_t^O\) measures the cross-sector capital-return gap.

The baseline policy object is a single expansionary policy wedge \(s_{r,t}\geq 0\). It summarizes local NEV support through subsidies, land provision, industrial funds, credit support, investment facilitation, tax preferences, and infrastructure support. These instruments are not separately modeled in the baseline. They are used empirically to construct or calibrate \(s_{r,t}\). This is consistent with the macro misallocation tradition, where complex policy packages are represented as sufficient-statistic wedges rather than modeled instrument by instrument.

### 4. Households and Final Good

The representative household solves

\[
\max_{\{C_t,K_{t+1},L_t\}} \sum_{t=0}^{\infty}\beta^t
\left[\frac{C_t^{1-\sigma}}{1-\sigma}-\chi\frac{L_t^{1+\varphi}}{1+\varphi}\right]
\]

subject to

\[
C_t+K_{t+1}=(1+r_t)K_t+w_tL_t+\Pi_t+T_t.
\]

Here \(C_t\) is aggregate consumption, \(K_t\) is aggregate capital, \(L_t\) is labor supply, \(r_t\) is the capital return, \(w_t\) is the wage, \(\Pi_t\) is firm profit, and \(T_t\) is a transfer that clears the government budget.

The Euler equation is

\[
1=\beta \left(\frac{C_{t+1}}{C_t}\right)^{-\sigma}(1+r_{t+1}-\delta_K),
\]

and the labor supply condition is

\[
\chi L_t^{\varphi}=w_t C_t^{-\sigma}.
\]

For the first quantitative implementation, labor supply can be fixed to reduce dimensionality. The household block is still useful because it closes the intertemporal resource constraint and delivers a welfare metric based on consumption rather than arbitrary penalty weights.

Final output can be represented as an aggregate of NEV and outside-sector goods:

\[
Y_t=\left[\eta_N(Y_t^N)^{\frac{\epsilon-1}{\epsilon}}+(1-
\eta_N)(Y_t^O)^{\frac{\epsilon-1}{\epsilon}}\right]^{\frac{\epsilon}{\epsilon-1}}.
\]

The final good is used for consumption, capital investment, NEV capacity investment, policy costs, and adjustment costs:

\[
Y_t=C_t+I_t^K+\sum_r I_{r,t}^H+PolicyCost_t+AdjustmentCost_t+IdleCost_t.
\]

A clean baseline should avoid putting arbitrary welfare weights directly on overcapacity or misallocation. These losses should appear through resource costs, idle capacity, lower profits, lower future productivity, and lower household consumption.

### 5. Firms: Production, Entry, Capacity, and Exit

Firms are heterogeneous in productivity. Firm \(i\) in region \(r\) and sector \(j\) produces

\[
y_{i,r,t}^j=z_{i,t}A_{r,t}^j(k_{i,r,t}^j)^{\alpha_j}(l_{i,r,t}^j)^{1-\alpha_j}.
\]

Productivity evolves according to

\[
\log z_{i,t+1}=\rho_z\log z_{i,t}+\varepsilon_{i,t+1}.
\]

This heterogeneity is important. A local policy wedge can lower the effective cost of operating in NEV and thereby induce lower-productivity firms to enter or remain active. This is the channel through which policy support can become an idiosyncratic distortion.

Firm profits are

\[
\pi_{i,r,t}^j=p_t^j y_{i,r,t}^j-w_{r,t}l_{i,r,t}^j-R_{r,t}^jk_{i,r,t}^j-F_{r,t}^j.
\]

For the outside sector,

\[
R_{r,t}^O=r_t.
\]

For the NEV sector, local industrial policy lowers the effective capital cost:

\[
R_{r,t}^N=r_t-\phi s_{r,t}, \quad \phi>0.
\]

This is the baseline policy wedge. It directly links local policy to capital allocation and MPK distortions. An entry-cost wedge can be added as an extension:

\[
F_{r,t}^N=F_0^N-\phi_Fs_{r,t}.
\]

Let \(V_{i,r,t}^j(z)\) denote firm value in sector \(j\). A simple dynamic value function for an NEV firm is

\[
V_{i,r,t}^N(z)=\max\left\{0,\ \pi_{i,r,t}^N(z)+\beta E_tV_{i,r,t+1}^N(z')\right\}.
\]

The zero value represents exit. Entry into NEV occurs when the value of operating in NEV exceeds the entry cost and outside option. In threshold form,

\[
z_{i,t}\geq \bar z_{r,t}^N(s_{r,t},A_{r,t}^N,p_t^N,r_t,w_{r,t}).
\]

With an entry-cost wedge,

\[
\frac{\partial \bar z_{r,t}^N}{\partial s_{r,t}}<0.
\]

With a capital-cost wedge,

\[
\frac{\partial K_{r,t}^N}{\partial s_{r,t}}>0.
\]

These comparative statics discipline the empirical moments: stronger local policy should raise NEV entry, capacity investment, or both.

### 6. NEV Demand, Prices, and Capacity

The baseline model should use an inverse demand function rather than a full BLP demand system:

\[
P_t^N=\mathcal D(Q_t^N), \quad \mathcal D'(Q_t^N)<0,
\]

where aggregate NEV output is

\[
Q_t^N=\sum_r Q_{r,t}^N.
\]

NEV production is constrained by installed capacity:

\[
Q_{r,t}^N\leq H_{r,t}^N.
\]

Capacity evolves according to

\[
H_{r,t+1}^N=(1-\delta_H)H_{r,t}^N+I_{r,t}^H.
\]

Capacity utilization is

\[
u_{r,t}^N=\frac{Q_{r,t}^N}{H_{r,t}^N}.
\]

Aggregate idle capacity is

\[
IdleCapacity_t=\max\left\{0,\sum_rH_{r,t}^N-D_t^N(P_t^N)\right\}.
\]

This block is essential. Without a price or profit mechanism, overcapacity is only a definition. With inverse demand and capacity constraints, excessive expansion lowers prices, compresses profits, lowers utilization, and creates exit pressure.

The model has two regimes. In the capacity-constrained regime,

\[
D_t^N(P_t^N)>H_t^N,
\]

capacity binds, output equals available capacity, and the shadow value of additional capacity is high. In the excess-capacity regime,

\[
H_t^N>D_t^N(P_t^N),
\]

capacity is slack and utilization falls. Importantly, the model should not assume capacity investment automatically stops in the second regime. The object to explain is precisely why local policy and adjustment frictions can sustain investment even after social marginal returns have fallen.

### 7. Learning and Supply-Chain Coordination Externalities

Industrial policy can be welfare-improving because NEV production generates dynamic externalities. Regional NEV technology evolves as

\[
A_{r,t+1}^N=(1-\delta_A)A_{r,t}^N+\psi_L(Q_{r,t}^N)^\nu+\psi_G(\bar Q_t^N)^\nu,
\]

where

\[
\bar Q_t^N=\sum_rQ_{r,t}^N.
\]

The local term captures learning-by-doing within the region. The aggregate term captures national knowledge spillovers, common suppliers, standard formation, mobility of engineers, and supply-chain coordination. This formulation prevents the model from becoming an anti-industrial-policy model. Policy can be socially valuable when learning and coordination externalities are strong.

The planner internalizes these externalities. A local government may internalize some local learning, but it is less likely to internalize national spillovers and the national cost of duplicated capacity. This asymmetry is the central externality in the model.

### 8. Local Government Problem and Policy Adjustment

Each local government chooses \(s_{r,t}\) to maximize a local objective:

\[
\max_{\{s_{r,t}\}}\sum_{t=0}^{\infty}\beta_g^t
\left[
\omega_YY_{r,t}^N+\omega_II_{r,t}^H+\omega_EL_{r,t}^N+\omega_TTax_{r,t}
-\frac{\kappa}{2}s_{r,t}^2
-\frac{\chi_s}{2}(s_{r,t}-s_{r,t-1})^2
\right].
\]

The government values local NEV output, investment, employment, and tax-base gains. It pays a convex policy cost and faces policy adjustment costs. The adjustment cost captures industrial parks, land commitments, government-guided funds, long-term investment agreements, local debt, infrastructure projects, and political or administrative inertia.

The policy rule can be written in partial-adjustment form:

\[
s_{r,t}=\rho_ss_{r,t-1}+(1-\rho_s)\tilde s_{r,t},
\]

where

\[
\tilde s_{r,t}=\arg\max_s V_r^L(s;Z_{r,t},Z_t).
\]

If \(\rho_s=0\), policy is fully flexible. If \(\rho_s>0\), policy exits slowly.

The local government does not fully internalize national idle capacity,

\[
IdleCapacity_t=\max\left\{0,\sum_rH_{r,t}^N-D_t^N\right\},
\]

or cross-sector capital misallocation,

\[
MPK_{r,t}^N-MPK_{r,t}^O.
\]

Hence, local policy can remain above the planner level even when the aggregate industry has entered an excess-capacity regime.

Local governments move simultaneously. The baseline equilibrium concept is Markov-Nash:

\[
s_{r,t}^D=BR_r(s_{-r,t}^D;Z_{r,t},Z_t).
\]

The baseline should not introduce Stackelberg timing, commitment failure, or hold-up problems. Those are valid extensions but unnecessary for the first model.

### 9. Planner Problem

The social planner chooses allocations and policy wedges to maximize household welfare:

\[
\max \sum_{t=0}^{\infty}\beta^tU(C_t,L_t)
\]

subject to production, capacity accumulation, learning dynamics, demand, government budget constraints, and resource feasibility. The planner internalizes national learning externalities, the opportunity cost of capital, fiscal costs, idle capacity, and cross-region duplication.

The planner's policy rule is state-contingent:

\[
s_{r,t}^P=s^P(Z_{r,t},Z_t).
\]

When NEV technology is low, market demand is growing, and capacity is scarce, the planner may choose a high expansionary wedge. When capacity exceeds effective demand or when NEV capital returns are below outside-sector returns, the planner reduces expansionary support and shifts resources away from additional capacity.

The planner is not a no-policy benchmark. The meaningful comparison is

\[
\{s_{r,t}^D,K_{r,t}^{N,D},H_{r,t}^{N,D},W^D\}
\quad \text{versus} \quad
\{s_{r,t}^P,K_{r,t}^{N,P},H_{r,t}^{N,P},W^P\}.
\]

### 10. Equilibrium Definitions

Given initial states \(\{K_0,H_{r,0}^N,A_{r,0}^N,s_{r,-1},\mu_{r,0}(z)\}_r\), a decentralized equilibrium is a sequence of allocations, prices, firm decisions, and local policies

\[
\{C_t,K_{t+1},L_t,w_{r,t},r_t,p_t^N,p_t^O,s_{r,t},N_{r,t}^N,H_{r,t}^N,Q_{r,t}^N\}_{t=0}^{\infty}
\]

such that:

1. Households maximize utility.
2. Firms choose entry, exit, capital, labor, capacity investment, and production to maximize value.
3. Local governments choose policies that solve their dynamic local objective.
4. Local policies form a Markov-Nash equilibrium.
5. Capital, labor, and product markets clear.
6. Capacity and technology laws of motion hold.
7. The government budget and aggregate resource constraint hold.

A planner allocation is a sequence of feasible allocations and policy wedges that maximizes national household welfare subject to the same technological, demand, and resource constraints, while internalizing learning spillovers and national misallocation costs.

### 11. Main Propositions

**Proposition 1: State-contingent policy benefits.** When NEV production generates learning and coordination externalities, moderate policy support can raise dynamic welfare relative to no policy. Formally, for sufficiently high \(\psi_L\) or \(\psi_G\), there exist states in which \(W^{policy}>W^{no\ policy}\).

**Proposition 2: Decentralized local governments overuse expansionary policy.** If local governments value local output, investment, employment, and tax-base gains but do not fully internalize national idle capacity and capital misallocation, then the decentralized expansionary wedge exceeds the planner wedge in excess-capacity states:

\[
s_{r,t}^D>s_{r,t}^P
\]

especially when \(H_t^N>D_t^N\) or \(MPK_t^N<MPK_t^O\).

**Proposition 3: Excessive policy generates over-entry and excess capacity.** Because the policy wedge lowers effective capital costs or entry costs,

\[
\frac{\partial K_{r,t}^N}{\partial s_{r,t}}>0, \quad
\frac{\partial \bar z_{r,t}^N}{\partial s_{r,t}}<0.
\]

Thus, relative to the planner allocation,

\[
N_{r,t}^{N,D}>N_{r,t}^{N,P},\quad
H_{r,t}^{N,D}>H_{r,t}^{N,P},\quad
u_{r,t}^{N,D}<\nu_{r,t}^{N,P}.
\]

**Proposition 4: Overcapacity compresses prices and profits.** Under inverse demand, excessive NEV supply lowers equilibrium prices and profits:

\[
P_t^{N,D}<P_t^{N,P},\quad
\pi_t^{N,D}<\pi_t^{N,P}.
\]

This gives a macro-industrial interpretation of price wars: they are not merely firm-level strategic behavior but an equilibrium outcome of excessive capacity and insufficient product-market absorption.

**Proposition 5: Decentralized policy generates aggregate misallocation.** If the decentralized allocation pushes NEV capital beyond the planner level, then NEV capital returns fall below outside-sector returns:

\[
MPK_{r,t}^{N,D}<MPK_{r,t}^{O,D}.
\]

This implies excessive capital in NEV, lower aggregate productivity, and potentially lower welfare:

\[
TFP^D<TFP^P,\quad W^D<W^P.
\]

**Proposition 6: Policy exits too slowly.** When utilization falls below a threshold or NEV MPK falls below outside-sector MPK, the planner reduces expansionary policy more quickly than local governments:

\[
|\Delta s_{r,t}^P|>|\Delta s_{r,t}^D|.
\]

The gap is larger when adjustment costs, local fiscal dependence, sunk industrial-park commitments, or interregional competition are stronger.

### 12. Quantification and Empirical Moments

The quantitative model should be disciplined by a small set of moments. The first-stage empirical work should establish reduced-form facts before solving the full model.

The key moments are:

1. **Policy-entry elasticity.** Estimate how local NEV policy exposure affects firm entry, product launches, or capacity projects.
2. **Policy-investment elasticity.** Estimate how policy exposure affects NEV capital expenditure, fixed-asset investment, construction in progress, or announced capacity.
3. **Capacity utilization.** Measure whether policy-intensive regions experience lower utilization, higher inventory, or larger capacity-demand gaps.
4. **Price and profit compression.** Estimate whether overcapacity exposure lowers prices, gross margins, net margins, cash flow, or firm value.
5. **MPK gap.** Compare NEV and outside-sector marginal products of capital across regions and over time.
6. **Learning-by-doing.** Estimate whether cumulative NEV production predicts future productivity, cost reductions, or innovation quality.
7. **Policy inertia.** Estimate whether local policy support declines slowly after utilization falls or profitability deteriorates.
8. **Fiscal cost.** Construct proxies for subsidies, industrial funds, land discounts, credit support, and infrastructure spending.

The empirical backbone should first establish four facts:

\[
Policy_{r,t}\uparrow \Rightarrow Entry_{r,t}^N\uparrow,\ I_{r,t}^H\uparrow,
\]

\[
Policy_{r,t}\uparrow \Rightarrow Utilization_{r,t}^N\downarrow \quad \text{or} \quad CapacityGap_{r,t}\uparrow,
\]

\[
OvercapacityExposure_{i,t}\uparrow \Rightarrow Profitability_{i,t}\downarrow,
\]

\[
MPK_{r,t}^N-MPK_{r,t}^O\downarrow \quad \text{in policy-intensive regions.}
\]

The supplier-payment and supplier-innovation mechanism can be kept as an extension. It is valuable, but it should not determine the baseline GE model.

### 13. Counterfactuals

The model should deliver a small set of policy counterfactuals.

**Counterfactual 1: No local policy competition.** Set \(s_{r,t}=0\) or eliminate local variation while keeping a national policy. This reveals how much entry, capacity, price decline, and fiscal cost are due to local competition.

**Counterfactual 2: Centralized planner industrial policy.** Let the planner choose \(\{s_{r,t}\}_{r=1}^R\) to maximize national welfare. This is the main counterfactual. It identifies the optimal geographic distribution of capacity and the welfare gain from coordination.

**Counterfactual 3: Subsidy cap or anti-duplication rule.** Impose \(s_{r,t}\leq \bar s\) or capacity growth limits. This captures policy tools aimed at controlling repeated local expansion.

**Counterfactual 4: Faster exit and consolidation.** Reduce exit costs or increase the exit probability of low-productivity firms. This evaluates whether market clearing can mitigate overcapacity without eliminating useful learning externalities.

**Counterfactual 5: Expansionary versus productivity-enhancing support.** In an extension, split policy into \(s_{r,t}^E\), which lowers entry and investment costs, and \(s_{r,t}^P\), which raises productivity through R&D, standards, and common platforms. This evaluates whether policy should shift from capacity expansion to quality-enhancing governance.

### 14. Implementation Strategy

The model should be built in stages.

**Step 1: Static or steady-state analytic model.** Start with symmetric regions, two sectors, one policy wedge, inverse demand, and a local-Nash versus planner comparison. Prove that decentralized local policy can imply \(s^D>s^P\), \(K_N^D>K_N^P\), and \(MPK_N^D<MPK_O^D\).

**Step 2: Deterministic transition.** Add capacity dynamics and learning dynamics. Study how the economy moves from a policy-supported growth phase to an excess-capacity phase. This is more appropriate than a full stochastic DSGE at the first stage.

**Step 3: Heterogeneous firms and exit.** Add productivity distributions, entry thresholds, and exit thresholds. This delivers the composition channel: policy support lowers the productivity threshold and slows exit of inefficient firms.

**Step 4: Numerical solution.** Use Julia for nonlinear transition paths, projection, or value-function methods if needed. Do not begin with Dynare or a full VFI unless the state space is already disciplined.

**Step 5: Extensions.** Add supplier payment terms, upstream innovation, or production networks only after the baseline model and core reduced-form facts are established.

### 15. Summary

The paper should be framed as a macro-industrial-policy paper on decentralized implementation rather than as a narrow IO paper on price wars. The essential mechanism is simple: industrial policy can raise welfare when it corrects learning and coordination failures, but decentralized local implementation can overuse expansionary tools because local governments internalize local gains and not national overcapacity. Policy adjustment frictions make the problem persistent. The equilibrium outcome is over-entry, excess capacity, price and profit compression, lower utilization, and capital misallocation.

The model's main contribution is to formalize a state-contingent view of industrial policy. The relevant policy question is not whether industrial policy should exist. It is whether the policy wedge adjusts with the state of the industry, and whether decentralized local governments internalize the national costs of continued expansion. This framing allows the project to connect China's NEV experience to macro-development, spatial policy, industrial organization, and resource misallocation literatures while remaining disciplined enough for a quantitative general equilibrium implementation.
