# MASTER Model Memo

**Project title:**
State-Contingent Industrial Policy, Local Competition, and Aggregate Misallocation:
Evidence from China's NEV Industry

**Status:** Accepted baseline model memo after the Claude second-review response.
The closure contract is `00_POST_REVISION_MODEL_SKELETON.md`.

**Last updated:** 2026-06-08

---

## 1. Research question

How does decentralized local industrial policy in a strategic emerging industry
generate over-entry, excess capacity, price and profit compression, and aggregate
capital misallocation after initially facilitating industrial upgrading?

The paper is not a no-policy critique of industrial policy. It studies whether
decentralized local policy competition pushes expansionary support above the
state-contingent level chosen by a constrained centralized policy benchmark.

---

## 2. Core mechanism

$$
\text{local Markov-Nash policy game}
\Rightarrow
\text{excess NEV installed capacity}
\Rightarrow
\text{CES-demand price compression}
\Rightarrow
\text{low utilization and MPK gap}
\Rightarrow
\text{aggregate misallocation and welfare loss}.
$$

Industrial policy can be welfare-improving in early states with strong learning
and coordination benefits. The distortion arises when local governments continue
to expand NEV capacity beyond the constrained-planner policy level.

---

## 3. Environment

- **Time:** discrete, $t=0,1,2,\ldots$.
- **Regions:** $r=1,\ldots,R$; the first analytic model uses two symmetric
  regions.
- **Sectors:** $N$ for NEV and $O$ for outside manufacturing.
- **Agents:** representative household, firms, local governments, and a
  constrained centralized planner.

---

## 4. Capital, capacity, and resource feasibility

NEV installed capacity is the NEV sector-specific capital stock:

$$H_{r,t}^N.$$

There is no separate baseline $K_{r,t}^N$.

Aggregate capital clearing is:

$$K_t=K_t^O+\sum_rH_{r,t}^N.$$

Outside-sector capital and NEV capacity evolve as:

$$K_{t+1}^O=(1-\delta_K)K_t^O+I_t^{K,O},$$

$$H_{r,t+1}^N=(1-\delta_H)H_{r,t}^N+I_{r,t}^H.$$

The aggregate resource constraint is:

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

If $I_t^K$ is used, it means $I_t^{K,O}$.

---

## 5. Household, labor, and final good

The representative household consumes the final good, owns firms and financial
claims, and supplies savings. The household problem pins down the intertemporal
Euler condition.

Regional labor is fixed:

$$L_{r,t}^N+L_{r,t}^O=\bar L_r.$$

The regional wage $w_{r,t}$ clears the local labor market.

Aggregate sectoral outputs are:

$$Y_t^N=\sum_rY_{r,t}^N,\qquad Y_t^O=\sum_rY_{r,t}^O.$$

Final output is CES:

$$
Y_t=
\left[
\eta_N(Y_t^N)^{\frac{\epsilon-1}{\epsilon}}
+(1-\eta_N)(Y_t^O)^{\frac{\epsilon-1}{\epsilon}}
\right]^{\frac{\epsilon}{\epsilon-1}}.
$$

With the final-good price normalized to one:

$$P_t^N=\eta_N\left(\frac{Y_t}{Y_t^N}\right)^{1/\epsilon}.$$

---

## 6. Firms

Outside-sector output is:

$$
Y_{r,t}^O=A_r^O(K_{r,t}^O)^{\alpha_O}(L_{r,t}^O)^{1-\alpha_O}.
$$

Baseline outside-sector technology is exogenous:

$$A_{r,t}^O=A_r^O.$$

NEV output is represented by installed capacity and utilization:

$$Y_{r,t}^N=u_{r,t}^NH_{r,t}^N,\qquad 0\leq u_{r,t}^N\leq1.$$

Local policy lowers the effective cost of NEV installed capacity:

$$R_{r,t}^{N,eff}=r_t-\phi s_{r,t}.$$

Gross fiscal subsidy cost is:

$$SubsidyCost_{r,t}=\phi s_{r,t}H_{r,t}^N.$$

---

## 7. Learning externalities

NEV productivity evolves according to:

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

The frontier evolves exogenously:

$$\bar A_{t+1}=(1+g_A)\bar A_t.$$

This preserves local learning, cross-region spillovers, diminishing learning,
no knowledge depreciation, and no own-output double-counting in spillovers.

---

## 8. Local government problem

Local government $r$ chooses one expansionary NEV policy wedge:

$$s_{r,t}\geq0.$$

The local budget is:

$$
\tau_r(Y_{r,t}^N+Y_{r,t}^O)
+B_{r,t+1}
=
(1+r_t^g)B_{r,t}
+\phi s_{r,t}H_{r,t}^N
+G_{r,t}
+\mathcal C(B_{r,t+1}).
$$

Fiscal surplus is:

$$
FiscalSurplus_{r,t}
=
\tau_r(Y_{r,t}^N+Y_{r,t}^O)
-\phi s_{r,t}H_{r,t}^N
-r_t^gB_{r,t}
-G_{r,t}
-\mathcal C(B_{r,t+1}).
$$

The local objective is:

$$
\mathcal L_r
=
\sum_{t=0}^{\infty}\beta^t
\left[
\theta_yY_{r,t}^N
+\theta_eL_{r,t}^N
+\theta_fFiscalSurplus_{r,t}
-\frac{\chi_s}{2}(s_{r,t}-s_{r,t-1})^2
\right].
$$

The baseline does not include an additional $\kappa s_{r,t}^2/2$ cost.

---

## 9. Constrained planner benchmark

The main normative benchmark is the constrained planner / centralized policy
equilibrium. It chooses policy instruments:

$$\{s_{r,t}^{CP}\}_{r=1}^R,$$

while households and firms continue to optimize privately. The constrained
planner internalizes cross-region learning spillovers, CES price compression,
excess capacity, fiscal costs, debt costs, and aggregate MPK losses.

A first-best planner that directly chooses allocations is only an appendix upper
bound:

$$W^{FB}\geq W^{CP}\geq W^D.$$

---

## 10. Decentralized equilibrium

The decentralized equilibrium is a simultaneous Markov-Nash policy game among
local governments:

$$s_{r,t}^D=BR_r(s_{-r,t}^D;Z_{r,t},Z_t).$$

The baseline dynamic state vector is:

$$
X_t=\{H_{r,t}^N,A_{r,t}^N,B_{r,t},s_{r,t-1}\}_{r=1}^R.
$$

The full equilibrium requires household saving optimality, regional labor
clearing, firm optimality, capital/capacity laws, CES-derived demand, local
budget constraints, local government optimality, Markov-Nash best responses,
learning, and resource feasibility.

---

## 11. Definition of involution

Involution is the equilibrium pattern generated by decentralized local industrial
policy competition:

$$
\text{Involution}_t=
\left(
s_t^D-s_t^{CP},\;
H_t^{N,D}-H_t^{N,CP},\;
u_t^{N,CP}-u_t^{N,D},\;
MPK_t^{O,D}-MPK_t^{N,D},\;
W^{CP}-W^D
\right).
$$

---

## 12. Main theoretical sequence

1. **Lemma 1:** A higher local policy wedge raises NEV installed capacity.
2. **Lemma 2:** CES-derived demand implies price compression when NEV quantity
   expands.
3. **Proposition 1:** Coordinated state-contingent policy can raise welfare when
   marginal learning and coordination benefits exceed fiscal and misallocation
   costs.
4. **Proposition 2:** Under stated sufficient conditions, decentralized
   Markov-Nash policy exceeds constrained-planner policy: $s^D>s^{CP}$.
5. **Proposition 3:** Given over-subsidization, decentralized equilibrium
   generates excess NEV capacity, lower utilization, an MPK gap, and welfare loss.

Policy exit that is too slow is a dynamic or numerical result unless separately
proven.

---

## 13. Quantification discipline

Moments are separated into:

- descriptive moments: capacity, utilization, prices, margins, MPK gaps;
- causal moments: policy effects on capacity, entry, and persistence;
- calibration/external moments: fiscal outlays, CES elasticity, learning
  parameters, and local-government weights.

Demonstration-city or pilot designation is potential policy variation requiring
validation, not an automatically exogenous instrument.

---

## 14. Counterfactuals

1. No local industrial policy.
2. Centralized constrained policy equilibrium.
3. Subsidy cap or anti-duplication rule.
4. Faster policy exit.
5. Expansionary versus productivity-enhancing support.

---

## 15. Work sequence before code

1. Check the post-revision skeleton closure.
2. Write the closed symmetric two-region static model.
3. Derive the local government FOC.
4. Derive the constrained-planner FOC.
5. Prove sufficient conditions for $s^D>s^{CP}$.
6. Derive capacity, utilization, MPK, and welfare implications.
7. Only then plan numerical implementation.
