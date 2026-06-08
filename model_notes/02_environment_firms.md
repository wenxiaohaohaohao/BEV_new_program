# Module 2: Environment, Household, Final Good, Firms, LBD

## 1. Purpose

This module defines the baseline economic environment after the third-round
critique: household saving, fixed regional labor markets, CES-derived product
demand, NEV installed capacity as sector-specific capital, and learning-by-doing.

---

## 2. Environment [Accepted baseline]

- **Time:** discrete, $t=0,1,2,\ldots$.
- **Regions:** $r=1,\ldots,R$; the first analytic model uses $R=2$ symmetric
  regions.
- **Sectors:** $j\in\{N,O\}$, where $N$ is the NEV sector and $O$ is the outside
  sector.
- **Agents:** representative household, firms, local governments, and a
  centralized constrained planner.

The baseline is intentionally minimal. SOE heterogeneity, exports, production
networks, soft budget constraints, migration, and differentiated product demand
are extensions.

---

## 3. Household and regional labor [Accepted baseline]

The representative household owns firms and financial claims, consumes the final
good, and supplies savings. The household problem delivers the usual Euler
condition for intertemporal saving.

The baseline does not use an aggregate mobile labor market. Each region has a
fixed labor endowment:

$$L_{r,t}^N + L_{r,t}^O = \bar L_r.$$

The regional wage $w_{r,t}$ clears region $r$'s labor market. This assumption
keeps local employment meaningful in the government objective and avoids mixing
an aggregate wage with regional firm wages.

---

## 4. Final good and CES-derived demand [Accepted baseline]

Final output is produced from NEV and outside-sector goods:

$$
Y_t =
\left[
\eta_N\left(Y_t^N\right)^{\frac{\varepsilon-1}{\varepsilon}}
+ \eta_O\left(Y_t^O\right)^{\frac{\varepsilon-1}{\varepsilon}}
\right]^{\frac{\varepsilon}{\varepsilon-1}},
\qquad \eta_N+\eta_O=1.
$$

With the final-good price normalized to one, the NEV relative price is derived
from the final-good producer's FOC:

$$
P_t^N =
\eta_N\left(\frac{Y_t}{Y_t^N}\right)^{1/\varepsilon}.
$$

Thus NEV price falls when NEV quantity expands relative to final demand:

$$\frac{\partial P_t^N}{\partial Y_t^N}<0.$$

The baseline therefore does not impose an additional standalone inverse demand
curve.

---

## 5. Resource constraint [Accepted baseline]

NEV investment is investment in installed capacity $H^N$. It should not be
counted again as generic NEV capital investment. A compact aggregate resource
constraint is:

$$
Y_t =
C_t
+ I_t^O
+ \sum_r I_{r,t}^H
+ \sum_r \phi s_{r,t}H_{r,t}^N
+ \sum_r \frac{\kappa}{2}s_{r,t}^2
+ \sum_r \frac{\chi_s}{2}(s_{r,t}-s_{r,t-1})^2
+ IdleCost_t.
$$

Interpretation:

- $I_t^O$ is investment in outside-sector capital.
- $I_{r,t}^H$ is the only NEV capital/capacity investment flow.
- $\phi s_{r,t}H_{r,t}^N$ is the fiscal outlay associated with the capital-cost
  wedge.
- $\kappa s_{r,t}^2/2$ is administrative, political, or distortionary cost; it
  is not the subsidy outlay.

---

## 6. Firms [Accepted baseline]

### 6.1 Outside sector

The outside sector uses ordinary capital and local labor:

$$
Y_{r,t}^O =
A_{r,t}^O (K_{r,t}^O)^{\alpha_O}(L_{r,t}^O)^{1-\alpha_O}.
$$

The outside-sector rental cost is:

$$R_{r,t}^O=r_t.$$

### 6.2 NEV installed capacity as sector-specific capital

In the NEV sector, installed capacity $H_{r,t}^N$ is the sector-specific capital
stock. There is no separate baseline object $k^N$ with its own accumulation law.

Potential NEV output is:

$$
\tilde Y_{r,t}^N =
A_{r,t}^N (H_{r,t}^N)^{\alpha_N}(L_{r,t}^N)^{1-\alpha_N}.
$$

Realized NEV output satisfies the utilization/capacity relation:

$$
Y_{r,t}^N = u_{r,t}^N H_{r,t}^N,\qquad 0\leq u_{r,t}^N\leq 1.
$$

The capacity law of motion is:

$$
H_{r,t+1}^N=(1-\delta_H)H_{r,t}^N+I_{r,t}^H.
$$

The NEV effective rental cost is lowered by local policy:

$$
R_{r,t}^N=r_t-\phi s_{r,t}.
$$

The associated fiscal outlay is:

$$
SubsidyOutlay_{r,t}=\phi s_{r,t}H_{r,t}^N.
$$

### 6.3 Entry and exit

Firm entry and exit remain part of the broader model, but the first closed
two-region proof can use a representative regional NEV producer. Heterogeneous
firm entry, productivity draws, and exit thresholds should be restored only after
the static wedge comparison is closed.

An entry-cost channel,

$$F_{r,t}^N=F_0^N-\phi_F s_{r,t},$$

is an appendix candidate rather than a required baseline channel.

---

## 7. Capacity regimes [Accepted baseline]

Two regimes organize the intuition:

- **Capacity-building / early phase:** learning and market-formation benefits are
  high; the constrained planner may choose $s^{CP}>0$.
- **Excess-capacity phase:** aggregate NEV capacity is high relative to demand;
  utilization falls and the marginal social return to additional capacity
  declines.

The model should not assume that investment stops automatically when capacity is
slack. The point of the paper is that decentralized local incentives can keep
the expansionary wedge high even after social marginal benefits have declined.

---

## 8. Learning externalities [Accepted baseline]

Baseline learning has no mechanical knowledge depreciation. Productivity evolves
as:

$$
A_{r,t+1}^N =
A_{r,t}^N
+ \left(\bar A^N-A_{r,t}^N\right)
\left[
\psi_L (Y_{r,t}^N)^\nu
+ \psi_G \left(\sum_{r'\neq r}Y_{r',t}^N\right)^\nu
\right],
$$

where $\bar A^N$ is the NEV productivity frontier. The frontier-gap term makes
learning diminish as the region approaches the frontier.

Interpretation:

- $\psi_L$ captures own-region learning-by-doing.
- $\psi_G$ captures spillovers from other regions and excludes own-region output.
- $A_{r,t}^N$ can include technological productivity and supply-chain
  coordination efficiency.

The baseline does not introduce a separate supply-chain state variable $S_t^N$.
Supply-chain coordination is absorbed into $A_{r,t}^N$ or the spillover parameter.

---

## 9. Open questions

1. Should realized output be written as the minimum of potential production,
   installed capacity, and CES demand in the analytic proof, or should the proof
   use a reduced-form utilization equation?
2. How should $IdleCost_t$ be measured in the data: physical idle capacity,
   forgone return, or accounting losses?
3. What is the minimal static firm problem needed to prove that
   $\partial H_r^N/\partial s_r>0$?
