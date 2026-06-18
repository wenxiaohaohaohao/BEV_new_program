# Module 4: Planner Problem and Full Equilibrium Definition

## 1. Purpose

This module defines the benchmark objects and equilibrium conditions. It follows
the post-revision skeleton: constrained planner is the main benchmark, and the
baseline equilibrium uses regional labor accounting, total-tax-base local
budgets, demand absorption, durable-capacity accumulation, outside-sector
opportunity cost, and aggregate welfare accounting. The benchmark comparison is
designed to evaluate dynamic capacity misallocation under decentralized local
industrial policy.

---

## 2. Benchmark objects [Accepted baseline]

### 2.1 Decentralized local equilibrium

Local governments choose policy wedges simultaneously in a Markov-Nash game:

$$s_{r,t}^D=BR_r(s_{-r,t}^D;Z_{r,t},Z_t).$$

Firms respond to policy and market states, regional labor is accounted for,
local budgets hold, and durable capacity evolves according to Module 2.

### 2.2 Constrained planner / centralized policy equilibrium

The constrained planner chooses policy instruments:

$$\{s_{r,t}^{CP}\}_{r=1}^R$$

to maximize aggregate welfare while firms remain decentralized optimizers,
subject to the information and implementation constraints of a centralized
policy authority:

$$
\max_{\{s_{r,t}^{CP}\}}
\sum_{t=0}^{\infty}\beta^tU(C_t,L_t).
$$

The constrained planner internalizes consumer surplus, producer surplus, demand
absorption, durable-capacity overaccumulation, fiscal costs, debt costs,
idle-capacity costs, and aggregate MPK/MRPK losses. It may not fully replicate
decentralized local implementation advantages. These advantages are part of the
empirical trade-off, but they are not the title-level mechanism.

This distinction lets the model compare `decentralized local implementation`
with `implementable centralized coordination` without assuming that the latter
can reproduce every local execution advantage.

### 2.3 First-best upper bound

A first-best planner that directly chooses allocations can be reported only as
an appendix upper bound:

$$W^{FB}\geq \max\{W^{CP},W^D\}.$$

It is not the main policy benchmark. If a separate full-information constrained
planner is introduced later, it will satisfy $W^{CP,FI}\geq W^D$ by construction.
The main $CP$ benchmark here is an implementable centralized policy benchmark,
so $W^D-W^{CP}$ is not signed by definition.

---

## 3. Decentralized equilibrium conditions [Accepted baseline]

A decentralized equilibrium is a path for:

$$
\{C_t,K_t^O,H_{r,t}^N,B_{r,t},s_{r,t},
Y_{r,t}^N,Y_{r,t}^O,w_{r,t},P_t^N\}
$$

satisfying the following conditions.

**Condition 1: Demand absorption and aggregate accounting**

The clean baseline does not require a representative-household Euler equation.
NEV realized sales satisfy $Q_t^N=D_t^N(P_t^N)$ and aggregate consumption is
determined by resource feasibility.

**Condition 2: Regional labor clearing**

$$L_{r,t}^N+L_{r,t}^O=\bar L_r.$$

The regional wage $w_{r,t}$ clears region $r$'s labor market.

**Condition 3: Capital and capacity**

Aggregate capital clearing:

$$K_t=K_t^O+\sum_rH_{r,t}^N.$$

Outside-sector capital:

$$K_{t+1}^O=(1-\delta_K)K_t^O+I_t^{K,O}.$$

NEV installed durable capacity:

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

**Condition 8: Optional learning law**

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

If the optional learning block is included, the frontier evolves as:

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
X_t=\{H_{r,t}^N,B_{r,t},s_{r,t-1}\}_{r=1}^R.
$$

The full firm productivity distribution $\mu_{r,t}(z)$ is not in the baseline
state vector. Optional learning adds $A_{r,t}^N$ only with separate citation
discipline.

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

