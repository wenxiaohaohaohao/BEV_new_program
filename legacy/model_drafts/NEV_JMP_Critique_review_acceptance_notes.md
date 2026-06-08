# Review Notes：NEV JMP Critique 的逐条分解与采纳建议

## 0. 总体判断

这份 critique 质量很高，不能简单忽略。它抓住了当前 model memo 中最危险的几类问题：

1. **模型闭合问题**：资本/产能双重存量、需求系统重复、政府预算缺失、劳动市场不一致；
2. **核心命题缺少证明**：尤其是 \(s^D>s^P\)；
3. **planner benchmark 不够准确**：应区分 first-best planner 和 constrained planner；
4. **量化识别没有提前设计**：policy wedge、learning、政府权重、调整成本都需要 moments 或识别策略；
5. **中国制度特征目前只是背景，没有进入模型纪律**。

总体建议：

> **Priority 1 和 Priority 2 中的大多数建议应接受；Priority 3 应接受但分阶段执行；Priority 4 多数作为 extension，不应立刻塞进基准模型。**

---

## 1. Capital stock versus capacity stock

### 1.1 critique 的核心意见

当前模型同时有：

- firm-level capital \(k_{i,r,t}^j\)，进入 Cobb-Douglas 生产函数；
- region-level NEV capacity \(H_{r,t}^N\)，通过 \(I_{r,t}^H\) 积累，并约束生产：

\[
Q_{r,t}^N \leq H_{r,t}^N.
\]

但二者关系没有说明。如果 \(k\) 和 \(H\) 是同一个物理对象，那么两个 accumulation equations 会重复。如果二者不同，则必须解释 \(H\) 如何与资本市场、家庭投资、MPK 和资源约束相连。

### 1.2 是否接受？

**必须接受。**

这是当前模型最严重的问题之一。文章核心是：

\[
MPK^N < MPK^O,
\]

以及：

\[
K^{N,D}>K^{N,P}.
\]

如果 \(K\) 和 \(H\) 的关系不清楚，资本错配就没有严格定义。

### 1.3 建议修改

基准模型中应将 NEV 部门的 capital 和 capacity 合并：

\[
H_{i,r,t}^N
\]

就是 NEV 部门的 installed capacity / sector-specific capital。不要再同时写独立的 \(k_{i,r,t}^N\)。

NEV 生产可以写成：

\[
q_{i,r,t}^N
\leq H_{i,r,t}^N,
\]

或者：

\[
q_{i,r,t}^N
=
u_{i,r,t}^N H_{i,r,t}^N,
\quad
u_{i,r,t}^N\in[0,1].
\]

产能积累为唯一的 NEV capital law：

\[
H_{i,r,t+1}^N=(1-\delta_H)H_{i,r,t}^N+I_{i,r,t}^H.
\]

资源约束中只出现一次 investment cost，不再同时有 \(I_t^K\) 和 \(\sum_r I_{r,t}^H\) 双重计算。

### 1.4 需要更新的 notes

```text
02_environment_household_final_good.md
03_firms_entry_capacity_exit.md
06_equilibrium_definition.md
08_quantification_moments.md
99_decision_log.md
```

### 1.5 Decision log

```markdown
## Decision: Capital and capacity

Accepted: In the baseline model, NEV installed capacity is the sector-specific capital stock.

Rejected: Maintaining separate generic capital \(k^N\) and capacity \(H^N\) for the NEV sector.

Reason: The paper's central object is capital misallocation. MPK and welfare comparisons require a single, well-defined NEV capital/capacity stock.
```

---

## 2. CES aggregator versus inverse demand

### 2.1 critique 的核心意见

当前模型同时写了 CES final-good aggregator 和独立 inverse demand：

\[
P_t^N=\mathcal D(Q_t^N),\quad \mathcal D'(\cdot)<0.
\]

但在 CES final-good aggregator 中，NEV demand 可以由 aggregator 的最优条件推出。因此不能同时独立设定 CES aggregator 和 standalone inverse demand。

### 2.2 是否接受？

**必须接受。**

当前写法确实不一致。

### 2.3 建议修改

基准模型采用 **CES-derived demand**，删除独立的 \(\mathcal D(Q)\)。

在 final-good price normalize 为 1 的情况下，NEV relative price 由 FOC 推出：

