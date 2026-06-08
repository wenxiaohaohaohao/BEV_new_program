# Module 3: Local Government Objective and Markov-Nash Game

## 1. Purpose

This module records the local government's reduced-form objective, fiscal budget,
and simultaneous Markov-Nash policy game. The constrained-planner benchmark and
full equilibrium conditions are in Module 4.

---

## 2. Local government budget [Accepted baseline]

The policy wedge lowers the private effective cost of NEV installed capacity.
The corresponding fiscal outlay is:

$$SubsidyOutlay_{r,t}=\phi s_{r,t}H_{r,t}^N.$$

A compact local budget constraint is:

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

Here $B_{r,t}$ is local government debt, $G_{r,t}$ is non-NEV local public
spending, $\mathcal C_B(\cdot)$ is a convex borrowing cost or reduced-form debt
friction, and $T_{r,t}^C$ is an optional central transfer. A simpler proof version
may set $G_{r,t}$ and $T_{r,t}^C$ exogenous.

Define local fiscal surplus as:

$$
FiscalSurplus_{r,t}
=
\tau_r Y_{r,t}
+ B_{r,t+1}
- (1+r_t^g)B_{r,t}
+ T_{r,t}^C
- G_{r,t}
- \phi s_{r,t}H_{r,t}^N
- \mathcal C_B(B_{r,t+1}).
$$

---

## 3. Local government objective [Accepted baseline]

Local government $r$ chooses the policy wedge $\{s_{r,t}\}_{t\geq0}$ to maximize:

$$
\mathcal L_r
=
\sum_{t=0}^{\infty}\beta^t
\left[
\theta_y Y_{r,t}^N
+ \theta_e L_{r,t}^N
+ \theta_f FiscalSurplus_{r,t}
- \frac{\kappa}{2}s_{r,t}^2
- \frac{\chi_s}{2}(s_{r,t}-s_{r,t-1})^2
\right].
$$

The baseline sets $\beta_g=\beta$. A shorter political horizon can be discussed
as motivation or robustness, but it is not the baseline source of
over-subsidization.

Parameter interpretation:

| Parameter | Interpretation |
|---|---|
| $\theta_y$ | weight on local NEV output and industrial performance |
| $\theta_e$ | weight on local NEV employment |
| $\theta_f$ | weight on fiscal surplus / fiscal pressure |
| $\kappa$ | administrative, political, or distortionary cost of policy intensity |
| $\chi_s$ | adjustment friction from sunk commitments and policy reversal costs |

The objective deliberately avoids placing local output, investment, employment,
and tax revenue into the payoff as four unrestricted overlapping targets.

---

## 4. What local governments do not fully internalize [Accepted baseline]

Each local government internalizes its own fiscal outlay and local payoffs, but
does not fully internalize:

- CES-demand price compression caused by national NEV expansion.
- The effect of its capacity expansion on other regions' returns.
- Cross-region learning spillovers.
- Aggregate excess-capacity and MPK losses.

This creates the wedge between the decentralized local FOC and the constrained
planner FOC.

---

## 5. Markov-Nash equilibrium [Accepted baseline]

A decentralized equilibrium is a simultaneous Markov-Nash policy game. For each
region $r$,

$$
s_{r,t}^D
=
BR_r(s_{-r,t}^D;\,Z_{r,t},Z_t).
$$

Baseline state vectors:

$$
Z_{r,t}=(A_{r,t}^N,H_{r,t}^N,B_{r,t},s_{r,t-1}),
$$

$$
Z_t=(\{A_{r,t}^N,H_{r,t}^N,B_{r,t}\}_{r=1}^R,Y_t^N,r_t,r_t^g).
$$

The first proof target is a symmetric two-region static game. The proof should
compare the local FOC with the constrained planner's FOC and state sufficient
conditions for:

$$s^D>s^{CP}.$$

---

## 6. Strategic interaction [Accepted baseline]

The baseline should report whether policy choices are strategic complements or
substitutes in the two-region proof:

$$
\frac{\partial BR_r}{\partial s_{-r}}>0
\quad\text{or}\quad
\frac{\partial BR_r}{\partial s_{-r}}<0.
$$

The NEV story can allow both forces:

- capital attraction and fear of losing firms can generate complementarity;
- aggregate price compression can generate substitution.

The first analytic model should state which force dominates under the sufficient
conditions used to prove over-subsidization.

---

## 7. Equilibrium multiplicity and selection [Accepted baseline]

Multiple Nash equilibria are possible. The baseline numerical discipline, once
the proof is complete, is:

```text
grid search -> root refinement -> unilateral deviation check -> selection rule
```

If multiple stable equilibria remain, select the equilibrium closest to the
previous-period policy state $s_{r,t-1}$. This is consistent with policy
adjustment cost.

---

## 8. Policy exit [Accepted baseline]

Policy exit is an important dynamic mechanism, but it is not yet a hard
proposition. In the baseline notes it should be treated as a dynamic result to
be proven or shown numerically after the static two-region comparison is closed.

Potential sources of slow exit:

1. adjustment cost $\chi_s$;
2. sunk industrial-park and fiscal commitments;
3. local employment and fiscal-surplus objectives;
4. strategic concern that reducing $s_r$ first sends firms to other regions.

---

## 9. Open questions

1. What exact sufficient conditions on $\theta_y$, $\theta_e$, $\theta_f$,
   $\phi$, $\kappa$, and CES elasticity imply $s^D>s^{CP}$?
2. In the static proof, should local debt $B_r$ be fixed or chosen jointly with
   policy?
3. Should central transfers $T_{r,t}^C$ be set to zero in the baseline proof?
