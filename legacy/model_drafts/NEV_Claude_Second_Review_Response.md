# 二次 Claude Code Review：采纳意见、模型修正与下一步执行方案

## 0. 总体判断

这次 Claude Code 的 review 是有价值的，而且比上一轮更具体。它不是推翻上一轮 acceptance notes，而是指出：

1. 上一轮五个 boxed priority 是对的；
2. 但若直接按上一轮方案修改，会引入若干新的不一致；
3. 在更新模块 notes 之前，应先写一个 **post-revision unified model skeleton**；
4. 这个 skeleton 应统一处理资本/产能、资源约束、需求系统、学习外部性、政府预算、地方政府目标、planner、劳动市场和均衡条件。

因此，这次 review 的核心建议应当 **大部分接受**。尤其是以下五个问题必须立即修正：

\[
\boxed{\text{learning law 必须统一}}
\]

\[
\boxed{\text{government budget 的 tax base 必须明确}}
\]

\[
\boxed{\text{基准模型应删除 } \frac{\kappa}{2}s^2}
\]

\[
\boxed{\text{战略互补与政策退出惯性必须区分}}
\]

\[
\boxed{\text{必须先写 post-revision model skeleton}}
\]

---

## 1. Claude review 中正确的部分

Claude review 首先确认，上一轮 acceptance notes 的总体方向是对的：

1. capital/capacity merger；
2. demand system unification；
3. government budget constraint；
4. constrained planner benchmark；
5. two-region analytical proof of \(s^D>s^{CP}\)。

这五项仍然是模型闭合的最低要求。不能进入正式 numerical code，直到这五项完成。

此外，Claude review 也认可：

- frontier-gap learning formulation 比简单的 \(f(A)\) 形式更好；
- fixed regional labor endowment 是合适的 baseline；
- \(W^D\) vs. \(W^{CP}\) vs. \(W^{FB}\) 的区分是正确的；
- 将地方政府目标简化为 output / employment / fiscal surplus 是合理的。

这些判断都应该保留。

---

## 2. Learning law：必须接受 Claude 的修正

### 2.1 问题

上一轮 notes 中同时提出了两套 learning law：

第一套保留 local 和 cross-regional spillover：

\[
A_{r,t+1}^N
=
A_{r,t}^N
+
\psi_L f(A_{r,t}^N)(Q_{r,t}^N)^\nu
+
\psi_G g(A_{r,t}^N)
\left(
\sum_{r'\neq r}Q_{r',t}^N
\right)^\nu.
\]

第二套是 single frontier-gap formulation：

\[
A_{r,t+1}^N
=
A_{r,t}^N
+
\psi(\bar A-A_{r,t}^N)(Q_{r,t}^N)^\nu.
\]

Claude 指出，这两套不是等价的。如果只采用第二套，cross-regional spillover 消失，planner 和 local government 在 learning externality 上的区别会被削弱。

### 2.2 是否接受？

**必须接受。**

模型需要同时保留：

1. local learning；
2. cross-regional spillover；
3. diminishing learning as the industry approaches frontier；
4. no double-counting；
5. no knowledge depreciation。

### 2.3 基准修正

采用 combined frontier-gap spillover law：

\[
A_{r,t+1}^N
=
A_{r,t}^N
+
\psi_L
\frac{\bar A_t-A_{r,t}^N}{\bar A_t}
(Q_{r,t}^N)^\nu
+
\psi_G
\frac{\bar A_t-A_{r,t}^N}{\bar A_t}
\left(
\sum_{r'\neq r}Q_{r',t}^N
\right)^\nu.
\]

其中：

\[
Gap_{r,t}
=
\frac{\bar A_t-A_{r,t}^N}{\bar A_t}
\]

是 frontier gap ratio。

### 2.4 \(\bar A_t\) 如何定义？

基准模型建议：

\[
\bar A_{t+1}=(1+g_A)\bar A_t.
\]

也就是说，\(\bar A_t\) 是 exogenous global frontier。这样最简单、最稳。

不要在第一版中设：

\[
\bar A_t=\max_r A_{r,t}^N.
\]

因为这会引入地区间技术领导竞争，增加一个不必要的复杂机制。

### 2.5 Decision log