- consumer surplus from lower NEV prices and producer price/revenue compression
  under demand absorption;
- other-region effects of capacity expansion;
- optional learning spillovers if included;
- aggregate MPK/MRPK loss from durable NEV capacity overaccumulation;
- full fiscal, debt, and resource costs.

This comparison is the NEV mapping of the Chen-Liu-Song intervention-index
logic. Define local and central intervention indexes as marginal welfare gains
per fiscal dollar:

$$
\zeta_{rt}^{L,NEV}(Z_t)
=
\frac{MB_{rt}^{L,NEV}}{MC_{rt}^{F,NEV}},
\qquad
\zeta_{rt}^{C,NEV}(Z_t)
=
\frac{MB_{rt}^{C,NEV}}{MC_{rt}^{F,NEV}}.
$$

Here $Z_t$ is shorthand for already defined endogenous model objects such as
capacity, demand absorption, price, utilization, profit, and MPK gaps. It is not
a new baseline state variable.

The local-central gap is:

$$
Gap_{rt}^{NEV}
=
\zeta_{rt}^{L,NEV}(Z_t)
-
\zeta_{rt}^{C,NEV}(Z_t).
$$

The static wedge decomposition below is not a new primitive. It decomposes
$Gap_{rt}^{NEV}$ into local political-output, price/revenue,
capital-opportunity, fiscal, optional learning, and decentralized-implementation
terms.

The decentralized equilibrium may also have implementation advantages that a
centralized policy benchmark cannot fully reproduce: local information,
investment-attraction capacity, multi-region experimentation, and private-capital
mobilization. The first analytic milestone is therefore not to prove
$W^D<W^{CP}$ globally. It is to state sufficient conditions under which:

$$
\zeta_{rt}^{L,NEV}(Z_t)>0
\quad \text{but} \quad
\zeta_{rt}^{C,NEV}(Z_t)\leq0
$$

implies:

$$s^D>s^{CP}.$$

---

## 6. Closed symmetric two-region static model [Accepted baseline]

This section gives the first closed proof environment. It is a static,
two-region specialization of the baseline dynamic model. It is designed to
prove the decentralized-policy wedge before adding debt choice, policy inertia,
or numerical dynamics.

### 6.1 Static environment and timing

There are two ex ante symmetric regions:

$$r\in\{1,2\}.$$

The static state fixes:

$$
\left(
A^N,\bar A,A^O,\bar L,\bar B,\bar G,\bar K
\right),
$$

where $\bar B$ is inherited local debt, $\bar G$ is local public spending, and
$\bar K$ is the aggregate capital endowment available to the outside sector and
NEV installed capacity. The local government chooses one expansionary NEV policy
wedge:

$$s_r\geq0.$$

Firms then choose NEV installed capacity according to the reduced-form private
response:

$$
H_r^N=h(s_r),\qquad h_s(s_r)>0.
$$

The first proof uses the direct utilization representation:

$$
Y_r^N=u_r^NH_r^N.
$$

Let aggregate NEV installed capacity be:

$$
H^N=H_1^N+H_2^N.
$$

Static aggregate capital feasibility is:

$$
\bar K=K^O+H^N,\qquad K^O=\bar K-H^N>0.
$$

Outside-sector output is:

$$
Y^O=\Omega(K^O;A^O,\bar L),
\qquad
\Omega_K(K^O)>0,\qquad
\Omega_{KK}(K^O)<0.
$$

The outside-sector marginal product of capital in final-good units is:

$$
MPK^O=P^O\Omega_K(K^O),
$$

where $P^O$ is the CES relative price of outside-sector output defined below.
A higher aggregate NEV installed capacity lowers $K^O$ and raises the physical
opportunity cost $\Omega_K(K^O)$.

Aggregate realized NEV sales are:

$$
Q^N=Q(H^N),
$$

with:

$$
Q_H(H^N)>0,\qquad Q_H(H^N)<\frac{Q(H^N)}{H^N}
$$

in the duplicated-capacity range where installed capacity expands faster than
effective demand. Realized NEV output is allocated in proportion to installed
capacity:

$$
Y_r^N=\frac{H_r^N}{H^N}Q(H^N),
$$

so utilization is common across regions:

$$
u_r^N=\frac{Y_r^N}{H_r^N}=\frac{Q(H^N)}{H^N}.
$$

The inequality $Q_H(H^N)<Q(H^N)/H^N$ means that aggregate sales rise less than
one-for-one with installed capacity. This is the static low-utilization
condition for the endogenous capacity-pressure state; it implies that
utilization falls when capacity expands.

The function $Q(H^N)$ is a derived market-absorption shorthand for the static
proof. It summarizes the equilibrium realized sales generated by a
capacity-demand-price block:

$$
Q_t^N=D_t^N(P_t^N;\mathcal X_t^D),
$$

where $\mathcal X_t^D$ denotes demand shifters and market states. It is not a
standalone inverse demand curve, not a new baseline primitive, and does not
replace CES-derived product pricing. CES demand prices the realized quantity
$Q^N$.

The richer production version remains available as an appendix or later
extension:

$$
\tilde Y_r^N=A^NF(H_r^N,L_r^N),
$$

with realized output:

$$
Y_r^N=\min\left\{\tilde Y_r^N,\frac{H_r^N}{H^N}Q(H^N)\right\}.
$$

The first proof does not need this richer production block. It only needs the
positive firm capacity response and the utilization equation above.

### 6.2 CES price compression and consumer benefit

Final output is:

$$
Y=
\left[
\eta_N(Q^N)^{\frac{\epsilon-1}{\epsilon}}
+(1-\eta_N)(Y^O)^{\frac{\epsilon-1}{\epsilon}}
\right]^{\frac{\epsilon}{\epsilon-1}}.
$$

The CES-derived NEV relative price is:

$$
P^N(Q^N)
=
\eta_N
\left(
\frac{Y}{Q^N}
\right)^{1/\epsilon}.
$$

The outside-sector relative price is:

$$
P^O(Y^O,Q^N)
=
(1-\eta_N)
\left(
\frac{Y}{Y^O}
\right)^{1/\epsilon}.
$$

For the relevant demand range:

$$P_Q^N(Q^N)<0.$$

Therefore an expansion in aggregate realized NEV quantity lowers the NEV
relative price, holding outside-sector output fixed. With endogenous outside
output, the total price effect of a capacity expansion is also negative under:

$$
\frac{dP^N}{dH^N}
=
\frac{\partial P^N}{\partial Q^N}Q_H(H^N)
-\frac{\partial P^N}{\partial Y^O}\Omega_K(K^O)
<0,
$$

because $\partial P^N/\partial Q^N<0$,
$\partial P^N/\partial Y^O>0$, and $dY^O/dH^N=-\Omega_K(K^O)<0$.
The static proof does not impose an additional inverse demand curve.

This price decline is not treated as a welfare loss by itself. In the CES final
output system, cheaper NEV output can raise consumer or final-good welfare. The
planner welfare objective below credits this benefit through $U(C)$. Any
price-channel wedge used in the FOC comparison is therefore a net
consumer-benefit-adjusted wedge, not a claim that low prices are intrinsically
bad.

### 6.3 Static resource feasibility

Let the static real debt cost be:

$$
\mathcal C(\bar B)=\frac{\kappa_B}{2}\bar B^2.
$$

With fixed inherited debt and no dynamic policy adjustment cost in the static
proof, aggregate consumption is:

$$
C
=
Y(Q(H^N),\Omega(\bar K-H^N))
-2\bar G
-2\mathcal C(\bar B).
$$

