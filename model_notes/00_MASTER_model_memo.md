# MASTER Model Memo

**Project title:**
Decentralized Industrial Policy and Dynamic Capacity Misallocation: Evidence
from China's NEV Industry

**中文主线:**
地方分散化产业政策如何通过部分不可逆的耐用品产能积累，在需求吸收不足时造成动态产能错配和地方—中央福利回报偏离。

**Status:** Accepted baseline model memo after the Claude second-review response
and the external notes on active firm response and macro-JMP positioning. The
closure contract is `00_POST_REVISION_MODEL_SKELETON.md`.

**Last updated:** 2026-06-17

---

## 0. Model discipline and provenance

**Model discipline.** Every primitive in the baseline model must come from an
existing literature or be a direct mapping of an object in that literature to
the NEV setting. The paper's contribution is not to introduce new primitive
state variables. It is to combine existing modules to study how decentralized
local policy affects durable capacity investment, demand absorption,
utilization, sectoral capital returns, and aggregate welfare relative to
centralized coordination.

The mother model for local-central policy misalignment is Chen-Liu-Song:

$$
\zeta_{rt}^{L,NEV}\neq \zeta_{rt}^{C,NEV}.
$$

where $\zeta_{rt}^{L,NEV}$ is the local intervention index, or local welfare
gain per fiscal dollar, and $\zeta_{rt}^{C,NEV}$ is the central intervention
index, or aggregate welfare gain per fiscal dollar. The NEV local-central gap is:

$$
Gap_{rt}^{NEV}
=
\zeta_{rt}^{L,NEV}
-
\zeta_{rt}^{C,NEV}.
$$

This gap is the provenance-controlled version of the local-versus-planner wedge
used in Modules 3 and 4.

| Module object | Project symbol | Literature source | Original object | NEV mapping | Baseline status |
|---|---|---|---|---|---|
| Local policy return | $\zeta_{rt}^{L,NEV}$ | Chen-Liu-Song | local intervention index | local welfare gain per fiscal dollar spent on NEV support | Baseline |
| Central policy return | $\zeta_{rt}^{C,NEV}$ | Chen-Liu-Song | central intervention index | aggregate welfare gain per fiscal dollar spent on NEV support | Baseline |
| Local-central gap | $Gap_{rt}^{NEV}$ | Chen-Liu-Song | local-central intervention gap | source of decentralized-policy wedge relative to $CP$ | Baseline |
| Policy platform | $PolicyPlatform_{rt}^{main}$ | Chen-Liu-Song | policy platform approach | NEV industrial parks, local state capital, local funds, land support, and planned capacity projects | Empirical implementation |
| Fiscal autonomy | fiscal autonomy | Chen-Liu-Song | local fiscal discretion | heterogeneity in local capacity to finance or implement NEV support | Empirical implementation |
| Composite expansionary policy | $s_{r,t}$ | Chen-Liu-Song; Barwick-Kalouptsidi-Zahur | policy intervention / policy wedge | subsidies, land, credit, industrial funds, park support, investment facilitation | Baseline |
| Firm entry response | $Entry_{r,t}^N(s)$ | Barwick-Kalouptsidi-Zahur | policy-induced entry | NEV firm/project entry response to local support | Baseline mechanism / empirical moment |
| Capacity investment | $I_{r,t}^H$ | Barwick-Kalouptsidi-Zahur; Aggregate Demand and Irreversible Investment | policy-induced investment / fixed-capital investment | NEV durable capacity investment | Baseline |
| Installed durable capacity | $H_{r,t}^N$ | Aggregate Demand and Irreversible Investment; Barwick-Kalouptsidi-Zahur | partly irreversible fixed capital / productive capacity | NEV installed capacity as durable sector-specific capital | Baseline |
| Capacity law | $H_{r,t+1}^N=(1-\delta_H)H_{r,t}^N+I_{r,t}^H$ | Aggregate Demand and Irreversible Investment; Barwick-Kalouptsidi-Zahur | fixed-capital accumulation | capacity evolves with investment, depreciation, construction lags, and slow exit | Baseline |
| Demand absorption | $D_t^N(P_t^N)$ | Aggregate Demand and Irreversible Investment | aggregate demand absorption | effective NEV demand may not absorb durable capacity one-for-one | Baseline discipline |
| Static absorption shorthand | $Q(H^N)$ | Aggregate Demand and Irreversible Investment, mapped through product-market pricing | capacity-demand-price response | derived shorthand for realized sales in the static proof | Derived, not primitive |
| Price response | $P_t^N$ | demand absorption / product-market clearing | price response to supply/demand | NEV relative price from realized quantity and effective demand | Baseline |
| Utilization / idle capacity | $u_t^N=Q_t^N/H_t^N$ | Barwick-Kalouptsidi-Zahur; Aggregate Demand and Irreversible Investment | idle capacity / demand shortfall relative to fixed capital | low NEV utilization when demand absorption lags durable capacity | Baseline |
| Misallocation gap | $MPK_t^N-MPK_t^O$ | Hsieh-Klenow and macro misallocation literature | MPK/MRPK dispersion | capital return gap between NEV and outside sector | Baseline |
| Welfare comparison | $W^D-W^{CP}$ | Chen-Liu-Song; Barwick-Kalouptsidi-Zahur | local vs central welfare / policy counterfactuals | decentralized implementation versus implementable centralized coordination | Baseline |
| Industry life cycle | entry-exit-innovation-market structure path | Klepper | product life-cycle regularities | interpretation of changing entry, competition, exit, innovation, and market structure over time | Narrative only |