```markdown
## Decision: Learning law

Accepted: Use a combined frontier-gap learning law with both local learning and cross-regional spillovers.

Baseline law:
\[
A_{r,t+1}^N
=
A_{r,t}^N
+
\psi_L
\frac{\bar A_t-A_{r,t}^N}{\bar A_t}
(Q_{r,t}^N)^\nu
+
\psi_G
\frac{\bar A_t-A_{r,t}^N}{\bar A_t}
\left(
\sum_{r'\neq r}Q_{r',t}^N
\right)^\nu.
\]

Rejected:
1. knowledge depreciation;
2. local learning plus national learning with own output double-counted;
3. single frontier-gap learning without cross-regional spillovers.

Reason:
The baseline must preserve local learning, national spillovers, diminishing learning, and planner-local externality differences.
```

---

## 3. Government budget：tax base 必须明确

### 3.1 问题

上一轮建议写：

\[
\phi s_{r,t}H_{r,t}^N
+
\mathcal C(B_{r,t+1})
=
\tau_r Y_{r,t}
+
B_{r,t+1}
-
(1+r_t^g)B_{r,t}.
\]

Claude 指出这里必须明确 \(Y_{r,t}\) 是什么。

如果 \(Y_{r,t}\) 是总产出：

\[
Y_{r,t}=Y_{r,t}^N+Y_{r,t}^O,
\]

那意味着地方政府用整个地区税基支持 NEV。

如果 \(Y_{r,t}\) 只是 NEV 产出：

\[
Y_{r,t}=Y_{r,t}^N,
\]

那就变成“对 NEV 征税再补贴 NEV”，净 wedge 会改变。

### 3.2 是否接受？

**必须接受。**

财政约束是模型闭合的关键，tax base 必须写清楚。

### 3.3 基准修正

基准中使用 total regional output tax base：

\[
Y_{r,t}=Y_{r,t}^N+Y_{r,t}^O.
\]

地方政府预算：

\[
\tau_r(Y_{r,t}^N+Y_{r,t}^O)
+
B_{r,t+1}
=
(1+r_t^g)B_{r,t}
+
\phi s_{r,t}H_{r,t}^N
+
G_{r,t}.
\]

如果加入债务成本：

\[
\tau_r(Y_{r,t}^N+Y_{r,t}^O)
+
B_{r,t+1}
=
(1+r_t^g)B_{r,t}
+
\phi s_{r,t}H_{r,t}^N
+
G_{r,t}
+
\mathcal C(B_{r,t+1}).
\]

其中：

\[
\mathcal C(B_{r,t+1})
=
\frac{\kappa_B}{2}B_{r,t+1}^2.
\]

### 3.4 NEV 净财政成本

NEV subsidy gross cost 是：

\[
\phi s_{r,t}H_{r,t}^N.
\]

如果 NEV 部门也缴税，则 NEV net fiscal cost 可以写成：

\[
NetCost_{r,t}^N
=
\phi s_{r,t}H_{r,t}^N
-
\tau_r Y_{r,t}^N.
\]

outside sector 对 NEV subsidy 的财政贡献为：

\[
\tau_r Y_{r,t}^O.
\]

这可以体现财政维度的 crowding-out：

> 地方政府通过地区总税基融资 NEV 支持，因此 outside sector 间接受到财政挤出。

### 3.5 是否把 tax wedge 进入企业问题？

第一版建议不要让 \(\tau_r\) 同时进入 firms' FOC，除非要做完整税收扭曲模型。可以将 \(\tau_r Y_{r,t}\) 作为 reduced-form revenue extraction，用于政府预算闭合。

若后续需要更严格，可以设企业面对税后收入：

\[
(1-\tau_r)p_t^j y_{i,r,t}^j.
\]

但第一版暂不需要。

---

## 4. 是否保留 \(\frac{\kappa}{2}s^2\)：基准中应删除

### 4.1 问题

上一轮 notes 说可以保留：

\[
\frac{\kappa}{2}s_{r,t}^2
\]

作为 administrative / political / distortionary cost。

Claude 指出：如果已经在 fiscal surplus 中有真实 fiscal cost：

\[
\phi s_{r,t}H_{r,t}^N,
\]

再保留 \(\frac{\kappa}{2}s^2\) 会产生双重成本：

1. true fiscal cost；
2. adjustment cost；
3. administrative convex cost。

这会使政策成本结构不清楚。

### 4.2 是否接受？

**接受。**

基准中应删除 \(\frac{\kappa}{2}s^2\)。

### 4.3 基准修正

地方政府目标保留：

