# Post-Revision Model Skeleton

**Status:** Closure contract after the Claude second-review response.

**Last updated:** 2026-06-18

This file is the first source to check when revising the baseline model. It
summarizes the model objects that must be mutually consistent before the MASTER
memo, module notes, paper text, or numerical code are updated.

---

## 0. Model discipline

The baseline is provenance-controlled. No uncited primitive enters the model.
Every primitive object must come from an existing literature or be a direct NEV
mapping of an object in that literature. The active provenance table is in
`00_MASTER_model_memo.md`.

The mother model for local-central policy misalignment is Chen-Liu-Song:

$$
\zeta_{rt}^{L,NEV}\neq \zeta_{rt}^{C,NEV}.
$$

The baseline keeps one composite expansionary policy wedge $s_{r,t}$. Dynamic
industry objects such as entry, investment, capacity, idle capacity, and welfare
counterfactuals must be traced to Barwick-Kalouptsidi-Zahur. Durable and partly
irreversible capacity, demand absorption, and MRPK dispersion must be traced to
Aggregate Demand and Irreversible Investment. Industry life-cycle language
follows Klepper and is interpretive, not a source of policy or welfare
primitives. MPK/MRPK gaps follow Hsieh-Klenow and related macro misallocation
work.

The baseline must not introduce conceptual state variables such as
`LearningState`, `SelectionState`, `InvolutionState`, `CapacityPressureState`,
`MisallocationState`, `ScaleCompetitionState`, `ScaleCompetitionStage`, or
`PostSuccess`. Use sourced objects instead: investment, durable capacity, demand
absorption, utilization, price, markup or profit, and MPK/MRPK gaps.

The clean axis is dynamic capacity misallocation. If $Z_t$ is used as shorthand,
it refers only to already defined endogenous objects such as durable capacity,
demand absorption, utilization, prices, profits, fiscal costs, and MPK/MRPK
gaps. It does not add a new baseline state variable.

---

## 1. Regions, sectors, and labor

There are $R$ regions indexed by $r$ and two sectors:

$$j\in\{N,O\},$$

where $N$ is the NEV sector and $O$ is the outside sector.

Regional labor is fixed in the baseline:

$$L_{r,t}^N+L_{r,t}^O=\bar L_r.$$

Wages are region-specific:

$$w_{r,t}.$$

Partial labor mobility, migration, and hukou frictions are extensions.

---

## 2. Capital and NEV installed capacity

NEV installed capacity is durable, partly irreversible sector-specific capital:

$$H_{r,t}^N.$$

There is no separate $K_{r,t}^N$ in the baseline. If macro notation is needed,
define $K_t^N\equiv\sum_r H_{r,t}^N$.

Aggregate capital market clearing is:

$$K_t=K_t^O+\sum_r H_{r,t}^N.$$

Outside-sector capital evolves as:

$$K_{t+1}^O=(1-\delta_K)K_t^O+I_t^{K,O}.$$

NEV capacity evolves as:

$$H_{r,t+1}^N=(1-\delta_H)H_{r,t}^N+I_{r,t}^H.$$

The notation $I_t^K$ is avoided in the baseline unless it is explicitly defined
as $I_t^{K,O}$.

Partial irreversibility can be represented by small $\delta_H$, nonnegative net
capacity investment, construction lags, or a low recovery value for retired
capacity.

---

## 3. Production

NEV realized output is:

$$Y_{r,t}^N=u_{r,t}^N H_{r,t}^N,\qquad u_{r,t}^N\in[0,1].$$

A richer version may use:

$$
Y_{r,t}^N
=
\min\left\{
A_{r,t}^N F(H_{r,t}^N,L_{r,t}^N),\;
H_{r,t}^N
\right\}.
$$

Outside-sector output is:

$$
Y_{r,t}^O
=
A_r^O(K_{r,t}^O)^{\alpha_O}(L_{r,t}^O)^{1-\alpha_O}.
$$

Baseline outside-sector technology is exogenous:

$$A_{r,t}^O=A_r^O.$$

---

## 4. Demand absorption and product-market pricing

Aggregate sectoral outputs are:

$$Y_t^N=\sum_r Y_{r,t}^N,\qquad Y_t^O=\sum_r Y_{r,t}^O.$$

Final output is:

$$
Y_t=
\left[
\eta_N(Y_t^N)^{\frac{\epsilon-1}{\epsilon}}
+(1-\eta_N)(Y_t^O)^{\frac{\epsilon-1}{\epsilon}}
\right]^{\frac{\epsilon}{\epsilon-1}}.
$$

With the final-good price normalized to one, NEV relative price is:

$$
P_t^N
=
\eta_N
\left(
\frac{Y_t}{Y_t^N}
\right)^{1/\epsilon}.
$$

The baseline does not impose a standalone inverse demand curve.

The baseline demand-absorption object is:

$$Q_t^N=D_t^N(P_t^N).$$

Lower NEV relative prices are not welfare losses by themselves. In the CES
system, lower prices can raise consumer or final-good welfare. Any welfare
comparison must credit this benefit and producer surplus, then compare it with
fiscal costs, idle-capacity costs, and capital misallocation.

The model's main question is therefore whether decentralized local
implementation creates dynamic capacity misallocation relative to implementable
centralized coordination. The key transition condition is:

$$
\zeta_{rt}^{L,NEV}(Z_t)>0
\quad \text{but} \quad
\zeta_{rt}^{C,NEV}(Z_t)\leq0.
$$

At that point local expansion remains privately and locally rational, while the
central return to another unit of expansionary policy has fallen or turned
negative.

---

## 5. Resource constraint

