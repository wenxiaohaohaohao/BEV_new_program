# Module 4: Planner Problem and Full Equilibrium Definition

## 1. Purpose

This module defines the benchmark objects and equilibrium conditions after the
third-round critique. The main normative benchmark is the constrained planner,
not a first-best allocation planner.

---

## 2. Three benchmark objects [Accepted baseline]

### 2.1 Decentralized local equilibrium

In the decentralized equilibrium, local governments choose policy wedges
simultaneously in a Markov-Nash game:

$$
s_{r,t}^D=BR_r(s_{-r,t}^D;Z_{r,t},Z_t).
$$

Households and firms optimize, local labor markets clear, local budgets hold, and
capacity and productivity evolve according to Module 2.

### 2.2 Constrained planner / centralized policy equilibrium

The constrained planner chooses the policy instruments

$$\{s_{r,t}^{CP}\}_{r=1}^R$$

to maximize aggregate household welfare, but households and firms still make
their own decentralized decisions. The planner does not directly choose every
capital, capacity, labor, output, or entry allocation.

A compact representation is:

$$
\max_{\{s_{r,t}^{CP}\}}
\sum_{t=0}^{\infty}\beta^t U(C_t)
$$

subject to the private-equilibrium mapping induced by the policy sequence:

$$
(C_t,Y_t^N,Y_t^O,H_{r,t}^N,A_{r,t}^N,L_{r,t}^j,w_{r,t},P_t^N)
\in \mathcal E(\{s_{r,t}^{CP}\}).
$$

The constrained planner internalizes cross-region spillovers, national price
compression, excess capacity, fiscal costs, and aggregate MPK losses.

### 2.3 First-best planner

A first-best planner that directly chooses allocations can be used only as an
appendix upper bound:

$$W^{FB}\geq W^{CP}\geq W^D.$$

It is not the main policy benchmark.

---

## 3. Decentralized equilibrium conditions [Accepted baseline]

A decentralized equilibrium is a sequence of prices, quantities, policies, and
states satisfying the following conditions.

**Condition 1: Household saving**

The representative household chooses consumption and saving. The usual Euler
condition pins down the economy-wide return on saving.

**Condition 2: Regional labor clearing**

Labor is regionally segmented:

$$L_{r,t}^N+L_{r,t}^O=\bar L_r.$$

The regional wage $w_{r,t}$ clears region $r$'s labor market.

**Condition 3: Firm optimality**

Outside-sector firms choose $K_{r,t}^O$ and $L_{r,t}^O$ given $r_t$ and
$w_{r,t}$. NEV firms choose capacity investment $I_{r,t}^H$, utilization, and
labor given:

$$R_{r,t}^N=r_t-\phi s_{r,t}.$$

The marginal return to NEV installed capacity defines $MPK_{r,t}^N$.

**Condition 4: CES-derived product demand**

The final-good producer's FOC implies:

$$
P_t^N=\eta_N\left(\frac{Y_t}{Y_t^N}\right)^{1/\varepsilon}.
$$

There is no separate baseline inverse demand equation.

**Condition 5: Local government budget**

Each local government budget satisfies:

$$
\phi s_{r,t}H_{r,t}^N
+ G_{r,t}
+ \mathcal C_B(B_{r,t+1})
=
\tau_r Y_{r,t}
+ B_{r,t+1}
- (1+r_t^g)B_{r,t}
+ T_{r,t}^C.
$$

**Condition 6: Local government optimality**

For each region, $s_{r,t}^D$ solves the local objective in Module 3 given other
regions' policies and the private-sector equilibrium response.

**Condition 7: Markov-Nash best response**

$$
s_{r,t}^D=BR_r(s_{-r,t}^D;Z_{r,t},Z_t)
\quad \forall r.
$$

**Condition 8: Laws of motion and resource feasibility**

NEV installed capacity evolves as:

$$
H_{r,t+1}^N=(1-\delta_H)H_{r,t}^N+I_{r,t}^H.
$$

NEV productivity evolves as:

$$
A_{r,t+1}^N =
A_{r,t}^N
+ (\bar A^N-A_{r,t}^N)
\left[
\psi_L (Y_{r,t}^N)^\nu
+ \psi_G \left(\sum_{r'\neq r}Y_{r',t}^N\right)^\nu
\right].
$$

The resource constraint uses $I^H$ as the only NEV capital/capacity investment
flow and includes the fiscal outlay $\phi s_{r,t}H_{r,t}^N$.

---

## 4. Constrained planner FOC target [Accepted baseline]

The core theoretical task is to compare:

$$
\frac{\partial \mathcal L_r}{\partial s_r}=0
$$

with the constrained planner's FOC:

$$
\frac{\partial W(\mathcal E(s_1,\ldots,s_R))}{\partial s_r}=0.
$$

The proof should identify the extra terms internalized by $CP$ but not by an
individual local government:

- national price compression under CES demand;
- other-region effects of capacity expansion;
- cross-region learning spillovers;
- aggregate MPK loss from excessive NEV capacity;
- full fiscal and debt costs.

The first analytic milestone is a symmetric two-region static proof of sufficient
conditions for:

$$s^D>s^{CP}.$$

---

## 5. Lemmas and propositions [Accepted baseline]

The current proposition structure is:

1. **Lemma 1:** A higher local policy wedge raises NEV installed capacity through
   the firm's investment condition.
2. **Lemma 2:** CES-derived demand implies NEV price compression when aggregate
   NEV quantity expands.
3. **Proposition 1:** Coordinated state-contingent policy raises welfare when
   marginal learning and coordination benefits exceed fiscal and misallocation
   costs.
4. **Proposition 2:** Under stated sufficient conditions, decentralized
   Markov-Nash policy exceeds constrained-planner policy:
   $s^D>s^{CP}$.
5. **Proposition 3:** Given Proposition 2, decentralized equilibrium features
   higher NEV installed capacity, lower utilization, a lower NEV MPK, and lower
   welfare relative to $CP$.

Slow policy exit remains a dynamic result unless separately proven.

---

## 6. Open questions

1. Which minimal static assumptions produce a transparent FOC comparison?
2. Should the first proof abstract from local borrowing or include a reduced-form
   fiscal-surplus term?
3. How should $W^{FB}$ be reported, if at all, without shifting attention away
   from $W^{CP}-W^D$?