The life cycle is not an exogenous phase split. It is the dynamic path traced by
policy, entry, capacity investment, demand absorption, price adjustment,
utilization, profits, and capital returns. When $Z_t$ is used below, it denotes
this collection of already defined endogenous objects. It is not an additional
state variable.

The baseline does not contain `LearningState`, `SelectionState`,
`InvolutionState`, `CapacityPressureState`, `MisallocationState`, or
`ScaleCompetitionState`. These labels can appear only as narrative descriptions
outside the formal state vector. Learning must be represented through $A_t$,
cumulative output, or learning-by-doing objects. Selection must be represented
through entry, exit, productivity decomposition, or empirical mechanism tests.
Misallocation must be represented through MPK/MRPK gaps, TFPR dispersion, or
output/TFP loss.

---

## 1. Research question

This paper studies a macro-industrial allocation problem. Local governments
support NEV expansion according to local returns. Firms respond by investing in
durable and partly irreversible capacity. Because capacity investment has
construction lags and cannot be costlessly reversed, simultaneous expansion by
many local governments can make future installed capacity exceed effective
demand absorption. When that happens, utilization falls, NEV prices compress,
producer returns fall, and the NEV-sector MPK declines relative to the outside
sector.

The paper compares decentralized local implementation with implementable
centralized coordination. The key transition condition is:

$$
\zeta_{rt}^{L,NEV}(Z_t)>0
\quad \text{but} \quad
\zeta_{rt}^{C,NEV}(Z_t)\leq0.
$$

When this condition holds, local governments can rationally maintain high
expansionary policy because they internalize local investment, employment,
output, and tax-base gains, while the central return to the same expansionary
policy has fallen or turned negative because of idle capacity, fiscal costs, and
capital misallocation.

The paper is not a no-policy critique of industrial policy or a claim that low
prices are mechanically harmful. Existing studies explain how China's NEV
industry rose. This paper asks whether decentralized implementation pushes too
much durable capacity into NEV relative to effective demand and outside-sector
capital returns. The sign of the welfare effect depends on whether consumer
surplus, producer surplus, and optional learning benefits exceed fiscal costs,
idle-capacity costs, and capital-misallocation costs.

---

## 2. Core mechanism

$$
\underbrace{\zeta_{rt}^{L,NEV}-\zeta_{rt}^{C,NEV}}_{\text{Chen-Liu-Song local-central gap}}
\Rightarrow
\underbrace{s_{r,t}}_{\text{local NEV expansionary policy wedge}}
\Rightarrow
\underbrace{I_{r,t}^H,\ H_{r,t+1}^N}_{\text{partly irreversible durable capacity}}
\Rightarrow
\underbrace{D_t^N(P_t^N),\ u_t^N,\ P_t^N,\ \pi_t^N}_{\text{demand absorption and returns}}
\Rightarrow
\underbrace{MPK_t^N-MPK_t^O}_{\text{capital misallocation}}
\Rightarrow
\underbrace{\zeta_{rt}^{L,NEV}(Z_t)-\zeta_{rt}^{C,NEV}(Z_t)}_{\text{local-central return gap}}
\Rightarrow
\underbrace{W^D-W^{CP}}_{\text{net welfare comparison}}.
$$

Entry remains an empirical mechanism and validation object, but the clean
baseline mechanism runs through investment, durable capacity accumulation,
demand absorption, and capital returns. Life-cycle language follows Klepper only
as background narrative.

The price channel is state-contingent. Lower NEV prices can raise consumer or
final-good welfare. The paper does not pre-commit to $W^D<W^{CP}$. The
quantitative object is the net trade-off: in some states consumer surplus,
producer surplus, and optional learning benefits may offset misallocation costs;
in other states fiscal costs, low utilization, wasted fixed or capital costs,
and slow capacity exit may dominate.

The three admissible outcomes are:

1. $W^D<W^{CP}$: NEV policy can still be successful overall, but decentralized
   local implementation generates lower welfare relative to central
   coordination.
2. $W^D\approx W^{CP}$: local competition creates duplicated capacity, but local
   information, investment-attraction capacity, and private-capital mobilization
   offset much of the misallocation cost.
3. $W^D>W^{CP}$: local implementation advantages, consumer gains, producer
   surplus, or learning benefits exceed dynamic capacity misallocation costs.

---

## 3. Environment

- **Time:** discrete, $t=0,1,2,\ldots$.
- **Regions:** $r=1,\ldots,R$; the first analytic model uses two symmetric
  regions.
- **Sectors:** $N$ for NEV and $O$ for outside manufacturing.
- **Agents:** firms, local governments, and a constrained centralized
  coordinator. A full representative-household Euler block is not part of the
  clean baseline.

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