The gross subsidy $\phi s_rH_r^N$ is not subtracted again from aggregate
resources. It is a fiscal transfer and local budget item. Any real fiscal
financing or debt-shadow cost beyond $\mathcal C(\bar B)$ enters the planner
FOC through the fiscal wedge $\Delta^F$ below rather than as a second resource
cost.

For the static trade-off, welfare under implementation mode
$m\in\{D,CP\}$ can be represented as:

$$
W^m(s_1,s_2)
=
U(C(s_1,s_2))
+\mathcal B^A(Y_1^N,Y_2^N)
+\mathcal B_m^I(s_1,s_2),
$$

where $\mathcal B^A$ is an optional continuation value of NEV learning generated
by current realized NEV output. This term is not required for the clean static
capacity-misallocation proof. The term $\mathcal B_m^I$ captures
implementation-specific benefits. It can be larger under decentralized local
implementation if local information, investment-attraction capacity, or
private-capital mobilization are difficult for the centralized benchmark to
reproduce. If these advantages are assumed away, set
$\mathcal B_D^I=\mathcal B_{CP}^I=0$ and the model collapses to the
full-information constrained-planner comparison.

### 6.4 Local budget with fixed inherited debt

The first static proof fixes inherited local debt at $\bar B$ and does not let
the local government choose new debt jointly with $s_r$. Define the fixed debt
burden:

$$
\bar D
=
r^g\bar B+\frac{\kappa_B}{2}\bar B^2.
$$

Fiscal surplus in region $r$ is:

$$
FS_r
=
\tau(Y_r^N+Y_r^O)
-\phi s_rH_r^N
-\bar G
-\bar D.
$$

At a symmetric allocation, $Y_r^O=Y^O/2$. In the unilateral local FOC below,
the first static proof keeps the local outside-sector tax base predetermined.
The aggregate outside-capital opportunity cost is instead internalized by the
constrained planner through $\Delta^K$. This captures the idea that local
governments do not fully price the national capital-market opportunity cost of
regional NEV expansion.

This is a proof simplification, not a claim that debt is irrelevant. Debt choice
and the debt FOC belong to the later dynamic extension.

Regional NEV employment is:

$$
L_r^N=\ell(Y_r^N),\qquad \ell_Y(Y_r^N)\geq0,
$$

with local labor clearing:

$$L_r^N+L_r^O=\bar L.$$

### 6.5 Local-government problem and FOC

The static local-government payoff is:

$$
V_r^L
=
\theta_yY_r^N
+\theta_eL_r^N
+\theta_fFS_r.
$$

The static proof omits the policy adjustment cost because slow exit is a dynamic
result. Let:

$$
\Lambda_r^L
=
\theta_y+\theta_e\ell_Y(Y_r^N)+\theta_f\tau.
$$

Given $s_{-r}$, local government $r$ chooses $s_r$ to solve:

$$
\max_{s_r\geq0}V_r^L(s_r,s_{-r}).
$$

The marginal effect of $s_r$ on local NEV output is:

$$
\frac{\partial Y_r^N}{\partial s_r}
=
h_s(s_r)
\left[
\frac{H_{-r}^N}{(H^N)^2}Q(H^N)
+\frac{H_r^N}{H^N}Q_H(H^N)
\right].
$$

For an interior local optimum, the local FOC is:

$$
M_r^L(s_r,s_{-r})
\equiv
\Lambda_r^L
\frac{\partial Y_r^N}{\partial s_r}
-\theta_f\phi
\left[
H_r^N+s_rh_s(s_r)
\right]
=0.
$$

At a symmetric equilibrium with $s_1=s_2=s$ and $H_1^N=H_2^N=h(s)$:

$$
M^L(s)
=
\Lambda^Lh_s(s)
\left[
\frac{Q(2h(s))}{4h(s)}
+\frac{1}{2}Q_H(2h(s))
\right]
-\theta_f\phi
\left[
h(s)+sh_s(s)
\right]
=0.
$$