1. output / NEV activity benefit；
2. local employment benefit；
3. fiscal surplus；
4. policy adjustment cost。

基准目标：

\[
V_{r,t}^L
=
\theta_y Y_{r,t}^N
+
\theta_e L_{r,t}^N
+
\theta_f FiscalSurplus_{r,t}
-
\frac{\chi_s}{2}(s_{r,t}-s_{r,t-1})^2.
\]

其中：

\[
FiscalSurplus_{r,t}
=
\tau_r(Y_{r,t}^N+Y_{r,t}^O)
-
\phi s_{r,t}H_{r,t}^N
-
r_t^g B_{r,t}.
\]

如果保留债务动态，也可写为 continuation value 中的 \(B_{r,t+1}\)。

### 4.4 \(\frac{\kappa}{2}s^2\) 的地位

\[
\frac{\kappa}{2}s^2
\]

不进入 baseline。若未来有明确解释，例如 administrative capacity constraint 或 policy implementation cost，可放 robustness / extension。

### 4.5 Decision log

```markdown
## Decision: Policy cost

Accepted: The baseline policy cost is the true fiscal cost \(\phi s_{r,t}H_{r,t}^N\), embedded in the local government budget and fiscal surplus.

Accepted: Keep adjustment cost \(\frac{\chi_s}{2}(s_{r,t}-s_{r,t-1})^2\).

Rejected for baseline: Additional convex cost \(\frac{\kappa}{2}s_{r,t}^2\).

Reason:
The baseline should avoid double-counting the cost of policy intensity.
```

---

## 5. Strategic complementarity vs. policy inertia：必须区分

### 5.1 问题

上一轮 notes 把两类机制都称为 strategic complementarity：

1. early-stage competition for capital/projects；
2. excess-capacity stage 的“不愿率先退出”。

Claude 指出第二个并不是 best-response complementarity，而更像 coordination failure / war of attrition / stopping-time problem。

### 5.2 是否接受？

**必须接受。**

不能把早期政策竞赛和后期政策退出惯性混为同一个 Nash complementarity 机制。

### 5.3 基准处理

基准中分开处理：

#### A. Early-stage strategic complementarity

当地区竞争移动资本、企业和项目时，其他地区提高 \(s_{-r,t}\) 可能提高本地区的最优政策反应：

\[
\frac{\partial BR_r}{\partial s_{-r,t}}>0.
\]

这是地方政策 race / subsidy competition。

#### B. Late-stage policy inertia

过剩状态下的政策退出慢，不在 baseline 中建成 war-of-attrition game，而由 adjustment cost 表示：

\[
\frac{\chi_s}{2}(s_{r,t}-s_{r,t-1})^2.
\]

因此 late-stage “退出慢”不是基准 Nash complementarity 结果，而是 adjustment friction + local payoff 的动态结果。

### 5.4 不进入基准的内容

不要在第一版中引入：

- war of attrition；
- stopping-time game；
- asymmetric exit timing；
- mixed-strategy exit equilibrium。

这些放 extension。

### 5.5 Decision log

```markdown
## Decision: Strategic complementarity and policy inertia

Accepted: Early-stage local policy competition may be modeled as strategic complementarity in the local-government best response.

Accepted: Late-stage slow exit is modeled through policy adjustment costs and local fiscal/employment incentives.

Rejected for baseline: Modeling late-stage exit as a war-of-attrition game.

Reason:
Strategic complementarity and policy inertia are different mechanisms. The baseline keeps them separate to avoid overcomplicating the local government game.
```

---

## 6. Resource constraint：必须显式修正

### 6.1 问题

合并 capital 和 capacity 之后，原来的资源约束：

\[
Y_t
=
C_t
+
I_t^K
+
\sum_r I_{r,t}^H
+
\ldots
\]

仍然可能 double-count。

Claude 指出：如果 \(H_{r,t}^N\) 是 NEV capital/capacity，那么 \(I_t^K\) 应重新定义为 outside-sector capital investment only。

### 6.2 是否接受？

**必须接受。**

这是模型闭合的关键。

### 6.3 基准修正

aggregate capital market clearing：

\[
K_t
=
K_t^O
+
\sum_r H_{r,t}^N.
\]

outside-sector capital evolves as：

\[
K_{t+1}^O
=
(1-\delta_K)K_t^O
+
I_t^{K,O}.
\]

NEV installed capacity evolves as：

