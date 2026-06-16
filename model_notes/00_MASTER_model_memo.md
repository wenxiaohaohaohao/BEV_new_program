# MASTER Model Memo

**Project title:**
Local Industrial Policy after Success: Creative Destruction or Aggregate
Misallocation? Evidence from China's NEV Industry

**Status:** Accepted baseline model memo after the Claude second-review response
and the external notes on active firm response and macro-JMP positioning. The
closure contract is `00_POST_REVISION_MODEL_SKELETON.md`.

**Last updated:** 2026-06-16

---

## 1. Research question

This paper studies the dual role of decentralized local industrial policy across
development stages of a strategic emerging industry. In the early stage, when the
industry is constrained by learning externalities, weak market formation, and
supply-chain coordination failures, the combination of local governments and
private capital can promote industry takeoff, cost decline, and firm screening.
After the industry enters a scale-competition stage, continued expansionary
investment attraction, subsidies, and capacity support can generate duplicated
entry, low utilization, price compression, capital-return gaps, and aggregate
resource misallocation.

The paper compares decentralized local implementation with implementable
centralized coordination and asks when local competition is discovery and creative
destruction, and when it becomes duplicated capacity and aggregate
misallocation. The welfare effect of local industrial policy is
state-contingent.

The paper is not a no-policy critique of industrial policy or a claim that low
prices are mechanically harmful. Existing studies explain how China's NEV
industry rose. This paper asks whether the decentralized local implementation
that helped generate this rise also produced duplicated capacity and aggregate
misallocation once the industry entered the scale-competition stage.
It is also not a "government versus firms" story. Firms actively respond to
policy, expected demand, expected prices, financing conditions, and productivity;
the sign of the welfare effect depends on whether decentralized discovery,
learning, cost reduction, consumer gains, and private-capital mobilization exceed
producer price/revenue compression, idle capacity, MPK gaps, fiscal costs, and
delayed exit or innovation distortions.

---

## 2. Core mechanism