The decentralized symmetric policy is denoted $s^D$.

### 6.6 Constrained planner FOC

The constrained planner chooses policy instruments $(s_1,s_2)$ while firms still
respond through $H_r^N=h(s_r)$. Relative to a local government, the constrained
planner internalizes:

1. welfare rather than local political weights on output and employment;
2. both the consumer or final-good benefit from lower NEV prices and the national
   producer price/revenue compression created by duplicated NEV output;
3. the outside-sector capital opportunity cost of duplicated $H^N$;
4. fiscal-financing and debt-shadow costs that are not fully priced by a single
   local government;
5. optional cross-region learning spillovers if included;
6. decentralized implementation benefits that a centralized policy benchmark may
   not fully reproduce.

Let the net wedge between the local marginal condition and the constrained
planner's marginal condition be:

$$
\Delta_r(s_r,s_{-r})
=
\Delta_r^G
+\Delta_r^P
+\Delta_r^K
+\Delta_r^F
-\Delta_r^A
-\Delta_r^D,
$$

This $\Delta_r$ is the FOC-level counterpart of the Chen-Liu-Song local-central
gap $Gap_{rt}^{NEV}$. A positive $\Delta_r$ means that, in the relevant local
neighborhood of the static allocation, the local marginal intervention index
exceeds the central marginal intervention index:

$$
\Delta_r>0
\quad\Longleftrightarrow\quad
\zeta_r^{L,NEV}(Z)> \zeta_r^{C,NEV}(Z).
$$

where:

- $\Delta_r^G\geq0$ is the marginal gap created by local output and employment
  weights that exceed their constrained-welfare marginal value when the
  endogenous state has high capacity pressure and a low aggregate return to
  further expansion;
- $\Delta_r^P$ is the marginal consumer-benefit-adjusted price/revenue wedge.
  Write:

$$
\Delta_r^P=\Delta_r^{Rev}-\Delta_r^{C},
$$

  where $\Delta_r^{Rev}\geq0$ is the marginal producer revenue or return
  compression from expanding aggregate NEV output, and $\Delta_r^C\geq0$ is the
  consumer or final-good benefit from the lower relative NEV price already
  credited in $U(C)$. A sufficient representation for the revenue-compression
  part is
  $-U_C(C)P_Q^NQ^NQ_H(H^N)h_s(s_r)$, which is nonnegative because
  $P_Q^N<0$. Thus $\Delta_r^P\geq0$ is a consumer-benefit-adjusted
  duplicated-capacity condition, not a global assumption. If the
  consumer-benefit term dominates, $\Delta_r^P<0$ and the
  misallocation-dominant result requires stronger fiscal, capital, or political
  wedges;
- $\Delta_r^K\geq0$ is the marginal outside-capital opportunity cost. In
  final-good units, a sufficient representation is
  $U_C(C)P^O\Omega_K(K^O)h_s(s_r)$;
- $\Delta_r^F\geq0$ is the marginal fiscal-financing or debt-shadow cost not
  fully internalized in $V_r^L$. A sufficient representation is
  $(\mu_F-\theta_f)\phi[H_r^N+s_rh_s(s_r)]$ when the social shadow cost of
  public funds $\mu_F$ exceeds the local fiscal-surplus weight $\theta_f$;
- $\Delta_r^A\geq0$ is the optional marginal learning benefit not fully
  internalized by the local government, if the learning block is included;
- $\Delta_r^D\geq0$ is the marginal decentralized implementation benefit that
  the centralized benchmark may not fully reproduce: local information,
  investment-attraction capacity, multi-region experimentation, and
  private-capital mobilization. It is the FOC counterpart of the implementation
  benefit gap between $\mathcal B_D^I$ and $\mathcal B_{CP}^I$.

The constrained planner's marginal condition can be written as:

$$
M_r^{CP}(s_r,s_{-r})
=
M_r^L(s_r,s_{-r})
-\Delta_r(s_r,s_{-r})
=0.
$$

