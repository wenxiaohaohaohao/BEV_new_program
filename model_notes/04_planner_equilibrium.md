# Module 4: Planner Problem and Full Equilibrium Definition

## 1. Purpose

This module defines the benchmark objects and equilibrium conditions. It follows
the post-revision skeleton: constrained planner is the main benchmark, and the
baseline equilibrium uses regional labor clearing, total-tax-base local budgets,
CES demand, and frontier-gap learning.

---

## 2. Benchmark objects [Accepted baseline]

### 2.1 Decentralized local equilibrium

Local governments choose policy wedges simultaneously in a Markov-Nash game:

$$s_{r,t}^D=BR_r(s_{-r,t}^D;Z_{r,t},Z_t).$$

Households and firms optimize, regional labor markets clear, local budgets hold,
and capacity/productivity evolve according to Module 2.

### 2.2 Constrained planner / centralized policy equilibrium

The constrained planner chooses policy instruments:

$$\{s_{r,t}^{CP}\}_{r=1}^R$$

to maximize household welfare while households and firms remain decentralized
optimizers:

$$
\max_{\{s_{r,t}^{CP}\}}
\sum_{t=0}^{\infty}\beta^tU(C_t,L_t).
$$

The constrained planner internalizes cross-region spillovers, national price
compression, excess capacity, fiscal costs, debt costs, and aggregate MPK losses.

### 2.3 First-best upper bound

A first-best planner that directly chooses allocations can be reported only as
an appendix upper bound:

$$W^{FB}\geq W^{CP}\geq W^D.$$

It is not the main policy benchmark.

---

## 3. Decentralized equilibrium conditions [Accepted baseline]

A decentralized equilibrium is a path for:

$$
\{C_t,K_t^O,H_{r,t}^N,A_{r,t}^N,B_{r,t},s_{r,t},
Y_{r,t}^N,Y_{r,t}^O,w_{r,t},P_t^N\}
$$

satisfying the following conditions.

**Condition 1: Household saving**

The representative household chooses consumption and saving. The usual Euler
condition pins down the economy-wide return on saving.

**Condition 2: Regional labor clearing**

$$L_{r,t}^N+L_{r,t}^O=\bar L_r.$$

The regional wage $w_{r,t}$ clears region $r$'s labor market.

**Condition 3: Capital and capacity**

Aggregate capital clearing:

$$K_t=K_t^O+\sum_rH_{r,t}^N.$$

Outside-sector capital:

$$K_{t+1}^O=(1-\delta_K)K_t^O+I_t^{K,O}.$$

NEV installed capacity:

$$H_{r,t+1}^N=(1-\delta_H)H_{r,t}^N+I_{r,t}^H.$$

**Condition 4: Firm optimality**

Outside-sector firms choose $K_{r,t}^O$ and $L_{r,t}^O$. NEV firms choose
capacity investment, utilization, and labor given:

$$R_{r,t}^{N,eff}=r_t-\phi s_{r,t}.$$

The marginal return to NEV installed capacity defines $MPK_{r,t}^N$.

**Condition 5: CES-derived product demand**

The final-good producer's FOC implies:

$$P_t^N=\eta_N\left(\frac{Y_t}{Y_t^N}\right)^{1/\epsilon}.$$

There is no separate baseline inverse demand equation.

**Condition 6: Local government budget**

Each local government budget satisfies:

$$
\tau_r(Y_{r,t}^N+Y_{r,t}^O)
+B_{r,t+1}
=
(1+r_t^g)B_{r,t}
+\phi s_{r,t}H_{r,t}^N
+G_{r,t}
+\mathcal C(B_{r,t+1}).
$$

**Condition 7: Local government optimality and Markov-Nash**

Each $s_{r,t}^D$ solves the local problem in Module 3 given other regions'
policies and private-sector responses:

$$s_{r,t}^D=BR_r(s_{-r,t}^D;Z_{r,t},Z_t).$$

**Condition 8: Learning law**

$$
A_{r,t+1}^N
=
A_{r,t}^N
+\psi_L
\frac{\bar A_t-A_{r,t}^N}{\bar A_t}
(Y_{r,t}^N)^\nu
+\psi_G
\frac{\bar A_t-A_{r,t}^N}{\bar A_t}
\left(\sum_{r'\neq r}Y_{r',t}^N\right)^\nu.
$$

The frontier evolves as:

$$\bar A_{t+1}=(1+g_A)\bar A_t.$$

**Condition 9: Resource feasibility**

$$
Y_t
=
C_t
+I_t^{K,O}
+\sum_rI_{r,t}^H
+\sum_rG_{r,t}
+AdjCost_t
+DebtCost_t.
$$

---

## 4. Baseline state vector [Accepted baseline]

The baseline dynamic state vector is:

$$
X_t=\{H_{r,t}^N,A_{r,t}^N,B_{r,t},s_{r,t-1}\}_{r=1}^R.
$$

The full firm productivity distribution $\mu_{r,t}(z)$ is not in the baseline
state vector.

---

## 5. Constrained planner FOC target [Accepted baseline]

The core theoretical task is to compare the local FOC:

$$\frac{\partial \mathcal L_r}{\partial s_r}=0$$

with the constrained planner's FOC:

$$
\frac{\partial W(\mathcal E(s_1,\ldots,s_R))}{\partial s_r}=0.
$$

The constrained planner internalizes terms that a local government does not
fully internalize:

- national price compression under CES demand;
- other-region effects of capacity expansion;
- cross-region learning spillovers;
- aggregate MPK loss from excessive NEV capacity;
- full fiscal, debt, and resource costs.

The first analytic milestone is a symmetric two-region static proof of sufficient
conditions for:

$$s^D>s^{CP}.$$

---

## 6. Lemmas and propositions [Accepted baseline]

1. **Lemma 1:** A higher local policy wedge raises NEV installed capacity through
   the firm's investment condition.
2. **Lemma 2:** CES-derived demand implies NEV price compression when aggregate
   NEV quantity expands.
3. **Proposition 1:** Coordinated state-contingent policy raises welfare when
   marginal learning and coordination benefits exceed fiscal and misallocation
   costs.
4. **Proposition 2:** Under stated sufficient conditions, decentralized
   Markov-Nash policy exceeds constrained-planner policy: $s^D>s^{CP}$.
5. **Proposition 3:** Given Proposition 2, decentralized equilibrium features
   higher NEV installed capacity, lower utilization, a lower NEV MPK, and lower
   welfare relative to $CP$.

Slow policy exit remains a dynamic result unless separately proven.

---

## 7. Open questions

1. Which minimal static assumptions produce the cleanest FOC comparison?
2. Should the first proof fix $B_r$ or let local governments choose debt?
3. How should $DebtCost_t$ enter the static proof without obscuring
   over-subsidization?
