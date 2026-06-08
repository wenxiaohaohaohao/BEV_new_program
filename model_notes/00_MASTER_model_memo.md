# MASTER Model Memo

**Project title:**
State-Contingent Industrial Policy, Local Competition, and Aggregate Misallocation:
Evidence from China's NEV Industry

**Status:** Accepted baseline model memo after third-round critique integration.
Detailed discussion, alternatives, and unresolved issues remain in module-specific
notes.

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

## 4. Policy wedge

The baseline policy object is one local expansionary policy wedge:

$$s_{r,t}\geq0.$$

It summarizes local NEV support such as subsidies, land support, credit support,
industrial funds, tax preferences, infrastructure, and investment facilitation.
The wedge lowers the effective cost of NEV installed capacity:

$$R_{r,t}^N=r_t-\phi s_{r,t}.$$

The associated local fiscal outlay is:

$$SubsidyOutlay_{r,t}=\phi s_{r,t}H_{r,t}^N.$$

---

## 5. Household, final good, and labor

The representative household consumes the final good, owns firms and financial
claims, and supplies savings. The household problem pins down the intertemporal
Euler condition.

Regional labor is fixed in the baseline:

$$L_{r,t}^N+L_{r,t}^O=\bar L_r.$$

The regional wage $w_{r,t}$ clears the local labor market.

Final output is CES:

$$
Y_t =
\left[
\eta_N(Y_t^N)^{\frac{\varepsilon-1}{\varepsilon}}
+ \eta_O(Y_t^O)^{\frac{\varepsilon-1}{\varepsilon}}
\right]^{\frac{\varepsilon}{\varepsilon-1}},
\qquad \eta_N+\eta_O=1.
$$

With the final-good price normalized to one, NEV relative price is derived from
the CES FOC:

$$
P_t^N=\eta_N\left(\frac{Y_t}{Y_t^N}\right)^{1/\varepsilon}.
$$

---

## 6. Firms and NEV installed capacity

Outside-sector output is:

$$
Y_{r,t}^O =
A_{r,t}^O(K_{r,t}^O)^{\alpha_O}(L_{r,t}^O)^{1-\alpha_O}.
$$

In the NEV sector, installed capacity $H_{r,t}^N$ is the sector-specific capital
stock. There is no separate baseline NEV capital stock with a separate
accumulation equation.

Potential NEV output is:

$$
\tilde Y_{r,t}^N =
A_{r,t}^N(H_{r,t}^N)^{\alpha_N}(L_{r,t}^N)^{1-\alpha_N}.
$$

Realized output and utilization satisfy:

$$Y_{r,t}^N=u_{r,t}^N H_{r,t}^N,\qquad 0\leq u_{r,t}^N\leq1.$$

Installed capacity evolves as:

$$H_{r,t+1}^N=(1-\delta_H)H_{r,t}^N+I_{r,t}^H.$$

NEV investment appears only through $I_{r,t}^H$ in the resource constraint.

---

## 7. Learning externalities

NEV productivity evolves without mechanical knowledge depreciation:

$$
A_{r,t+1}^N =
A_{r,t}^N
+(\bar A^N-A_{r,t}^N)
\left[
\psi_L(Y_{r,t}^N)^\nu
+\psi_G\left(\sum_{r'\neq r}Y_{r',t}^N\right)^\nu
\right].
$$

Own-region output drives local learning. Other-region output drives spillovers.
The frontier-gap term makes learning diminish as a region approaches $\bar A^N$.

---

## 8. Local government problem

Each local government chooses $s_{r,t}$ to maximize a reduced-form payoff:

$$
\mathcal L_r
=
\sum_{t=0}^{\infty}\beta^t
\left[
\theta_yY_{r,t}^N
+\theta_eL_{r,t}^N
+\theta_fFiscalSurplus_{r,t}
-\frac{\kappa}{2}s_{r,t}^2
-\frac{\chi_s}{2}(s_{r,t}-s_{r,t-1})^2
\right].
$$

The baseline sets $\beta_g=\beta$. The quadratic $\kappa$ term is an
administrative, political, or distortionary cost, not the subsidy outlay.

Local fiscal surplus is disciplined by:

$$
\phi s_{r,t}H_{r,t}^N
+G_{r,t}
+\mathcal C_B(B_{r,t+1})
=
\tau_rY_{r,t}
+B_{r,t+1}
-(1+r_t^g)B_{r,t}
+T_{r,t}^C.
$$

---

## 9. Constrained planner benchmark

The main normative benchmark is the constrained planner / centralized policy
equilibrium. It chooses policy instruments:

$$\{s_{r,t}^{CP}\}_{r=1}^R,$$

while households and firms continue to optimize privately. The constrained
planner internalizes cross-region learning spillovers, CES price compression,
excess capacity, fiscal costs, and aggregate MPK losses.

A first-best planner that directly chooses allocations is only an appendix upper
bound:

$$W^{FB}\geq W^{CP}\geq W^D.$$

---

## 10. Decentralized equilibrium

The decentralized equilibrium is a simultaneous Markov-Nash policy game among
local governments:

$$
s_{r,t}^D=BR_r(s_{-r,t}^D;Z_{r,t},Z_t).
$$

The full equilibrium requires:

1. household saving optimality;
2. regional labor-market clearing;
3. firm optimality and NEV capacity investment;
4. CES-derived NEV demand;
5. local government budget constraints;
6. local government policy optimality;
7. Markov-Nash best responses;
8. capacity, productivity, and resource feasibility.

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

Policy endogeneity must be addressed before policy variation is used causally.
Learning parameters should start from external evidence or sensitivity analysis
rather than a naive cumulative-output regression.

---

## 14. Counterfactuals

1. No local industrial policy.
2. Centralized constrained policy equilibrium.
3. Subsidy cap or anti-duplication rule.
4. Faster policy exit.
5. Expansionary versus productivity-enhancing support.

---

## 15. Work sequence before code

1. Write the closed symmetric two-region static model.
2. Derive the local government FOC.
3. Derive the constrained-planner FOC.
4. Prove sufficient conditions for $s^D>s^{CP}$.
5. Derive capacity, utilization, MPK, and welfare implications.
6. Only then plan numerical implementation.