The aggregate resource constraint is:

$$
Y_t
=
C_t
+I_t^{K,O}
+\sum_r I_{r,t}^H
+\sum_r G_{r,t}
+AdjCost_t
+DebtCost_t.
$$

The fiscal subsidy $\phi s_{r,t}H_{r,t}^N$ is a budget item, not an additional
aggregate resource absorption beyond the investment and public-spending objects
already listed above.

---

## 6. NEV policy wedge

Local government $r$ chooses one expansionary NEV policy wedge:

$$s_{r,t}\geq0.$$

It lowers the effective cost of NEV installed capacity:

$$R_{r,t}^{N,eff}=r_t-\phi s_{r,t}.$$

The gross fiscal subsidy cost is:

$$SubsidyCost_{r,t}=\phi s_{r,t}H_{r,t}^N.$$

---

## 7. Optional learning law

Learning is optional in the clean baseline. If included, use a sourced
learning-by-doing or productivity law such as:

$$
A_{r,t+1}^N
=
A_{r,t}^N
+\psi_L
\frac{\bar A_t-A_{r,t}^N}{\bar A_t}
(Y_{r,t}^N)^\nu
+\psi_G
\frac{\bar A_t-A_{r,t}^N}{\bar A_t}
\left(
\sum_{r'\neq r}Y_{r',t}^N
\right)^\nu.
$$

The frontier evolves exogenously:

$$\bar A_{t+1}=(1+g_A)\bar A_t.$$

This specification is a benefit-side extension. The dynamic capacity
misallocation mechanism must be able to stand without it.

---

## 8. Local government budget

The local government budget is:

$$
\tau_r(Y_{r,t}^N+Y_{r,t}^O)
+B_{r,t+1}
=
(1+r_t^g)B_{r,t}
+\phi s_{r,t}H_{r,t}^N
+G_{r,t}
+\mathcal C(B_{r,t+1}).
$$

Debt cost is:

$$\mathcal C(B_{r,t+1})=\frac{\kappa_B}{2}B_{r,t+1}^2.$$

Gross NEV subsidy cost is $\phi s_{r,t}H_{r,t}^N$.

Net NEV fiscal cost can be recorded as:

$$NetCost_{r,t}^N=\phi s_{r,t}H_{r,t}^N-\tau_rY_{r,t}^N.$$

The outside sector's fiscal contribution to financing local spending is
$\tau_rY_{r,t}^O$.

---

## 9. Local government objective

Local government $r$ solves:

$$
\max_{\{s_{r,t},B_{r,t+1}\}}
\sum_{t=0}^{\infty}
\beta^t
\left[
\theta_yY_{r,t}^N
+\theta_eL_{r,t}^N
+\theta_fFiscalSurplus_{r,t}
-\frac{\chi_s}{2}(s_{r,t}-s_{r,t-1})^2
\right].
$$

The baseline does not include an additional $\kappa s_{r,t}^2/2$ cost. That term
is reserved for robustness or extensions if it receives a separate economic
interpretation.

---

## 10. Constrained planner

The constrained planner chooses policy instruments:

$$\{s_{r,t}^{CP}\}_{r=1}^R$$

to maximize aggregate welfare:

$$
\max_{\{s_{r,t}^{CP}\}}
\sum_{t=0}^{\infty}\beta^tU(C_t,L_t),
$$

subject to firm behavior, regional labor accounting, durable-capacity laws,
government budgets, demand absorption, optional learning if included, and the
resource constraint. A full representative-household Euler equation is not part
of the clean baseline.

The main welfare comparison is:

$$W^D\quad \text{vs.}\quad W^{CP}.$$

The first-best allocation $W^{FB}$ is only an upper bound.

---

## 11. Decentralized equilibrium

A decentralized equilibrium consists of paths for:

$$
\{C_t,K_t^O,H_{r,t}^N,B_{r,t},s_{r,t},
Y_{r,t}^N,Y_{r,t}^O,w_{r,t},P_t^N\}
$$

such that:

1. firms respond to policy and market states;
2. local governments solve their dynamic policy problem;
3. local policies form a simultaneous Markov-Nash equilibrium;
4. labor is accounted for region by region;
5. capital and durable-capacity laws hold;
6. government budgets hold;
7. demand absorption and product-market pricing hold;
8. the final-good resource constraint holds;
9. optional learning laws hold only if included.

---

## 12. Baseline state vector

The baseline dynamic state vector is:

$$
X_t=
\{H_{r,t}^N,B_{r,t},s_{r,t-1}\}_{r=1}^R.
$$

The full firm productivity distribution $\mu_{r,t}(z)$ is not in the baseline
state vector. Optional learning adds $A_{r,t}^N$ only with separate citation
discipline.

---

## 13. Results to prove before code

1. Expansionary local policy increases capacity investment and future durable
   NEV capacity.
2. When $\zeta^{L,NEV}(Z_t)>0$ but $\zeta^{C,NEV}(Z_t)\leq0$, derive sufficient
   conditions under which decentralized Markov-Nash policy exceeds implementable
   centralized coordination: $s^D>s^{CP}$.
3. Under those same sufficient conditions, derive dynamic capacity
   misallocation, lower utilization, NEV price compression, and an MPK/MRPK gap:
   $H^{N,D}>H^{N,CP}$, $u^{N,D}<u^{N,CP}$, and $MPK^{N,D}<MPK^{O,D}$.
4. The net welfare comparison is not preset. The model must characterize the
   conditions under which $W^D<W^{CP}$, $W^D\approx W^{CP}$, or $W^D>W^{CP}$
   after crediting consumer surplus, producer surplus, and optional learning
   benefits.