\[
P_t^N
=
\eta_N
\left(\frac{Y_t}{Y_t^N}\right)^{1/\epsilon}.
\]

这仍然能给出：

\[
\frac{\partial P_t^N}{\partial Y_t^N}<0.
\]

因此仍能解释：

\[
Y_t^N\uparrow
\Rightarrow
P_t^N\downarrow
\Rightarrow
\pi_t^N\downarrow.
\]

### 2.4 是否接受 Dixit-Stiglitz / Melitz？

作为 extension 接受，不作为当前基准。Dixit-Stiglitz 更适合 NEV 产品差异化，但会引入 varieties、markups、firm-level demand 和 entry mass，模型复杂度明显上升。当前阶段先用 CES-derived aggregate demand。

### 2.5 采纳表

| 建议 | 是否接受 | 处理 |
|---|---:|---|
| 不要同时写 CES 和独立 inverse demand | 接受 | 立即改 |
| 基准用 CES-derived inverse demand | 接受 | 进入 MASTER |
| 基准改成 Melitz / Dixit-Stiglitz | 暂不接受 | 放 extension |
| BLP | 不接受为基准 | 只作为 IO extension |

---

## 3. Government budget constraint missing

### 3.1 critique 的核心意见

如果政策 wedge 降低资本成本：

\[
R_{r,t}^N=r_t-\phi s_{r,t},
\]

那么 subsidy 必须有人融资。当前只说 household transfer \(T_t\) 清算政府预算，但没有写政府预算约束。

真实 fiscal cost 应该随政策强度和 NEV 资本存量变化：

\[
\phi s_{r,t}H_{r,t}^N.
\]

不能只写：

\[
\frac{\kappa}{2}s_{r,t}^2.
\]

### 3.2 是否接受？

**必须接受。**

政府预算缺失会严重削弱福利分析。没有 fiscal cost，模型会机械地产生过度 subsidy，但不知道 subsidy 的真实资源成本在哪里。

### 3.3 建议修改

基准中加入地方政府预算约束：

\[
G_{r,t}
+
\phi s_{r,t}H_{r,t}^N
+
\mathcal C(B_{r,t+1})
=
TAX_{r,t}
+
B_{r,t+1}
-
(1+r_t^g)B_{r,t}.
\]

或者更简单：

\[
\phi s_{r,t}H_{r,t}^N
+
\frac{\kappa_B}{2}B_{r,t+1}^2
=
\tau_r Y_{r,t}
+
B_{r,t+1}
-
(1+r_t^g)B_{r,t}.
\]

这保留三点：

1. subsidy cost 随政策强度和 NEV capital/capacity 增加；
2. 地方政府可以债务融资；
3. 债务有 convex cost 或 borrowing limit。

### 3.4 对原 local objective 的影响

原来的：

\[
\frac{\kappa}{2}s_{r,t}^2
\]

不要完全删除，但要重新解释为 administrative / political / distortionary cost，不能再当 fiscal cost。

财政成本必须是：

\[
\phi s_{r,t}H_{r,t}^N.
\]

---

## 4. Local government objective is ad hoc

### 4.1 critique 的核心意见

当前地方政府目标函数同时包含 output、investment、employment、tax，存在 double-counting；\(\frac{\kappa}{2}s^2\) 不是真实 fiscal cost；\(\beta_g\neq \beta\) 没有解释；目标函数没有 consumption term。

### 4.2 是否接受？

**部分接受。**

批评是对的，但完整 political economy microfoundation 不适合作为第一版基准。

### 4.3 建议修改

#### 接受 1：减少 double-counting

不要同时写太多高度重叠的目标。建议改成：

\[
V_{r,t}^L
=
\theta_y Y_{r,t}^N
+
\theta_e L_{r,t}^N
+
\theta_f FiscalSurplus_{r,t}
-
\Gamma(B_{r,t})
-
AdjCost(s_{r,t},s_{r,t-1}).
\]

或者：

\[
V_{r,t}^L
=
\theta_g GDP_{r,t}
+
\theta_n NEVShare_{r,t}
+
\theta_e L_{r,t}^N
+
\theta_f FiscalSurplus_{r,t}.
\]