This representation keeps the static proof aligned with the full model:
optional learning, lower consumer prices, and implementation advantages can
make decentralized policy socially valuable, but durable-capacity,
consumer-benefit-adjusted price/revenue, fiscal, and MPK costs can dominate in
the endogenous high-capacity-pressure state.

At a symmetric constrained-planner allocation, $s_1=s_2=s^{CP}$ and:

$$
M^L(s^{CP})=\Delta(s^{CP}).
$$

### 6.7 Sufficient conditions for local-central return divergence

Assume the relevant policy range has:

1. **Positive firm response:**
   $h_s(s)>0$.
2. **Falling utilization in the duplicated-capacity range:**
   $Q_H(2h(s))<Q(2h(s))/(2h(s))$.
3. **CES price compression with consumer benefit credited:**
   $P_Q^N(Q^N)<0$, while the consumer or final-good benefit from the lower
   relative NEV price is included in $U(C)$.
4. **Local single crossing:**
   $M_s^L(s)<0$, so the local best response has a unique symmetric interior
   crossing.
5. **Sufficiently strong local expansion incentive:**
   the local output, employment, and fiscal-surplus terms generate an interior
   local optimum rather than the corner $s^D=0$.
6. **Positive net local-planner wedge / return divergence:**
   $\Delta(s)>0$, meaning that political-output, consumer-benefit-adjusted
   price/revenue, outside-capital, and fiscal wedges dominate optional learning
   and
   decentralized implementation benefits:

$$
\Delta^G(s)+\Delta^P(s)+\Delta^K(s)+\Delta^F(s)>
\Delta^A(s)+\Delta^D(s).
$$

Equivalently, the endogenous state satisfies:

$$
\zeta^{L,NEV}(Z)>0
\quad \text{but} \quad
\zeta^{C,NEV}(Z)\leq0.
$$

7. **Planner single crossing:**
   $M_s^{CP}(s)<0$, so the constrained planner has a unique symmetric interior
   crossing.

Then:

$$s^D>s^{CP}.$$

**Proof.** The constrained-planner FOC implies:

$$M^{CP}(s^{CP})=M^L(s^{CP})-\Delta(s^{CP})=0.$$

Since $\Delta(s^{CP})>0$:

$$M^L(s^{CP})>0.$$

The local marginal payoff is strictly decreasing in $s$ by local single
crossing. Therefore the unique local policy level that solves $M^L(s)=0$ must
lie to the right of $s^{CP}$:

$$s^D>s^{CP}.$$

This proves a decentralized expansionary-policy wedge in the first closed static
model when local returns remain positive while central returns have fallen or
turned negative.

This is a sufficient condition for the duplicated-capacity and
misallocation-dominant outcome. It is not imposed as a global conclusion. If
$\Delta^G+\Delta^P+\Delta^K+\Delta^F\approx\Delta^A+\Delta^D$, decentralized
competition can generate duplicated capacity with little net welfare cost. If
$\Delta^G+\Delta^P+\Delta^K+\Delta^F<\Delta^A+\Delta^D$, decentralized
competition can dominate the centralized benchmark through consumer gains,
producer surplus, optional learning, and implementation advantages.

### 6.8 Conditional implications for capacity, utilization, MPK, and welfare

Because $h_s(s)>0$:

$$
s^D>s^{CP}
\quad\Rightarrow\quad
H^{N,D}=2h(s^D)>2h(s^{CP})=H^{N,CP}.
$$

Because $u^N(H^N)=Q(H^N)/H^N$ and
$Q_H(H^N)<Q(H^N)/H^N$:

$$
\frac{du^N}{dH^N}
=
\frac{Q_H(H^N)H^N-Q(H^N)}{(H^N)^2}
<0.
$$

Thus:

$$
H^{N,D}>H^{N,CP}
\quad\Rightarrow\quad
u^{N,D}<u^{N,CP}.
$$