\[
H_{r,t+1}^N
=
(1-\delta_H)H_{r,t}^N
+
I_{r,t}^H.
\]

资源约束：

\[
Y_t
=
C_t
+
I_t^{K,O}
+
\sum_r I_{r,t}^H
+
\sum_r G_{r,t}
+
AdjCost_t
+
DebtCost_t.
\]

其中，不能再写 generic \(I_t^K\) 同时又写 \(\sum_r I_{r,t}^H\)，除非明确：

\[
I_t^K \equiv I_t^{K,O}.
\]

### 6.4 Decision log

```markdown
## Decision: Resource constraint after capital-capacity merger

Accepted: NEV installed capacity \(H_{r,t}^N\) is part of aggregate capital.

Capital market clearing:
\[
K_t=K_t^O+\sum_r H_{r,t}^N.
\]

Resource constraint:
\[
Y_t=C_t+I_t^{K,O}+\sum_r I_{r,t}^H+\sum_r G_{r,t}+AdjCost_t+DebtCost_t.
\]

Rejected: Using both generic \(I_t^K\) and NEV capacity investment without distinguishing them.
```

---

## 7. Outside-sector technology \(A_{r,t}^O\)：基准设外生

### 7.1 问题

当前模型给 NEV technology \(A_{r,t}^N\) 写了 learning law，但 outside-sector technology \(A_{r,t}^O\) 没有 law of motion。

### 7.2 是否接受？

**接受。**

需要明确处理，否则 MPK comparison 不够干净。

### 7.3 基准修正

基准中设：

\[
A_{r,t}^O=\bar A_r^O.
\]

这样 outside sector 提供机会成本：

\[
MPK_{r,t}^O
=
\alpha_O P_t^O A_r^O
\left(\frac{L_{r,t}^O}{K_{r,t}^O}\right)^{1-\alpha_O}.
\]

不要在第一版中让 outside-sector learning endogenous。否则 planner 减少 NEV 支持的收益会同时来自 outside-sector dynamic learning，模型会复杂很多。

### 7.4 Decision log

```markdown
## Decision: Outside-sector technology

Accepted: In the baseline, \(A_{r,t}^O\) is exogenous and region-specific.

Rejected for baseline: Endogenous outside-sector learning.

Reason:
The outside sector is used to measure opportunity cost and capital misallocation. Endogenous learning in the outside sector is left for extensions.
```

---

## 8. State space 太大：基准必须降维

### 8.1 问题

加入：

\[
H_{r,t}^N,\quad A_{r,t}^N,\quad B_{r,t},\quad s_{r,t-1},\quad \mu_{r,t}(z)
\]

后，每个地区状态已经很大。若 \(R\) 很多，完整动态求解不可行。

### 8.2 是否接受？

**必须接受。**

这影响求解策略。

### 8.3 基准降维策略

第一版 quantitative / toy model 不使用完整 firm productivity distribution \(\mu_{r,t}(z)\)。

改用 region-level sufficient statistics：

\[
H_{r,t}^N,\quad A_{r,t}^N,\quad B_{r,t},\quad s_{r,t-1}.
\]

企业异质性只作为 extension，或者用一个 reduced-form productivity threshold / average productivity term 表示。

例如：

\[
\bar z_{r,t}^N=\bar z(s_{r,t},A_{r,t}^N,P_t^N).
\]

### 8.4 两阶段求解

#### Stage 1：region-level deterministic dynamic GE

状态：

\[
X_t=
\{H_{r,t}^N,A_{r,t}^N,B_{r,t},s_{r,t-1}\}_{r=1}^R.
\]

#### Stage 2：heterogeneous firm extension

加入：

\[
\mu_{r,t}(z).
\]

但不作为第一版基准。

### 8.5 Decision log

```markdown
## Decision: State-space reduction

Accepted: The baseline quantitative model uses region-level sufficient statistics.

Baseline state:
\[
X_t=\{H_{r,t}^N,A_{r,t}^N,B_{r,t},s_{r,t-1}\}_{r=1}^R.
\]

Rejected for baseline:
Full firm productivity distribution \(\mu_{r,t}(z)\).

Reason:
The full heterogeneous-firm dynamic game is too large for the first implementation. Firm heterogeneity is left for a later extension.
```

---

## 9. Demonstration city instrument：必须谨慎

### 9.1 问题

上一轮 notes 把 demonstration city / pilot designation 列为可能 IV。Claude 指出，这个 designation 很可能被 lobbying 和原有汽车产业基础影响。