核心是不要让 \(Y,I,L,Tax\) 四个项同时无纪律地进入。

#### 接受 2：真实 fiscal cost 必须进入

将财政成本写成：

\[
\phi s_{r,t}H_{r,t}^N.
\]

#### 接受 3：\(\beta_g<\beta\) 可以保留，但必须解释

如果保留：

\[
\beta_g<\beta,
\]

必须明确它表示：

> local officials have finite-tenure political incentives and overweight short-run measurable outcomes.

否则第一版先设：

\[
\beta_g=\beta.
\]

#### 不完全接受：完整 tournament model

官员晋升锦标赛模型很有用，但如果完整建进去，模型会偏离主线。第一版只需要 reduced-form local political objective，并说明这是 reduced-form representation。

### 4.4 决策表

| 建议 | 是否接受 | 处理 |
|---|---:|---|
| 目标函数 double-counting | 接受 | 精简 local objective |
| fiscal cost 错写成 \(\kappa s^2/2\) | 接受 | 改为 \(\phi sH\) |
| 完整政治晋升模型 | 暂不接受 | 文献动机或 extension |
| \(\beta_g<\beta\) | 部分接受 | 要么解释，要么设等于 \(\beta\) |

---

## 5. Learning-by-doing specification

### 5.1 critique 的核心意见

当前 learning law 存在几个问题：

1. local production 在 local term 和 national spillover term 中 double-count；
2. technology depreciation 概念上可疑；
3. learning 没有随技术成熟而递减；
4. 状态变量里有 \(S_t^N\) 但没有建模。

### 5.2 是否接受？

**基本接受。**

这是必须修正的模块。

### 5.3 建议修改

#### 5.3.1 去掉 local output double-counting

改成：

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

#### 5.3.2 不写 knowledge depreciation

删除：

\[
(1-\delta_A)A_{r,t}^N.
\]

除非明确是 technology obsolescence，而不是 knowledge depreciation。

更稳写法：

\[
A_{r,t+1}^N
=
A_{r,t}^N
+
\Delta A_{r,t}^N.
\]

或者用 frontier gap：

\[
A_{r,t+1}^N
=
A_{r,t}^N
+
\psi
\left(\bar A-A_{r,t}^N\right)
(Q_{r,t}^N)^\nu.
\]

这样自然有 diminishing returns：越接近 frontier，learning 越小。

#### 5.3.3 \(S_t^N\) 的处理

基准中不要单独建 \(S_t^N\)。把 supply-chain coordination 吸收到 \(A_{r,t}^N\) 或 \(\psi_G\) 中。

可以写：

> \(A_{r,t}^N\) captures both technological productivity and supply-chain coordination efficiency.

否则 \(S_t^N\) 会变成一个没有闭合的状态变量。

---

## 6. Planner benchmark

### 6.1 critique 的核心意见

当前 \(W^D\) vs \(W^P\) 比较像 first-best planner。但真实政策改革应是 constrained planner：中央政府选择政策工具 \(\{s_{r,t}^P\}\)，但企业和家庭仍然最优化。直接让 planner 选择所有 capital、capacity、quantity 不是可实施政策。

### 6.2 是否接受？

**必须接受。**

这是非常重要的修改。

### 6.3 正确处理方式

至少区分三个对象。

#### 1. Decentralized local equilibrium

\[
W^D.
\]

地方政府各自选择：

\[
s_{r,t}^D.
\]

#### 2. Constrained planner / centralized policy equilibrium

\[
W^{CP}.
\]

中央政府选择：

\[
\{s_{r,t}^{CP}\}_{r=1}^R,
\]

但企业、家庭仍然 decentralized best response。

这是主文最重要 benchmark。

#### 3. First-best planner

\[
W^{FB}.
\]

planner 直接选择 allocations。这只能作为 upper bound 或 appendix。

### 6.4 新主比较

主文应从：

\[
W^D \quad vs. \quad W^P
\]

改成：

\[
W^D \quad vs. \quad W^{CP}.
\]

如果有能力，再报告：

\[
W^{FB}-W^{CP}.
\]

---

## 7. Labor market inconsistency

### 7.1 critique 的核心意见

household 中使用 aggregate wage \(w_t\)，但 firm profit 使用 regional wage \(w_{r,t}\)。这要求明确 labor mobility：完全流动、完全不流动，还是部分流动。