## 5. Demand absorption, labor accounting, and final good

The clean baseline does not require a complete household consumption-savings
problem. It uses demand absorption and aggregate welfare accounting rather than
a representative-household Euler equation. NEV realized demand is:

$$Q_t^N=D_t^N(P_t^N).$$

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

With the final-good price normalized to one, a CES implementation can discipline
relative prices:

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

## 7. Optional learning benefit

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

This is an optional benefit-side bridge for later quantification. It is not the
core clean-axis mechanism. If data or citation discipline is insufficient, set
the learning benefit aside and estimate welfare using consumer surplus,
producer surplus, fiscal cost, idle-capacity cost, and misallocation cost.

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

while firms continue to optimize privately. This benchmark maps
to the Chen-Liu-Song central intervention index $\zeta_{rt}^{C,NEV}$. The
constrained planner internalizes consumer surplus, producer surplus, demand
absorption, durable-capacity overaccumulation, fiscal costs, debt costs,
idle-capacity costs, and aggregate MPK/MRPK losses. Optional learning benefits
can be added only when separately disciplined.

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
X_t=\{H_{r,t}^N,B_{r,t},s_{r,t-1}\}_{r=1}^R.
$$

The clean baseline equilibrium requires regional labor accounting, firm
responses, durable-capacity laws, demand absorption, local budget constraints,
local government optimality, Markov-Nash best responses, and resource
feasibility. A full household saving Euler equation is not part of the baseline.
An optional learning extension adds $A_{r,t}^N$ to the state vector.

---

## 11. Definition of dynamic capacity misallocation

Dynamic capacity misallocation arises when decentralized policy pushes durable
NEV capacity above effective demand absorption and lowers the NEV-sector return
relative to the outside sector. Define the diagnostic vector:

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

The welfare component is not signed by definition. It credits consumer surplus,
producer surplus, and optional learning benefits before subtracting fiscal
costs, idle-capacity costs, and capital-misallocation costs. The economy is in a
dynamic capacity misallocation outcome only when low utilization, price
compression, MPK/MRPK gaps, and the net welfare gap jointly indicate that
decentralized implementation is socially costly relative to $CP$.

---

## 12. Main theoretical sequence

1. **Lemma 1:** A higher local policy wedge raises NEV capacity investment and
   future installed durable capacity.
2. **Lemma 2:** Demand absorption implies falling utilization and price
   compression when installed NEV capacity grows faster than effective demand;
   the welfare sign of lower prices is ambiguous before consumer surplus,
   producer surplus, fiscal costs, and resource costs are included.
3. **Proposition 1:** Expansionary policy can raise welfare when the marginal
   local and aggregate returns to capacity support are positive.
4. **Proposition 2:** When
   $\zeta^{L,NEV}(Z_t)>0$ but $\zeta^{C,NEV}(Z_t)\leq0$, stated sufficient
   conditions imply decentralized Markov-Nash policy exceeds implementable
   centralized coordination: $s^D>s^{CP}$.
5. **Proposition 3:** Given Proposition 2 and the net-cost-dominance condition,
   decentralized equilibrium generates excessive durable NEV capacity, lower
   utilization, an MPK/MRPK gap, and lower welfare relative to $CP$. Without
   that condition, $W^D-W^{CP}$ remains a quantitative trade-off rather than a
   theorem.

Policy exit that is too slow is a dynamic or numerical result unless separately
proven.

---

## 13. Quantification discipline

Moments are separated into:

- descriptive moments: policy platforms, investment, installed capacity,
  utilization, effective demand, prices, margins, consumer surplus, producer
  surplus, and MPK/MRPK gaps;
- causal moments: policy effects on capacity investment, future installed
  capacity, utilization, prices, and MPK/MRPK gaps;
- calibration/external moments: fiscal outlays, demand elasticity, capacity
  depreciation or retirement, construction lags, capital shares, recovery value,
  and local-government weights.

Firm-entry moments validate the private-response mechanism. They do not require
the first quantitative model to carry a full firm productivity distribution.

Demonstration-city or pilot designation is potential policy variation requiring
validation, not an automatically exogenous instrument.

---

## 14. Counterfactuals

1. No local industrial policy as an auxiliary counterfactual.
2. Centralized constrained policy equilibrium.
3. Subsidy cap.
4. Capacity approval rule.
5. Faster capacity retirement.
6. Policy-mix shift away from entry/capacity support.

These counterfactuals are allowed because they are policy-counterfactual objects
in the industrial-policy and local-central coordination literatures. They are not
new welfare primitives.

---

## 15. Work sequence before code

1. Check the post-revision skeleton closure.
2. Write the closed symmetric two-region static model.
3. Derive the local government FOC.
4. Derive the constrained-planner FOC.
5. Prove sufficient conditions for $s^D>s^{CP}$ when local policy returns remain
   positive but central policy returns have fallen or turned negative.
6. Derive dynamic capacity misallocation, utilization, price-compression,
   MPK/MRPK, and welfare-decomposition implications.
7. Only then plan numerical implementation.