Define the NEV marginal return to installed capacity in final-good units as:

$$
MPK^N(H^N)=P^N(Q(H^N))Q_H(H^N).
$$

In the duplicated-capacity range, assume:

$$
\frac{dMPK^N(H^N)}{dH^N}<0.
$$

Outside-sector capital is:

$$
K^O(H^N)=\bar K-H^N.
$$

Since $\Omega_{KK}(K^O)<0$:

$$
\frac{d\Omega_K(K^O(H^N))}{dH^N}
=
-\Omega_{KK}(K^O)>0.
$$

Thus a decentralized increase in $H^N$ raises the physical outside-sector
opportunity cost. If the movement in $P^O$ does not offset this force, then:

$$
\frac{dMPK^O(H^N)}{dH^N}>0.
$$

If the constrained planner chooses capacity near the aggregate opportunity-cost
condition, $MPK^N(H^{N,CP})\leq MPK^O(H^{N,CP})$, then:

$$
MPK^{N,D}<MPK^{O,D},
$$

because $H^{N,D}>H^{N,CP}$ lowers $MPK^N$ and raises $MPK^O$ in the
duplicated-capacity region.

Finally, welfare is classified by the net trade-off. In the
misallocation-dominant outcome, fiscal, fixed-cost, low-utilization,
price/revenue, and capital-misallocation costs dominate consumer surplus,
producer surplus, optional learning, and implementation benefits. Under that
additional net-cost
condition:

$$
W^{CP}>W^D.
$$

The static model therefore delivers the aggregate-misallocation pattern only
when the local-central return divergence and net-cost-dominance conditions hold:

$$
s^D>s^{CP},\qquad
H^{N,D}>H^{N,CP},\qquad
u^{N,D}<u^{N,CP},\qquad
MPK^{N,D}<MPK^{O,D},\qquad
W^D<W^{CP}.
$$

Outside that region, the static model does not sign welfare. The admissible
outcomes are:

$$
W^D<W^{CP},\qquad W^D\approx W^{CP},\qquad W^D>W^{CP}.
$$

The last two cases are not failures. They mean that local information,
investment-attraction capacity, consumer benefits, producer surplus, optional
learning, and private-capital mobilization offset or exceed resource
misallocation costs.

---

## 7. Lemmas and propositions [Accepted baseline]

1. **Lemma 1:** A higher local policy wedge raises NEV installed capacity through
   the firm's investment condition.
2. **Lemma 2:** CES-derived demand implies NEV price compression when aggregate
   NEV quantity expands relative to effective demand; lower prices have an
   ambiguous welfare sign before fiscal and resource costs are included.
3. **Proposition 1:** Coordinated state-contingent policy raises welfare when
   marginal aggregate returns to capacity support exceed fiscal and
   misallocation costs.
4. **Proposition 2:** When
   $\zeta^{L,NEV}(Z)>0$ but $\zeta^{C,NEV}(Z)\leq0$, stated sufficient
   conditions imply decentralized Markov-Nash policy exceeds implementable
   centralized coordination: $s^D>s^{CP}$.
5. **Proposition 3:** Given Proposition 2 and the net-cost-dominance condition,
   decentralized equilibrium features higher NEV installed capacity, lower
   utilization, a lower NEV MPK, and lower welfare relative to $CP$ after
   consumer surplus, producer surplus, optional learning, and implementation
   benefits are credited.
   Without that condition, the welfare sign is a quantitative result.

Slow policy exit remains a dynamic result unless separately proven.

---

## 8. Open questions

1. How tight should the curvature and single-crossing assumptions be in the
   eventual paper version?
2. Should the static proof be summarized in `00_MASTER_model_memo.md` after the
   user reviews the derivation?
3. Which later dynamic extension should restore debt choice first: local debt
   issuance, policy inertia, or both jointly?
