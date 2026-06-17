# Module 2: Environment, Household, Final Good, Firms, LBD

## 1. Purpose

This module defines the baseline economic environment after the Claude second
review response: fixed regional labor, outside-sector capital, NEV installed
capacity as sector-specific capital, CES-derived demand, resource feasibility,
frontier-gap learning with cross-region spillovers, and a reduced-form active
firm response to policy and market states.

The module follows the provenance table in `00_MASTER_model_memo.md`. Capacity,
entry, investment, idle capacity, demand absorption, and price response are not
free-standing inventions: they are NEV mappings of Barwick-Kalouptsidi-Zahur and
Kalouptsidi-style industry objects.

---

## 2. Environment [Accepted baseline]

- **Time:** discrete, $t=0,1,2,\ldots$.
- **Regions:** $r=1,\ldots,R$; the first analytic model uses $R=2$ symmetric
  regions.
- **Sectors:** $j\in\{N,O\}$, where $N$ is the NEV sector and $O$ is the outside
  sector.
- **Agents:** representative household, firms, local governments, and a
  centralized constrained planner.

SOE heterogeneity, exports, production networks, soft budget constraints,
migration, differentiated demand, financing/valuation channels, entry-cost
wedges, and full firm productivity distributions are extensions.

---

## 3. Household and regional labor [Accepted baseline]

The representative household consumes the final good, owns firms and financial
claims, and supplies savings. The household problem delivers the usual Euler
condition for intertemporal saving.

Labor is regionally segmented:

$$L_{r,t}^N+L_{r,t}^O=\bar L_r.$$

The regional wage $w_{r,t}$ clears region $r$'s labor market. The baseline does
not include migration or partial labor mobility.

---

## 4. Capital and capacity [Accepted baseline]

NEV installed capacity is the NEV sector-specific capital stock:

$$H_{r,t}^N.$$

There is no separate $K_{r,t}^N$ in the baseline.

Aggregate capital market clearing is:

$$K_t=K_t^O+\sum_r H_{r,t}^N.$$

Outside-sector capital evolves as:

$$K_{t+1}^O=(1-\delta_K)K_t^O+I_t^{K,O}.$$

NEV capacity evolves as:

$$H_{r,t+1}^N=(1-\delta_H)H_{r,t}^N+I_{r,t}^H.$$

This is the baseline capacity law of motion. Time-to-build or richer adjustment
frictions can be added later as Kalouptsidi-style extensions, but the first
baseline keeps the law one-period and transparent.

---

## 5. Final good and CES-derived demand [Accepted baseline]

Aggregate sectoral outputs are:

$$Y_t^N=\sum_rY_{r,t}^N,\qquad Y_t^O=\sum_rY_{r,t}^O.$$

Final output is:

$$
Y_t=
\left[
\eta_N(Y_t^N)^{\frac{\epsilon-1}{\epsilon}}
+(1-\eta_N)(Y_t^O)^{\frac{\epsilon-1}{\epsilon}}
\right]^{\frac{\epsilon}{\epsilon-1}}.
$$

With the final-good price normalized to one, the NEV relative price is:

$$P_t^N=\eta_N\left(\frac{Y_t}{Y_t^N}\right)^{1/\epsilon}.$$

Thus NEV price falls when NEV quantity expands relative to final demand. This
price decline can raise consumer or final-good welfare; it is not a welfare loss
by itself. The baseline does not impose an additional standalone inverse demand
curve.

When a demand-absorption object is needed for the static proof or empirical
measurement, write it as $D_t^N(P_t^N)$ or as the derived shorthand $Q(H^N)$.
The shorthand is not a new demand primitive.

---

## 6. Resource constraint [Accepted baseline]

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

The notation $I_t^K$ should not be used together with $\sum_rI_{r,t}^H$ unless
$I_t^K$ is explicitly defined as outside-sector capital investment:

$$I_t^K\equiv I_t^{K,O}.$$

The fiscal subsidy $\phi s_{r,t}H_{r,t}^N$ is a local budget item. It is not an
additional aggregate resource absorption beyond investment, government spending,
adjustment costs, and debt costs.

---

## 7. Firms [Accepted baseline]

### 7.1 Outside sector

The outside sector uses ordinary capital and local labor:

$$
Y_{r,t}^O=A_r^O(K_{r,t}^O)^{\alpha_O}(L_{r,t}^O)^{1-\alpha_O}.
$$

Baseline outside-sector technology is exogenous:

$$A_{r,t}^O=A_r^O.$$

Endogenous outside-sector learning is an extension.

### 7.2 NEV sector

Potential NEV output may be written as:

$$
\tilde Y_{r,t}^N=A_{r,t}^NF(H_{r,t}^N,L_{r,t}^N).
$$

For the first closed model, realized output can be represented by utilization:

$$Y_{r,t}^N=u_{r,t}^NH_{r,t}^N,\qquad 0\leq u_{r,t}^N\leq1.$$

Local policy lowers the effective cost of NEV installed capacity:

$$R_{r,t}^{N,eff}=r_t-\phi s_{r,t}.$$

The gross fiscal subsidy cost is:

$$SubsidyCost_{r,t}=\phi s_{r,t}H_{r,t}^N.$$

### 7.3 Firm response and entry margin

Firms are not passive recipients of local policy. They choose NEV entry,
capacity expansion, utilization, and labor after observing policy and market
states. For the first closed model, this private response is summarized by a
reduced-form capacity response:

$$\frac{\partial H_{r,t}^N}{\partial s_{r,t}}>0,$$

holding the relevant static state fixed. This condition is the minimum firm-side
object needed for the two-region proof.

An empirical entry margin may be recorded as:

$$
Entry_{r,t}^N
=
\mathcal E
\left(
s_{r,t},
E_tY_{t+1}^N,
E_tP_{t+1}^N,
Finance_t,
\bar z_{r,t}
\right),
$$

where expected demand, expected prices, financing conditions, and average or
threshold productivity shift private entry incentives. This object is a mechanism
and measurement guide, not a new baseline state variable.

Entry and investment responses are the Barwick-Kalouptsidi-Zahur block in the
NEV setting. The first baseline uses these responses to discipline $H_{r,t}^N$;
it does not carry a full entry/exit state or a productivity distribution.

The baseline policy channel is the capital-cost wedge
$R_{r,t}^{N,eff}=r_t-\phi s_{r,t}$. An entry-cost wedge
$F_{r,t}^N=F_0^N-\phi_Fs_{r,t}$, full entry/exit dynamics, and the firm
productivity distribution $\mu_{r,t}(z)$ are extensions.

---

## 8. Capacity regimes [Accepted baseline]

- **Early industry-building phase:** learning externalities, weak market
  formation, and supply-chain coordination failures are important; local
  governments and private capital can support industry takeoff, cost decline, and
  firm screening.
- **Creative-destruction phase:** decentralized experimentation, firm entry,
  consumer price gains, cost decline, and winner selection may offset duplicated
  capacity and fiscal costs.
- **Scale-competition / duplicated-capacity phase:** continued expansionary
  investment attraction, subsidies, and capacity support can generate duplicated
  entry, low utilization, price compression, capital-return gaps, and aggregate
  resource misallocation. Consumer or final-good price benefits may still be
  positive, so the welfare sign depends on the net trade-off.

The model should not assume that investment stops automatically when capacity is
slack. Whether decentralized policy exits too slowly must be derived dynamically
or shown numerically after the static wedge comparison is closed.

These phase names are narrative classifications of sourced model objects. They
are not baseline state variables. In quantitative work they should be measured
through entry, capacity, demand absorption, utilization, prices, profit/markup,
and MPK or MRPK gaps.

---

## 9. Learning externalities [Accepted baseline]

The baseline uses a combined frontier-gap spillover law:

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

This law preserves local learning, cross-regional spillovers, diminishing
learning as a region approaches the frontier, no knowledge depreciation, and no
double-counting of own-region output in the spillover term.

The exact learning functional form is a bridge object. It can remain in the
baseline as long as it is disciplined by learning-by-doing or cumulative-output
literature before paper drafting; otherwise it should be simplified or moved to
an appendix.

---

## 10. Open questions

1. What primitive firm problem should later microfound the reduced-form capacity
   response $h_s(s)>0$?
2. How should the richer production-plus-utilization formulation be introduced
   after the static two-region proof is accepted?
3. Which entry measure, if any, is most useful as a mechanism check without
   requiring a full dynamic entry model?