### 9.2 是否接受？

**必须接受。**

不能直接把 demonstration city 当作外生冲击。

### 9.3 修正表述

将其从 “instrument” 改成 “potential empirical design requiring validation”。

应写：

> Demonstration-city designation may provide useful policy variation, but it is unlikely to be unconditionally exogenous. Its validity depends on whether the timing of designation is plausibly exogenous conditional on pre-period auto-industrial base, fiscal capacity, urban characteristics, and pre-trends.

需要检验：

1. designation 是否预测 policy intensity；
2. designation 前 NEV outcomes 是否已有趋势差异；
3. designation 是否只通过 local policy support 影响 outcome，而不是通过 national attention、market access、central signaling 等其他渠道；
4. 是否能用 timing variation 而不是 level variation；
5. 是否需要 event-study + matching / entropy balancing / synthetic control。

### 9.4 Decision log

```markdown
## Decision: Demonstration-city designation

Accepted: Demonstration-city designation is a potential source of policy variation.

Rejected: Treating it as automatically exogenous.

Requirement:
Use only after validating first-stage relevance, pre-trends, and exclusion restrictions.
```

---

## 10. Meta-recommendation：必须先写 post-revision model skeleton

### 10.1 Claude 的核心建议

在更新九个模块 notes 之前，先写一个 single-page post-revision model skeleton，统一检查系统是否闭合。

### 10.2 是否接受？

**必须接受。**

这是当前最重要的流程建议。

原因是：如果先分别更新 02、03、04、05、06、08、10，可能继续产生新的模块间不一致。

### 10.3 Skeleton 应包含十项

1. capital/capacity definition；
2. production function；
3. resource constraint；
4. demand system；
5. learning law；
6. government budget identity；
7. local government objective；
8. constrained planner problem；
9. labor market clearing；
10. key equilibrium conditions。

### 10.4 执行顺序修正

原来的执行顺序是：

```text
update module notes
→ update MASTER
→ write model
```

现在应改成：

```text
write post-revision unified skeleton
→ check closure
→ update decision log
→ update module notes
→ update MASTER
→ write minimal two-region static model
→ only then write code
```

---

## 11. 修正后的 post-revision unified model skeleton

下面是建议先写入 `00_POST_REVISION_MODEL_SKELETON.md` 的版本。

---

# Post-Revision Model Skeleton

## 1. Regions and sectors

There are \(R\) regions indexed by \(r\) and two sectors:

\[
j\in\{N,O\},
\]

where \(N\) is the NEV sector and \(O\) is the outside sector.

Regional labor is fixed:

\[
L_{r,t}^N+L_{r,t}^O=\bar L_r.
\]

Wages are region-specific:

\[
w_{r,t}.
\]

---

## 2. Capital and capacity

NEV installed capacity is the NEV sector-specific capital stock:

\[
H_{r,t}^N.
\]

There is no separate \(K_{r,t}^N\) in the baseline.

Aggregate capital market clearing:

\[
K_t=K_t^O+\sum_r H_{r,t}^N.
\]

Outside-sector capital evolves as:

\[
K_{t+1}^O=(1-\delta_K)K_t^O+I_t^{K,O}.
\]

NEV capacity evolves as:

\[
H_{r,t+1}^N=(1-\delta_H)H_{r,t}^N+I_{r,t}^H.
\]

---

## 3. Production

NEV output:

\[
Y_{r,t}^N
=
u_{r,t}^N H_{r,t}^N,
\quad
u_{r,t}^N\in[0,1].
\]

Alternatively, in a richer version:

\[
Y_{r,t}^N
=
\min\left\{
A_{r,t}^N F(H_{r,t}^N,L_{r,t}^N),
H_{r,t}^N
\right\}.
\]

Outside-sector output:

\[
Y_{r,t}^O
=
A_r^O
(K_{r,t}^O)^{\alpha_O}
(L_{r,t}^O)^{1-\alpha_O}.
\]

Baseline outside-sector technology is exogenous:

\[
A_{r,t}^O=A_r^O.
\]

---

## 4. Final good and demand

Final output:

\[
Y_t=
\left[
\eta_N(Y_t^N)^{\frac{\epsilon-1}{\epsilon}}
+
(1-\eta_N)(Y_t^O)^{\frac{\epsilon-1}{\epsilon}}
\right]^{\frac{\epsilon}{\epsilon-1}}.
\]