### 7.2 是否接受？

**必须接受。**

目前写法不闭合。

### 7.3 基准建议

第一版采用 regional labor endowment fixed / no interregional mobility：

\[
L_{r,t}=\bar L_r.
\]

区域工资：

\[
w_{r,t}
\]

由地区劳动力市场清算决定：

\[
L_{r,t}^N+L_{r,t}^O=\bar L_r.
\]

这样：

1. 地方政府关心 local employment 有意义；
2. 模型简单；
3. 不需要立刻写 migration/hukou friction；
4. 与中国地区劳动力摩擦背景相容。

Partial mobility 可以作为 extension。

---

## 8. Nash equilibrium underdetermined

### 8.1 critique 的核心意见

当前 Markov-Nash 只是写了：

\[
s_{r,t}^D=BR_r(s_{-r,t}^D;Z_{r,t},Z_t),
\]

但没有说明政策是战略互补还是战略替代、均衡是否唯一、游戏时序如何。

### 8.2 是否接受？

**接受。**

地方政府博弈是模型核心，不能只写一句 Nash。

### 8.3 建议修改

#### 8.3.1 先做 two-region symmetric game

不要直接做 31 个省份。设：

\[
r=1,2.
\]

求：

\[
BR_1(s_2),
\quad
BR_2(s_1).
\]

至少分析：

\[
\frac{\partial BR_r}{\partial s_{-r}}.
\]

#### 8.3.2 明确互补/替代

如果政策竞争主要来自抢资本、抢项目、抢企业：

\[
\frac{\partial BR_r}{\partial s_{-r}}>0
\]

是战略互补。

如果政策竞争主要来自固定需求下的价格压缩：

\[
\frac{\partial BR_r}{\partial s_{-r}}<0
\]

是战略替代。

你的故事更需要二者并存：

- 早期可能 strategic complements；
- 过剩状态下 social return 下降，但地方政府因“不愿率先退出”仍可能表现出 complementarity。

#### 8.3.3 多重均衡处理

计算中必须做：

```text
grid search + nlsolve + multiple initial values + equilibrium selection rule
```

#### 8.3.4 游戏时序

不建议第一版做 sequential game。保持 simultaneous Markov-Nash，但说明：

> sequential / iterative policy announcements are left for robustness.

---

## 9. Propositions lack proofs

### 9.1 critique 的核心意见

当前六个 propositions 中，一些只是定义的直接 implication，不是真正的 equilibrium result。最核心的 Proposition 2：

\[
s^D>s^P
\]

没有证明。policy exits too slowly 也像是 adjustment friction 的假设，而非结果。

### 9.2 是否接受？

**必须接受。**

在写 code 之前，至少要证明一个静态 two-region 版本。

### 9.3 应如何重写 propositions？

#### Lemma 1：policy wedge raises NEV capital/capacity

这是 setup implication，不叫 proposition。

\[
\frac{\partial H_r^N}{\partial s_r}>0.
\]

#### Lemma 2：capacity expansion lowers NEV price

由 demand system 推出。

\[
\frac{\partial P^N}{\partial H^N}<0.
\]

#### Proposition 1：state-contingent policy frontier

不是写“大 learning 外部性下政策有效”，而是写：

\[
MB^{learning}(A,H,D)
\geq
MC^{fiscal+misallocation}(A,H,D)
\]

时政策提高福利。

#### Proposition 2：local over-subsidization

核心命题：

\[
s^D>s^{CP}.
\]

证明要比较 local FOC 和 constrained planner FOC。

#### Proposition 3：decentralized policy generates overcapacity and MPK gap

在 Proposition 2 基础上推导：

\[
H^{N,D}>H^{N,CP},
\]

\[
MPK^{N,D}<MPK^{O,D}.
\]

#### Proposition 4：policy exits too slowly

这个要谨慎。要么改成 numerical result，要么明确在调整成本和 local payoff 下证明。

---

## 10. Quantification and identification

### 10.1 critique 的核心意见

八个 moments 的识别都不简单，尤其是：

1. policy endogeneity；
2. learning 参数；
3. government objective weights；
4. policy adjustment cost。

因此，在量化前需要 formal identification section。

### 10.2 是否接受？