$$
\text{local Markov-Nash policy game across industry stages}
\;+\;
\text{private firm entry/capacity response}
\Rightarrow
\left\{
\begin{array}{l}
\text{early stage: learning, market formation, supply-chain coordination}\\
\text{scale-competition stage: investment attraction, subsidies, capacity support}
\end{array}
\right.
\Rightarrow
\left\{
\begin{array}{l}
\text{industry takeoff, cost decline, firm screening, creative destruction}\\
\text{duplicated entry, low utilization, price compression, MPK gaps}
\end{array}
\right.
\Rightarrow
\text{net welfare comparison } W^D-W^{CP}.
$$

Industrial policy can be welfare-improving in early states with strong learning,
market-formation, and supply-chain coordination benefits. Decentralized local
implementation can also have information, investment-attraction,
experimentation, and private-capital-mobilization advantages. The potential
distortion arises when the same decentralized expansionary tools continue after
the industry enters scale competition and capacity expands faster than effective
demand.

The price channel is state-contingent. Lower NEV prices can raise consumer or
final-good welfare. The paper does not pre-commit to $W^D<W^{CP}$. The
quantitative object is the net trade-off: in some states consumer, learning,
discovery, and mobilization benefits may offset misallocation costs; in other
states fiscal costs, low utilization, wasted fixed or capital costs, delayed
exit, and innovation distortions may dominate.

The three admissible outcomes are:

1. $W^D<W^{CP}$: NEV policy can still be successful overall, but decentralized
   local implementation generates lower welfare relative to central
   coordination.
2. $W^D\approx W^{CP}$: local competition creates duplicated capacity, but local
   information, investment-attraction capacity, and private-capital mobilization
   offset much of the misallocation cost.
3. $W^D>W^{CP}$: decentralized competition functions as a discovery mechanism;
   multi-region experimentation and firm competition waste some resources but
   accelerate learning, cost decline, and winner selection.

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

Firms are active optimizers. In the baseline, this is represented by the private
capacity response to policy and market states rather than by a full
heterogeneous-firm dynamic state. A reduced-form entry or expansion margin may
depend on the local policy wedge, expected NEV demand, expected NEV prices,
financing conditions, and firm productivity, but the first closed model only
requires that NEV installed capacity responds positively to the effective return
created by the policy wedge.

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
planner internalizes cross-region learning spillovers, the consumer or final-good
benefit from lower NEV prices, producer price/revenue compression, excess
capacity, fiscal costs, debt costs, and aggregate MPK losses.

A first-best planner that directly chooses allocations is only an appendix upper
bound:

$$W^{FB}\geq \max\{W^{CP},W^D\}.$$

If a full-information constrained planner that can reproduce all decentralized
implementation advantages is introduced as a separate upper-bound benchmark, it
will satisfy $W^{CP,FI}\geq W^D$ by construction. The main $CP$ object is the
implementable centralized policy benchmark, so $W^D-W^{CP}$ is not signed by
definition.

---

## 10. Decentralized equilibrium

The decentralized equilibrium combines a simultaneous Markov-Nash policy game
among local governments with private firm responses to policy and market states:

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

## 11. Definition of creative destruction versus aggregate misallocation

The same decentralized local policy system can generate creative destruction or
aggregate misallocation. Define the diagnostic vector:

$$
\mathcal T_t=
\left(
s_t^D-s_t^{CP},\;
H_t^{N,D}-H_t^{N,CP},\;
u_t^{N,CP}-u_t^{N,D},\;
MPK_t^{O,D}-MPK_t^{N,D},\;
W^D-W^{CP}
\right).
$$

The welfare component is not signed by definition. It credits consumer or
final-good benefits from lower NEV prices, learning, discovery, and mobilization
benefits before subtracting fiscal, duplicated-capacity,
capital-misallocation, delayed-exit, and innovation-distortion costs. The
economy is in a misallocation-dominant regime only when duplicated capacity, low
utilization, MPK gaps, and the net welfare gap jointly indicate that
decentralized competition has become socially costly relative to $CP$.

---

## 12. Main theoretical sequence

1. **Lemma 1:** A higher local policy wedge raises NEV installed capacity.
2. **Lemma 2:** CES-derived demand implies price compression when NEV quantity
   expands relative to effective demand; the welfare sign of lower prices is
   ambiguous before fiscal and resource costs are included.
3. **Proposition 1:** Early-stage decentralized or coordinated policy can raise
   welfare when marginal learning, market-formation, and supply-chain
   coordination benefits exceed fiscal and misallocation costs.
4. **Proposition 2:** In the scale-competition or misallocation-dominant regime,
   stated sufficient conditions imply decentralized Markov-Nash policy exceeds
   implementable centralized coordination: $s^D>s^{CP}$.
5. **Proposition 3:** Given Proposition 2 and the net-cost-dominance condition,
   decentralized equilibrium generates duplicated NEV capacity, lower
   utilization, an MPK gap, and lower welfare relative to $CP$. Without that
   condition, $W^D-W^{CP}$ remains a quantitative trade-off rather than a
   theorem.

Policy exit that is too slow is a dynamic or numerical result unless separately
proven.

---

## 13. Quantification discipline

Moments are separated into:

- descriptive moments: entry, capacity, utilization, effective demand, prices,
  margins, learning/cost decline, consumer or final-good price benefits, MPK
  gaps;
- causal moments: policy effects on capacity, entry, and persistence;
- calibration/external moments: fiscal outlays, CES elasticity, learning
  parameters, financing conditions, local information/mobilization advantages,
  and local-government weights.

Firm-entry moments validate the private-response mechanism. They do not require
the first quantitative model to carry a full firm productivity distribution.

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
5. Prove sufficient conditions for $s^D>s^{CP}$ in the scale-competition or
   misallocation-dominant regime.
6. Derive duplicated-capacity, utilization, MPK, and welfare-regime
   implications.
7. Only then plan numerical implementation.