Aggregate sectoral outputs:

\[
Y_t^N=\sum_r Y_{r,t}^N,
\quad
Y_t^O=\sum_r Y_{r,t}^O.
\]

With final good price normalized to one, NEV relative price is derived from CES demand:

\[
P_t^N
=
\eta_N
\left(
\frac{Y_t}{Y_t^N}
\right)^{1/\epsilon}.
\]

No standalone inverse demand \(\mathcal D(Q)\) is used in the baseline.

---

## 5. Resource constraint

The aggregate resource constraint is:

\[
Y_t
=
C_t
+
I_t^{K,O}
+
\sum_r I_{r,t}^H
+
\sum_r G_{r,t}
+
AdjCost_t
+
DebtCost_t.
\]

There is no generic \(I_t^K\) in addition to NEV capacity investment. In the baseline:

\[
I_t^K \equiv I_t^{K,O}.
\]

---

## 6. NEV policy wedge

Local government \(r\) chooses one expansionary NEV policy wedge:

\[
s_{r,t}\geq 0.
\]

It lowers the effective cost of NEV installed capacity:

\[
R_{r,t}^{N,eff}
=
r_t-\phi s_{r,t}.
\]

The gross fiscal subsidy cost is:

\[
SubsidyCost_{r,t}
=
\phi s_{r,t}H_{r,t}^N.
\]

---

## 7. Learning law

The NEV technology law of motion is:

\[
A_{r,t+1}^N
=
A_{r,t}^N
+
\psi_L
\frac{\bar A_t-A_{r,t}^N}{\bar A_t}
(Y_{r,t}^N)^\nu
+
\psi_G
\frac{\bar A_t-A_{r,t}^N}{\bar A_t}
\left(
\sum_{r'\neq r}Y_{r',t}^N
\right)^\nu.
\]

The frontier evolves exogenously:

\[
\bar A_{t+1}=(1+g_A)\bar A_t.
\]

This specification implies:

1. local learning;
2. cross-regional spillovers;
3. diminishing learning near the frontier;
4. no knowledge depreciation;
5. no double-counting of local output in the spillover term.

---

## 8. Local government budget

Local government budget:

\[
\tau_r(Y_{r,t}^N+Y_{r,t}^O)
+
B_{r,t+1}
=
(1+r_t^g)B_{r,t}
+
\phi s_{r,t}H_{r,t}^N
+
G_{r,t}
+
\mathcal C(B_{r,t+1}).
\]

Debt cost:

\[
\mathcal C(B_{r,t+1})
=
\frac{\kappa_B}{2}B_{r,t+1}^2.
\]

Fiscal surplus:

\[
FiscalSurplus_{r,t}
=
\tau_r(Y_{r,t}^N+Y_{r,t}^O)
-
\phi s_{r,t}H_{r,t}^N
-
r_t^gB_{r,t}.
\]

---

## 9. Local government objective

Local government \(r\) solves:

\[
\max_{\{s_{r,t},B_{r,t+1}\}}
\sum_{t=0}^{\infty}
\beta_g^t
\left[
\theta_yY_{r,t}^N
+
\theta_eL_{r,t}^N
+
\theta_fFiscalSurplus_{r,t}
-
\frac{\chi_s}{2}(s_{r,t}-s_{r,t-1})^2
\right].
\]

The baseline does not include an additional \(\frac{\kappa}{2}s_{r,t}^2\) cost.

---

## 10. Constrained planner

The constrained planner chooses the policy vector:

\[
\{s_{r,t}^{CP}\}_{r=1}^R
\]

to maximize household welfare:

\[
\max_{\{s_{r,t}^{CP}\}}
\sum_{t=0}^{\infty}
\beta^tU(C_t,L_t),
\]

subject to:

1. household behavior;
2. firm behavior;
3. regional labor clearing;
4. capital/capacity laws of motion;
5. government budget constraints;
6. learning law;
7. final-good resource constraint.

The main welfare comparison is:

\[
W^D
\quad vs. \quad
W^{CP}.
\]

The first-best allocation \(W^{FB}\) is only an upper bound.

---

## 11. Equilibrium

A decentralized equilibrium consists of paths for:

\[
\{C_t,K_t^O,H_{r,t}^N,A_{r,t}^N,B_{r,t},s_{r,t},Y_{r,t}^N,Y_{r,t}^O,w_{r,t},P_t^N\}
\]