**接受问题，部分接受具体建议。**

必须写 identification / moments discipline section。但具体 IV 不能直接照抄，需要逐一验证。

### 10.3 建议修改

#### 10.3.1 区分 structural calibration 和 causal reduced form

不要让所有 moments 都承担 causal identification。

| 类型 | 用途 |
|---|---|
| Descriptive moments | 匹配规模、利用率、利润率、MPK gap |
| Causal moments | policy → entry/investment |
| Calibration moments | fiscal cost、demand elasticity、learning rate |

#### 10.3.2 policy endogeneity 必须处理

至少要有 \(s_{r,t}\) 的构造和识别计划。

可能方案：

1. pre-period industrial base \(\times\) national NEV policy shocks；
2. demonstration city / pilot designation；
3. central policy timing interacted with initial auto-industry exposure；
4. province-level fiscal pressure as shifter，需谨慎；
5. historical auto supply-chain base as exposure，需控制 pretrend。

#### 10.3.3 learning 参数不要一开始强估

\(\psi_L,\psi_G,\nu\) 可以先从 literature calibration 或 external estimates 开始，再做 sensitivity。

直接用 cumulative output 回归 TFP 会有严重内生性。

#### 10.3.4 政府权重需要纪律

\(\omega_Y,\omega_I,\omega_E,\omega_T\) 不能自由设。

如果保留这些权重，必须匹配政策对 lagged output、investment、employment、fiscal revenue 的反应。

否则就简化 local objective，减少权重数量。

---

## 11. China-specific institutional features

### 11.1 critique 的核心意见

模型没有很好刻画 SOEs、出口、金融摩擦、户籍/劳动力流动限制等中国制度特征。

### 11.2 是否接受？

**部分接受。**

这些都重要，但不能全部进入基准模型。

### 11.3 分类处理

| 制度特征 | 是否进基准 | 理由 |
|---|---:|---|
| 金融/信贷支持 | 是，但 reduced-form | 已经体现在 \(R^N=r-\phi s\) |
| 地方财政/债务 | 是 | budget constraint 必须进 |
| 劳动力地区不完全流动 | 是，简化为固定 \(L_r\) | 解决 wage inconsistency |
| SOE heterogeneity | 暂不进 | extension / heterogeneity |
| export relief valve | 暂不进 | extension，但政策相关性强 |
| soft budget constraints | 后续加入 | 与地方财政和国有银行相关 |
| Hukou full model | 不进第一版 | 只用 regional labor segmentation |

### 11.4 关键判断

基准模型要有中国制度感，但不能变成中国制度大全。第一版最重要的是：

```text
地方政府财政约束
+ 地区劳动力市场
+ 政策性资本成本 wedge
```

SOE、出口、生产网络、soft budget constraints 放 extension。

---

## 12. Missing literature

### 12.1 critique 的核心意见

文献定位缺少 industrial policy and learning、misallocation、spatial policy、NEV/EV 等关键文献。

### 12.2 是否接受？

**接受。**

这部分不一定影响模型结构，但必须更新 literature notes。

### 12.3 应如何使用这些文献？

| 文献组 | 用途 |
|---|---|
| Juhász / Lane | 支撑 industrial policy + learning |
| Aghion et al. | 支撑 industrial policy and competition |
| Restuccia-Rogerson | 支撑 idiosyncratic distortions and TFP loss |
| Bai-Hsieh-Song / Chen-He-Liu | 支撑中国地方财政和投资错配 |
| Fajgelbaum et al. | 支撑 spatial misallocation |
| Murry-Zhu | 支撑中国汽车市场需求和产品差异化 |
| Gillingham / Wright's Law | 支撑 learning curve |

不要把所有文献都写成长综述。它们应服务模型模块。

---

## 13. Priority revisions

### 13.1 修正版优先级

#### Priority 0：先停止写 code

在以下问题修正前，不要进入正式数值求解。

---

#### Priority 1：模型闭合性，必须立刻改

1. **资本/产能合并**：\(H^N\) 就是 NEV installed capital/capacity，不再与 \(k^N\) 双重存在。
2. **需求系统统一**：基准用 CES-derived NEV demand，删除独立 \(\mathcal D(Q)\)。
3. **政府预算约束**：加入 \(\phi s_{r,t}H_{r,t}^N\) 的真实 fiscal cost。
4. **劳动市场闭合**：基准设 regional labor endowment fixed，工资 \(w_{r,t}\) 地区化。
5. **learning law 修正**：去掉 double counting、去掉 knowledge depreciation、引入 diminishing learning。

---

#### Priority 2：核心理论结果，写 code 前必须完成

1. 写 two-region static model；
2. 推导 local FOC；
3. 推导 constrained planner FOC；
4. 证明 \(s^D>s^{CP}\) 的 sufficient conditions；
5. 将直接推论降级为 lemmas；
6. 将 policy exit 先写成 numerical / dynamic result，而不是硬 proposition。

---

#### Priority 3：量化和识别前的纪律

1. 写 identification section；
2. 区分 descriptive moments、causal moments、calibration moments；
3. 给 \(s_{r,t}\) 的构造方案；
4. 给 policy-entry / policy-investment 的识别方案；
5. 给 learning 参数的校准或敏感性方案；
6. 给 local government weights 的 moments 或简化方案。

---

#### Priority 4：暂不进入基准的扩展

1. SOE heterogeneity；
2. export relief valve；
3. soft budget constraints；
4. production network；
5. supplier payment and innovation；
6. Dixit-Stiglitz / BLP demand；
7. sequential central-local game。

---

## 14. 最终采纳表

| Section | Critique 内容 | 我的判断 | 操作 |
|---|---|---:|---|
| I | Capital vs capacity | 必须接受 | 立即改 MASTER |
| II | CES vs inverse demand | 必须接受 | 基准用 CES-derived demand |
| III | Government budget | 必须接受 | 加 local fiscal constraint |
| IV | Local objective ad hoc | 部分接受 | 精简目标；加真实 fiscal cost |
| V | Learning errors | 基本接受 | 修 learning law |
| VI | Planner benchmark | 必须接受 | 加 constrained planner |
| VII | Labor market inconsistency | 必须接受 | 基准 fixed regional labor |
| VIII | Nash underdetermined | 接受 | two-region proof + grid/nlsolve |
| IX | Propositions weak | 必须接受 | 重写 lemmas/propositions |
| X | Identification | 接受 | 单独写 identification plan |
| XI | China institutions | 部分接受 | 部分进基准，多数 extension |
| XII | Missing literature | 接受 | 更新 literature notes |
| XIII | Priority list | 大体接受 | 调整执行顺序 |

---

## 15. 最重要的结论

这份 critique 中最应该立即接受的是五个修改：

\[
\boxed{
\text{capital/capacity 合并}
}
\]

\[
\boxed{
\text{demand system 统一}
}
\]

\[
\boxed{
\text{government budget constraint}
}
\]

\[
\boxed{
\text{constrained planner benchmark}
}
\]

\[
\boxed{
\text{two-region proof of }s^D>s^{CP}
}
\]

如果不改这五个，后面写得再复杂也会被认为模型没有闭合。

但不应该照单全收的地方是：

1. 不要立刻上 full Dixit-Stiglitz / Melitz / BLP；
2. 不要立刻写完整 political promotion tournament；
3. 不要立刻加入 SOE、export、soft budget、production network；
4. 不要把所有中国制度特征都塞入 baseline；
5. 不要让模型从“地方政策竞争与错配”变成“什么都解释”的大模型。

---

## 16. 下一步建议

最正确的下一步是：

> **根据这份 critique 先修 MASTER model memo 和 03、04、05、06、07、10 几个模块 notes；然后写一个 two-region static model，证明 \(s^D>s^{CP}\)。在完成这个证明之前，不建议进入正式数值代码。**

具体更新顺序：

```text
1. Update 99_decision_log.md
2. Update 03_firms_entry_capacity_exit.md
3. Update 02_environment_household_final_good.md
4. Update 04_local_government_game.md
5. Update 05_planner_problem.md
6. Update 06_equilibrium_definition.md
7. Update 08_quantification_moments.md
8. Update 10_solution_algorithm.md
9. Update 00_MASTER_model_memo.md
```

执行原则：

```text
先修模型闭合性
→ 再证明核心命题
→ 再做 toy numerical model
→ 再谈数据 moments 和完整量化
```