such that:

1. households optimize;
2. firms optimize;
3. local governments solve their dynamic policy problem;
4. local policies form a Markov-Nash equilibrium;
5. labor markets clear region by region;
6. capital and capacity laws hold;
7. government budgets hold;
8. final-good resource constraint holds;
9. learning law holds.

---

## 12. State vector for baseline numerical model

Baseline state vector:

\[
X_t
=
\{H_{r,t}^N,A_{r,t}^N,B_{r,t},s_{r,t-1}\}_{r=1}^R.
\]

The full firm productivity distribution \(\mu_{r,t}(z)\) is not in the baseline state vector.

---

## 13. Key results to prove

1. State-contingent policy is beneficial when learning gains exceed fiscal and misallocation costs.
2. Local governments over-subsidize relative to the constrained planner:

\[
s^D>s^{CP}.
\]

3. Decentralized policy generates excessive NEV capacity:

\[
H^{N,D}>H^{N,CP}.
\]

4. Decentralized policy lowers utilization and NEV capital returns:

\[
u^{N,D}<u^{N,CP},
\quad
MPK^{N,D}<MPK^{O,D}.
\]

5. Welfare under decentralized local policy is below constrained centralized policy:

\[
W^D<W^{CP}.
\]

---

## 12. Revised update plan

根据这次 review，更新计划应改为：

```text
Step 0: Create 00_POST_REVISION_MODEL_SKELETON.md
Step 1: Check closure of skeleton
Step 2: Update 99_decision_log.md
Step 3: Update 02_environment_household_final_good.md
Step 4: Update 03_firms_entry_capacity_exit.md
Step 5: Update 04_local_government_game.md
Step 6: Update 04b_policy_adjustment_exit.md
Step 7: Update 05_planner_problem.md
Step 8: Update 06_equilibrium_definition.md
Step 9: Update 08_quantification_moments.md
Step 10: Update 10_solution_algorithm.md
Step 11: Update 00_MASTER_model_memo.md
Step 12: Write two-region static model proof
Step 13: Only then start numerical code
```

---

## 13. 最终采纳表

| Claude review point | 是否接受 | 基准处理 |
|---|---:|---|
| Learning law 两套公式冲突 | 必须接受 | 用 combined frontier-gap spillover law |
| \(\bar A_t\) 未定义 | 必须接受 | 设 exogenous frontier，\(\bar A_{t+1}=(1+g_A)\bar A_t\) |
| Government budget tax base 不清楚 | 必须接受 | 用 total regional output tax base |
| NEV net fiscal cost 未说明 | 接受 | 记录 gross subsidy and net fiscal cost |
| \(\kappa s^2/2\) 成本可能 double-count | 接受 | baseline 删除，只保留 fiscal cost + adjustment cost |
| strategic complementarity 与 exit inertia 混同 | 必须接受 | early complementarity 和 late adjustment friction 分开 |
| resource constraint 仍 double-count | 必须接受 | \(I_t^K\equiv I_t^{K,O}\)，并写 \(K_t=K_t^O+\sum_r H_{r,t}^N\) |
| outside-sector technology 无 law | 接受 | 基准设 \(A_{r,t}^O=A_r^O\) 外生 |
| state space 太大 | 接受 | 基准用 region-level sufficient states |
| demonstration city IV 需谨慎 | 接受 | 从 instrument 改成 potential design requiring validation |
| 需要 unified model skeleton | 必须接受 | 先写 skeleton，再更新 modules |

---

## 14. 最终结论

这次 Claude review 的最大价值是指出：

> 上一轮 acceptance notes 虽然方向正确，但仍然是逐条修补；现在需要先构建一个统一的 post-revision model skeleton，检查模型是否闭合。

所以当前最重要的下一步不是继续讨论单个模块，也不是写 Julia code，而是：

\[
\boxed{
\text{先写 } 00\_POST\_REVISION\_MODEL\_SKELETON.md
}
\]

该 skeleton 必须统一以下对象：

1. NEV capital/capacity；
2. outside-sector capital；
3. resource constraint；
4. CES-derived demand；
5. frontier-gap learning with spillovers；
6. government budget；
7. fiscal surplus；
8. simplified local government objective；
9. constrained planner；
10. regional labor clearing；
11. state vector；
12. equilibrium conditions。

只有这个 skeleton 闭合后，才应更新 MASTER model memo 和各模块 notes。
