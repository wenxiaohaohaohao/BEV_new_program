# Critical Review: "State-Contingent Industrial Policy, Local Competition, and Aggregate Misallocation: Evidence from China's NEV Industry"

---

## Preamble

This review evaluates the model memo against the standards expected of a Job Market Paper at a top-tier North American macroeconomics PhD program. The paper has a compelling empirical motivation, genuine policy relevance, and a well-chosen literature position. The state-contingency framing is intellectually honest and distinguishes the paper from mechanically anti-industrial-policy work. That said, the model memo contains a set of structural inconsistencies, foundational ambiguities, and identification challenges that—if left unaddressed—would generate significant pushback from referees and placement committees. The critique below is organized thematically, from the most foundational issues to more targeted recommendations.

---

## I. Foundational Ambiguity: Capital Stock versus Capacity Stock

**The problem.** This is the most consequential unresolved issue in the memo. The model simultaneously maintains two distinct capital-like objects whose relationship is never specified:

- Firm-level capital $k_{i,r,t}^j$ enters the Cobb-Douglas production function and accumulates via aggregate household investment $I_t^K$ in the resource constraint.
- Region-level NEV capacity $H_{r,t}^N$ accumulates via regional investment $I_{r,t}^H$ and constrains production through $Q_{r,t}^N \leq H_{r,t}^N$.

The resource constraint (Section 4) treats both $I_t^K$ and $\sum_r I_{r,t}^H$ as separate uses of the final good. This creates a profound aggregation problem: the household owns aggregate capital $K_t$, which earns return $r_t$ and must satisfy market clearing with $\sum_{r,j} \int k_{i,r,t}^j d\mu_{r,t}^j(z)$. But it is unclear whether $H_{r,t}^N$ is a component of $K_t$ or an additional, separately-financed stock. If they are the same physical capital, the two accumulation equations ($I_t^K$ and $I_{r,t}^H$) are redundant and jointly over-identify the capital stock. If they are different objects—say, $k$ is generic physical capital and $H$ is industry-specific capacity—then the model needs a theory of how installed capacity relates to the capital rental market, and whether unused capacity carries a real resource cost or just an opportunity cost.

**Why it matters.** The paper's central welfare result depends on misallocation of capital. If the capital stock is not well-defined, neither is the MPK gap $MPK_{r,t}^N - MPK_{r,t}^O$, and neither is the welfare comparison between the decentralized and planner allocations.

**Recommended fix.** Follow the standard in papers like Barwick, Kalouptsidi, and Zahur (2021) or Asker, Collard-Wexler, and De Loecker (2019) and model capacity as the binding constraint on production, with capital being the investment good required to install capacity. Specifically, let $k_{i,r,t}^N \equiv H_{i,r,t}^N$ (firm-level capital *is* installed capacity), so that the accumulation equation $H_{r,t+1}^N = (1-\delta_H)H_{r,t}^N + I_{r,t}^H$ aggregates to the capital law of motion used in the household Euler equation. This collapses the two stocks into one and makes capital market clearing and MPK computation well-defined.

**Supporting literature.** The treatment of capital-as-capacity with a single law of motion and utilization-dependent output goes back to Greenwood, Hercowitz, and Huffman (1988) and is used extensively in the investment-capacity literature (Caballero and Leahy, 1996; Cooper and Haltiwanger, 2006). The Barwick-Kalouptsidi-Zahur shipbuilding paper, which the memo explicitly cites as a template, uses a single firm-level capital stock with endogenous capacity that is the direct input into production. The two-stock structure in the current memo has no clear antecedent in the quantitative macro literature and would not survive referee scrutiny.

---

## II. Demand-Side Inconsistency: CES Aggregator versus Inverse Demand

**The problem.** The model simultaneously specifies:

1. A CES final good aggregator $Y_t = [\eta_N (Y_t^N)^{(\epsilon-1)/\epsilon} + (1-\eta_N)(Y_t^O)^{(\epsilon-1)/\epsilon}]^{\epsilon/(\epsilon-1)}$.
2. An inverse demand function $P_t^N = \mathcal{D}(Q_t^N)$ with $\mathcal{D}' < 0$.

These are not two independent specifications; one is derived from the other. In a competitive equilibrium with the CES aggregator, the inverse demand for NEV output is:

$$P_t^N = \eta_N \left(\frac{Y_t}{Y_t^N}\right)^{1/\epsilon}$$

which is already a decreasing function of $Q_t^N = Y_t^N$ for given aggregate output $Y_t$. Introducing a separate, unspecified inverse demand function $\mathcal{D}(\cdot)$ is therefore either redundant (if it is consistent with the CES) or inconsistent (if it is not). The paper cannot have both.

**A second inconsistency** arises at the product market level. The CES aggregator treats NEV and the outside sector as the two goods, but NEV output $Y_t^N = \sum_r Q_{r,t}^N$ aggregates heterogeneous firm output across regions with heterogeneous productivities $z_{i,t}$ and a common aggregate price $P_t^N$. For this to be coherent, either (a) the NEV market is perfectly competitive with all firms taking $P_t^N$ as given, in which case the demand system is already closed by the CES without any additional demand equation, or (b) firms have market power, in which case a full oligopoly demand system (BLP or similar) is needed, and a single aggregate inverse demand is insufficient.

**Recommended fix.** Choose one demand structure and derive everything from it consistently:

- *Option A (competitive):* Keep the CES and derive the NEV inverse demand from optimality of the final-good aggregator. Drop the standalone $\mathcal{D}(\cdot)$.
- *Option B (oligopolistic, preferred for NEV):* Model NEV as a monopolistically-competitive sector with a standard Dixit-Stiglitz aggregator at the variety level, as in Melitz (2003) and many macro-heterogeneous-firm papers. This delivers a well-defined price index, firm-level demand, and mark-ups, and fits the NEV market structure (product differentiation, varying quality) far better than a homogeneous-good inverse demand.

**Supporting literature.** The inconsistency between CES final-good aggregation and inverse product-market demand is discussed explicitly in the pedagogical treatment of two-sector models in Galí (2008, Chapter 3) and in the heterogeneous-firm macro literature (Melitz, 2003; Chaney, 2008). For industrial-policy papers with heterogeneous NEV products, see the BLP approach in Berry, Levinsohn, and Pakes (1995) and its application to China's auto market in Murry and Zhu (2022). The choice of demand structure has first-order effects on the welfare calculation and the magnitude of the misallocation loss.

---

## III. The Government Budget Constraint is Missing

**The problem.** The local government pays a subsidy of $\phi s_{r,t}$ per unit of capital to NEV firms in its region, lowering their effective capital cost from $r_t$ to $r_t - \phi s_{r,t}$. This subsidy must be financed. The memo introduces a household transfer $T_t$ that "clears the government budget" but never specifies the budget constraint itself. Key questions are unanswered:

- Who finances the subsidy—the local government, the central government, or both?
- Is the fiscal cost $\phi s_{r,t} K_{r,t}^N$ (the per-unit subsidy times the stock of capital in NEV) or is it the ad hoc convex term $\frac{\kappa}{2} s_{r,t}^2$ in the local government objective?
- If the local government bears the cost, what are its revenue sources? In China, local revenue comes from land transfers, shared taxes, and central transfers—none of which are modeled.
- Is there a government borrowing constraint? In China, local governments used off-balance-sheet LGFVs to finance industrial subsidies. This creates fiscal sustainability constraints that are central to the overcapacity story.

**Why it matters.** The government budget constraint directly affects the local government's optimal policy. If a local government faces a hard fiscal constraint, it cannot sustain indefinite subsidization. If it can borrow freely (as many Chinese local governments did via LGFVs), the intertemporal cost of subsidies is shifted to future periods and the overcapacity problem is amplified. Omitting the budget constraint also means the welfare comparison between planner and decentralized allocations is incomplete, because the planner must respect the same aggregate resource constraint.

**Recommended fix.** Write down an explicit government budget identity at both the local and national levels:

$$\text{LocalGovRevenue}_{r,t} - \phi s_{r,t} K_{r,t}^N = B_{r,t+1} - (1+r_t^g) B_{r,t}$$

where $B_{r,t}$ is local government debt and $r_t^g$ is the borrowing rate. This interacts with the household budget constraint through the transfer $T_t$, which should equal the net fiscal position of the consolidated government. Adding a borrowing limit $B_{r,t} \leq \bar{B}_r$ captures fiscal discipline and generates a natural mechanism for policy reversal that is more economically grounded than the ad hoc adjustment cost.

**Supporting literature.** The interaction between local fiscal constraints and industrial policy in China is studied empirically by Bai, Lu, and Tian (2018) and Geng and Pan (2022), and theoretically by Bi and Leeper (2013) for fiscal limits in DSGE models. The role of land finance and LGFV debt in sustaining local industrial subsidies is documented by Chen, He, and Liu (2020, *Review of Financial Studies*). The absence of a government budget constraint is a standard critique of industrial-policy models: see Aghion et al. (2015) for a formal treatment.

---

## IV. The Local Government Objective Function is Ad Hoc

**The problem.** The local government maximizes:

$$\max_{\{s_{r,t}\}} \sum_{t=0}^{\infty} \beta_g^t \left[ \omega_Y Y_{r,t}^N + \omega_I I_{r,t}^H + \omega_E L_{r,t}^N + \omega_T Tax_{r,t} - \frac{\kappa}{2}s_{r,t}^2 - \frac{\chi_s}{2}(s_{r,t}-s_{r,t-1})^2 \right]$$

This formulation contains several interrelated problems:

**IV.1. Double-counting in the objective.** The government simultaneously values output $Y_{r,t}^N$, investment $I_{r,t}^H$, and employment $L_{r,t}^N$. But investment expenditure is a component of output in GDP accounting, and employment generates the labor input that produces output, which generates taxes. The weights $\{\omega_Y, \omega_I, \omega_E, \omega_T\}$ are therefore not independent, and their joint presence inflates the government's marginal incentive to subsidize relative to any internally consistent objective derived from economic primitives. This makes the model's predictions of over-subsidization partly an artifact of specification, not a structural result.

**IV.2. The policy cost term is misspecified.** The term $\frac{\kappa}{2} s_{r,t}^2$ represents the cost of the policy instrument itself as a quadratic function of the instrument level, not the actual fiscal cost of the subsidy. The true fiscal cost is $\phi s_{r,t} K_{r,t}^N$: the per-unit subsidy times the total capital stock subsidized. A quadratic cost in $s_{r,t}$ alone conflates instrument intensity with fiscal cost in a way that severs the link between capital accumulation and the government's budget. For example, as capital flows into the region ($K_{r,t}^N$ rises), the actual cost of the policy rises, which should feed back into the government's incentive to reduce $s_{r,t}$. The current specification breaks this feedback.

**IV.3. Discount factor $\beta_g \neq \beta$ is unmotivated.** The local government discounts at $\beta_g$ while households discount at $\beta$. The paper does not explain why these differ. The standard political economy rationale—that officials with finite tenure over-weight short-term outcomes—should be explicitly modeled. If $\beta_g < \beta$, the government is myopic. This is a substantive assumption about political economy frictions that deserves its own microfoundation, not just a parameter.

**IV.4. No consumption term.** Chinese local government performance evaluations are partly based on GDP growth, which includes consumption, not just production, investment, and employment separately. The exclusion of household consumption from the local objective is not well-motivated and understates the alignment between local and national objectives in good states.

**Recommended fix.** Derive the local government's objective from a political economy model with explicit microfoundations. Following Maskin, Qian, and Xu (2000) and Blanchard and Shleifer (2001) on Chinese fiscal federalism, or the M-form hierarchy literature, the government's objective can be grounded in:
- An official's career concerns under a tournament promotion system (Yao and Zhang, 2015; Li and Zhou, 2005), which delivers short-termism and overweighting of measurable performance metrics like investment and output.
- A fiscal federalism objective where local governments maximize local tax revenues, which requires specifying tax instruments and base (Oates, 1972; Tiebout, 1956).

At minimum, replace $\frac{\kappa}{2} s_{r,t}^2$ with the true fiscal cost $\phi s_{r,t} K_{r,t}^N$ plus a convex cost of deficit financing.

**Supporting literature.** Maskin, Qian, and Xu (2000, *QJE*), Li and Zhou (2005, *AER*), Yao and Zhang (2015, *JDE*) on Chinese official incentives; Blanchard and Shleifer (2001, *NBER*) on fiscal federalism and industrial policy; Aghion, Cai, Dewatripont, Du, Harrison, and Legros (2015, *AEJ: Macroeconomics*) on government objectives in industrial policy models.

---

## V. The Learning-by-Doing Specification Contains Technical Errors

**The problem.** The NEV technology law of motion is:

$$A_{r,t+1}^N = (1-\delta_A)A_{r,t}^N + \psi_L(Q_{r,t}^N)^\nu + \psi_G(\bar Q_t^N)^\nu$$

where $\bar Q_t^N = \sum_r Q_{r,t}^N$.

**V.1. Double-counting of local production in the global spillover.** Since $\bar Q_t^N = Q_{r,t}^N + \sum_{r' \neq r} Q_{r',t}^N$, region $r$'s own output enters both the local learning term $\psi_L(Q_{r,t}^N)^\nu$ and the national spillover term $\psi_G(\bar Q_t^N)^\nu$. This means the marginal return to local production in terms of technology accumulation is $\nu \psi_L (Q_{r,t}^N)^{\nu-1} + \nu \psi_G (\bar Q_t^N)^{\nu-1}$, which double-counts the local learning effect. The national spillover should be defined as $\psi_G\left(\sum_{r' \neq r} Q_{r',t}^N\right)^\nu$ to isolate the externality from other regions' production.

**V.2. Technology depreciation is conceptually problematic.** The term $(1-\delta_A) A_{r,t}^N$ allows technology to depreciate. Knowledge depreciation is a strong and largely unsupported assumption. Unlike physical capital, technological knowledge generally does not wear out—it may become obsolete due to better technologies arriving elsewhere, but that is a relative concept, not an absolute decay. If the intent is to model technological catch-up by other regions or the fading of competitive advantage, the appropriate formulation is knowledge diffusion or technology convergence, not exogenous depreciation. Arrow's (1962) original learning-by-doing model has no knowledge depreciation; neither do Thompson (2012), Juhász (2018), or Lane (2022) in their policy-relevant extensions.

**V.3. No diminishing returns to learning as the industry matures.** The learning function $\psi_L(Q_{r,t}^N)^\nu$ generates the same marginal learning per unit of output regardless of the current technology level $A_{r,t}^N$. This misses the key empirical regularity that learning rates decline as an industry matures: the Wright's Law relationship $\Delta c = -b \cdot \Delta Q^{-b}$ exhibits diminishing rates for large cumulative production. The paper's central argument—that policy is beneficial early but costly later—requires that the marginal benefit of learning (captured by $d A_{r,t+1}^N / d Q_{r,t}^N$) declines as the state $A_{r,t}^N$ rises. The current specification does not deliver this unless $\nu < 1$, but even then, the technology level does not enter the learning rate, so the state-contingency of the externality is not formally delivered.

**V.4. Supply-chain coordination $S_t^N$ is in the state vector but never modeled.** Section 3 lists $S_t^N$ as a component of the state $Z_t$, and Section 7 mentions it verbally. But no law of motion for $S_t^N$ is ever written down. Either it should be absorbed into $A_{r,t}^N$ (justified by noting that supply-chain coordination is reflected in aggregate technology) and removed from the state vector, or it should be modeled explicitly with its own accumulation equation, externality, and planner response.

**Recommended fix.** Replace the current specification with:

$$A_{r,t+1}^N = A_{r,t}^N + \psi_L \cdot f(A_{r,t}^N) \cdot (Q_{r,t}^N)^\nu + \psi_G \cdot g(A_{r,t}^N) \cdot \left(\sum_{r' \neq r} Q_{r',t}^N\right)^\nu$$

where $f(\cdot)$ and $g(\cdot)$ are decreasing functions of the current technology level, capturing diminishing returns to learning as the industry matures. This directly delivers the state-contingency that is the paper's central conceptual contribution.

**Supporting literature.** Arrow (1962, *RES*); Thompson (2012, *QJE*) on learning-by-doing without convexity; Juhász (2018, *QJE*) on temporary protection and learning in historical data; Lane (2022, *JIE*) on industry-level learning in Korean industrial policy; Benkard (2000, *AER*) on learning and forgetting in aircraft production; Gillingham et al. (2022) on learning curves for energy technologies.

---

## VI. The Planner Problem Compares the Wrong Benchmarks

**The problem.** The memo frames the main welfare comparison as decentralized allocation $W^D$ versus first-best planner allocation $W^P$. This comparison, while conceptually clean, is not the right benchmark for policy evaluation for two reasons:

**VI.1. The first-best planner is not implementable.** The paper's planner chooses allocations directly—quantities, capital stocks, and capacity levels—subject to feasibility constraints. But in a decentralized economy with privately-owned firms, the planner cannot directly set capital stocks or production levels; it can only use policy instruments (subsidies, taxes, permits, quotas). The relevant comparison for policy reform is a second-best constrained planner who chooses $\{s_{r,t}^P\}$ to maximize national welfare, taking the decentralized firm and household optimization as constraints. The first-best allocation is only achievable if the planner has access to lump-sum taxes and complete information about each firm's productivity. Given the informational environment emphasized throughout the memo, this is an unreasonable benchmark.

The gap between first-best and second-best welfare is itself an important quantity—it measures how much of the first-best cannot be achieved even with centralized optimal instruments. By omitting this, the paper overstates the potential gains from centralizing policy.

**VI.2. The planner internalizes externalities but not political constraints.** The planner problem in Section 9 internalizes national learning externalities and cross-sector MPK gaps. But it does not face the same political economy constraints as local governments: fiscal limits, career concerns, interregional competition, or information asymmetry about local states. The welfare comparison therefore conflates the costs of externalities (which are genuine economic inefficiencies) with the costs of political frictions (which require different interventions). A cleaner approach, following Chari and Kehoe (1999) on time-consistency in policy, would decompose the welfare loss into these components.

**Recommended fix.** Add a constrained-optimal policy analysis: let the central government choose $\{s_{r,t}^P\}_{r=1}^R$ optimally, with firms and households best-responding. This is the relevant policy reform. The comparison of $W^{D}$ versus $W^{CP}$ (constrained planner) versus $W^{P}$ (first-best) delivers a cleaner decomposition of welfare losses and is closer to the literature on corrective policy in the presence of externalities (Pigou taxes in dynamic settings, as in Golosov et al., 2014, or Acemoglu et al., 2012).

**Supporting literature.** Chari and Kehoe (1999, *Handbook of Macroeconomics*) on first-best vs. second-best policy; Farhi and Gabaix (2020, *JPE*) on optimal corrective taxation; Golosov, Hassler, Krusell, and Tsyvinski (2014, *Econometrica*) on optimal dynamic Pigouvian policy with externalities; Acemoglu, Aghion, Bursztyn, and Hemous (2012, *AER*) on directed technical change and second-best environmental policy.

---

## VII. The Labor Market is Internally Inconsistent

**The problem.** The household supplies labor and receives wage $w_t$ (no regional subscript). But firm profit functions use regional wages $w_{r,t}$ (with subscript). The equilibrium definition in Section 10 lists $w_{r,t}$ as an equilibrium object, implying region-specific labor markets. But the household's labor supply condition $\chi L_t^\varphi = w_t C_t^{-\sigma}$ uses a single aggregate wage, implying a national labor market.

These cannot both be true simultaneously unless the model takes an explicit position on labor mobility. Three consistent alternatives exist:

- **Full mobility**: labor flows freely across regions until $w_{r,t} = w_t$ for all $r$. Then regional wage differences reflect equilibrium sorting of heterogeneous firms, not labor market segmentation. But this eliminates the regional employment channel from the local government objective.
- **No mobility**: each region has its own representative household with its own labor supply. Then the household block needs to be replicated $R$ times, and the national aggregate household block is a sum, not a single optimization. The local government's employment objective is more naturally motivated.
- **Partial mobility (preferred)**: include migration costs or a Hukou-style constraint that creates persistent regional wage gaps. This is empirically relevant for China and would generate spatial wage dispersion consistent with the data. See Tombe and Zhu (2019) on trade costs and labor misallocation across Chinese regions.

**The implication for the government objective.** The local government objective includes $\omega_E L_{r,t}^N$, valuing local NEV employment. If labor is nationally mobile, additional NEV jobs in region $r$ come partly at the expense of jobs elsewhere, and the local government's private gain (more local employment) does not correspond to a social gain (same total employment reallocated). This would make the local employment externality an important driver of over-subsidization that the current model does not cleanly formalize.

**Supporting literature.** Tombe and Zhu (2019, *AER*) on labor market integration and misallocation in China; Caliendo, Dvorkin, and Parro (2019, *Econometrica*) on the labor market effects of trade and spatial frictions; Brandt, Tombe, and Zhu (2013, *RED*) on factor market distortions across Chinese regions.

---

## VIII. The Nash Equilibrium among Local Governments Is Underdetermined

**The problem.** Section 8 states that local governments play a Markov-Nash equilibrium: $s_{r,t}^D = BR_r(s_{-r,t}^D; Z_{r,t}, Z_t)$. Several critical properties of this game are neither derived nor discussed:

**VIII.1. Strategic complementarity vs. substitutability.** The competitive structure of the game among local governments is the paper's core mechanism—it drives the "race to the bottom" in subsidies. But whether local policies are strategic complements or substitutes has not been established. If regions compete for the same mobile capital, policies are strategic complements (each region increases its subsidy in response to others' subsidies), generating a multiplier effect that amplifies over-subsidization. If regions compete for market share in a fixed demand market, more subsidization by one region reduces the other regions' incentive to subsidize (strategic substitutes). The welfare implications differ sharply. This is an analytically tractable question for a two-region symmetric version of the model and should be resolved before numerical implementation.

**VIII.2. Uniqueness of the Nash equilibrium.** No conditions for existence or uniqueness of the Nash equilibrium are stated. With $R$ local governments and heterogeneous states $Z_{r,t}$, multiple equilibria are plausible. If the game has multiple equilibria, the mapping from policy parameters to outcomes is not well-defined, and the counterfactuals in Section 13 are undetermined.

**VIII.3. The timing of the game.** The simultaneous-move assumption is stated but not defended. In practice, Chinese provincial governments observe each other's industrial plans before finalizing their own. A sequential or iterative-best-response game might generate different equilibrium policies and more realistic policy dynamics.

**Recommended fix.** For the analytical model (Step 1 in the implementation strategy), solve the two-region symmetric game explicitly and characterize the sign of $\partial BR_r / \partial s_{-r,t}$, which determines complementarity. Use this to prove that $s_r^D > s_r^P$ in a Proposition with explicit sufficient conditions. Establish uniqueness using a contraction or monotone comparative statics argument (Milgrom and Roberts, 1990; Acemoglu and Jensen, 2015).

**Supporting literature.** Milgrom and Roberts (1990, *Econometrica*) on supermodular games; Acemoglu and Jensen (2015, *JET*) on robust comparative statics in large dynamic economies; Bucovetsky (1991) and Wilson (1999) on tax competition games; Janeba and Peters (1999) on tax competition with multiple public goods.

---

## IX. Propositions Lack Proofs and Some Are Trivially True

**The problem.** Six propositions are stated in Section 11. Their logical status varies considerably:

**Propositions 3 and 4** (that policy raises capital and lowers entry threshold; that overcapacity lowers prices) follow directly from the definitions of the policy wedge $R_{r,t}^N = r_t - \phi s_{r,t}$ and the inverse demand function $P_t^N = \mathcal{D}(Q_t^N)$. They are comparative statics on model primitives, not equilibrium results. They do not require an equilibrium analysis to prove and should be relegated to lemmas or labeled as "direct implications of the setup."

**Proposition 1** (that policy can be welfare-improving for high enough learning externalities) is trivially true but also not informative. Of course large externalities justify policy. The economically interesting question is: under what conditions on the *state vector* $(A_t^N, H_t^N, D_t^N)$ does policy remain welfare-improving? The paper's central contribution is state-contingency; the Proposition should characterize the policy-relevant frontier in state space, not just assert that a parameter threshold exists.

**Proposition 2** (that $s_{r,t}^D > s_{r,t}^P$) is the core result but the proof is absent. The conditions "$H_t^N > D_t^N$ or $MPK_t^N < MPK_t^O$" are asserted as amplifiers of the wedge, but no formal argument is given. A planner would reduce $s^P$ when these conditions hold because the marginal cost of subsidization exceeds the learning benefit; a local government would not, because it doesn't internalize national idle capacity. The proof requires characterizing both the planner's and local government's first-order conditions and showing the relevant inequality. This is the paper's most important analytical result and currently has no formal support.

**Proposition 6** (that policy exits too slowly) is stated as $|\Delta s_{r,t}^P| > |\Delta s_{r,t}^D|$, but this is a property of the partial-adjustment rule, not an equilibrium result. If $\rho_s$ is a fixed parameter, the proposition is just a restatement of the assumption that the adjustment cost generates inertia. To be substantive, the proposition should endogenously derive the equilibrium exit speed from first principles and show why local governments rationally choose slower adjustment—because they internalize the local employment and fiscal costs of rapid exit, even if they do not internalize national overcapacity.

**Recommended fix.** For each proposition, either provide a formal proof (for the static two-region case) or clearly label it as a conjecture pending numerical verification. Proposition 2 in particular should be proven analytically for the baseline symmetric case before quantitative work begins.

---

## X. Quantification Faces Severe Identification Challenges

**The problem.** Section 12 proposes to identify the model by matching eight moment conditions. Several of these face serious identification challenges:

**X.1. Endogeneity of policy.** The paper's empirical backbone requires estimating "policy-entry elasticity" and "policy-investment elasticity" from regional variation in $s_{r,t}$. But local policy is endogenous: regions that receive more favorable central government support or that have better pre-existing industrial bases are both more likely to receive high $s_{r,t}$ and to have higher entry and investment independently. The instrument must isolate exogenous variation in policy. The memo does not discuss identification strategy for the empirical moments.

**X.2. Learning parameter identification.** The learning externality parameters $(\psi_L, \psi_G, \nu)$ must be identified from the data. Moment 6 proposes to "estimate whether cumulative NEV production predicts future productivity." But cumulative production is correlated with all other state variables (technology, demand, capacity), making separate identification of local versus national spillover parameters ($\psi_L$ vs. $\psi_G$) extremely challenging without regional discontinuities or natural experiments in policy rollout.

**X.3. Government objective weights.** The four weights $(\omega_Y, \omega_I, \omega_E, \omega_T)$ appear in the government's objective but are not listed as targeted moments. Without discipline from the data, these are free parameters that can rationalize essentially any observed policy path. They should be either estimated from observable government behavior (revealed preference from policy variation) or set to match specific observable moments such as the elasticity of policy to lagged employment or investment.

**X.4. Adjustment cost parameter identification.** The policy adjustment cost $\chi_s$ and the persistence parameter $\rho_s$ determine the speed of policy exit (Proposition 6). Moment 7 proposes to "estimate whether local policy support declines slowly after utilization falls." But policy persistence could reflect either adjustment costs or rational forward-looking behavior by local governments anticipating future demand recovery. Without an external instrument for demand shocks, these two mechanisms are not separately identified.

**Recommended fix.** Write a formal identification section before quantification. For the empirical moments, propose specific identification strategies: (a) an industry-specific Bartik shift-share instrument (Goldsmith-Pinkham et al., 2020) using national-level policy shocks interacted with pre-period regional industrial structure; (b) regression discontinuity designs around central government designation of "NEV demonstration cities" as instruments for policy intensity; (c) the fact that China's Five-Year Plan cycles generate plausibly exogenous variation in the intensity and timing of NEV support across regions.

**Supporting literature.** Goldsmith-Pinkham, Sorkin, and Swift (2020, *AER*) on shift-share instruments; Barwick, Kalouptsidi, and Zahur (2021) on identification of Chinese shipbuilding subsidies; Berry, Levinsohn, and Pakes (1995) on demand estimation and instruments; Su and Judd (2012, *Econometrica*) on constrained optimization approaches to structural estimation.

---

## XI. China-Specific Institutional Features Are Poorly Captured

**The problem.** The paper's empirical setting is China's NEV sector, but the model abstracts from several features of China's political economy and industrial structure that are first-order for the mechanisms of interest:

**XI.1. State-owned enterprises.** A significant share of NEV production in China involves SOEs or hybrid firms with government ownership stakes (e.g., BAIC, SAIC, FAW, BYD's early phase). SOEs may have objectives other than profit maximization—they may be mandated to maintain employment, pursue market share, or support political goals. Treating all firms as profit-maximizing misses this heterogeneity, which affects the composition of entry, the productivity distribution, and the speed of exit.

**XI.2. Trade and export relief valves.** Chinese NEV firms have increasingly exported to Southeast Asia, Europe, and Latin America. The closed-economy assumption means all overcapacity must manifest as lower domestic prices and profits. In an open economy, some excess capacity is absorbed by export demand, which changes the domestic welfare calculation. The current framing also cannot speak to the recent geopolitical response to Chinese NEV exports (EU tariffs in 2024), which is one of the most policy-relevant dimensions of the story.

**XI.3. Financial frictions and credit allocation.** Chinese NEV firms received subsidized credit from state-owned banks, not just direct fiscal subsidies. Capital misallocation in China is documented to be substantially driven by distorted credit rather than pure entry/exit wedges (Hsieh and Klenow, 2009; Song, Storesletten, and Zilibotti, 2011). The policy wedge $R_{r,t}^N = r_t - \phi s_{r,t}$ captures subsidized capital costs, but the financial friction channel (collateral constraints, zombie firm lending, soft budget constraints) is absent. This matters because soft budget constraints for NEV firms are a key mechanism through which local governments sustain subsidization even when firms are loss-making.

**XI.4. Hukou and spatial labor immobility.** China's Hukou system restricts labor mobility across provinces, generating persistent regional wage gaps and limiting the extent to which industrial policy generates spatial reallocation of workers. This is directly relevant for the local government objective: if labor is immobile, policies that generate local jobs have a higher social value from the perspective of regional welfare even if national welfare is unchanged. The model's treatment of a single aggregate labor market is inconsistent with China's well-documented spatial labor market segmentation.

**Supporting literature.** Song, Storesletten, and Zilibotti (2011, *AER*) on credit misallocation and the rise of China; Hsieh and Song (2015, *Brookings Papers*) on productivity and the allocation of resources in China; Tombe and Zhu (2019, *AER*) on trade costs and labor misallocation in China; Hanson and Tombe (2022) on spatial economics of Chinese industrial policy.

---

## XII. Missing and Undercited Literature

The paper's literature positioning (Section 2) is selective. The following strands are directly relevant but missing:

**On industrial policy and learning:**
- Juhász (2018, *QJE*): "Temporary Protection and Technology Adoption: Evidence from the Napoleonic Blockade." The most credible quasi-experimental estimate of industrial-policy learning effects. A JMP on industrial policy and learning must engage with this paper.
- Lane (2022, *JIE*): "Manufacturing Revolutions: Industrial Policy and Industrialization in South Korea." Provides the best dynamic model of industrial policy with learning in the quantitative literature and is a direct methodological comparator.
- Aghion, Cai, Dewatripont, Du, Harrison, and Legros (2015, *AEJ: Macro*): "Industrial Policy and Competition." Establishes theoretically that industrial policy can be welfare-improving under imperfect competition but that competition within the targeted sector is crucial. Directly relevant to the NEV oligopoly setting.

**On misallocation and policy distortions:**
- Restuccia and Rogerson (2008, *RED*): "Policy Distortions and Aggregate Productivity with Heterogeneous Establishments." The foundational theoretical paper on how idiosyncratic distortions generate TFP losses. Must be cited.
- Bai, Hsieh, and Song (2016, *NBER*): "The Long Shadow of China's Fiscal Expansion." Documents how China's 2008 stimulus generated misallocation through local government investment.
- Chen, He, and Liu (2020, *RFS*): "The Financing of Local Government in China." Documents LGFV-based financing of industrial subsidies.

**On spatial policy:**
- Fajgelbaum, Morales, Suárez Serrato, and Zidar (2019, *QJE*): "State Taxes and Spatial Misallocation." The closest structural analog to the paper's multi-region policy competition problem in the U.S. context.
- Moretti and Wilson (2017, *AER*): "The Effect of State Taxes on the Geographical Location of Top Earners." On spatial tax competition and firm location.

**On NEV and EV specifically:**
- Murry and Zhu (2022): "Price and Quality Dispersion in an Oligopoly: Evidence from the China Automobile Market." Critical for understanding demand-side dynamics.
- Peters, Eisenberger, and Hertwich (2012); Gillingham et al. (2022): on Wright's Law and learning curves for battery and EV technologies.

---

## XIII. Summary Assessment and Priority Revisions

The following issues should be addressed in priority order before the paper can be placed at a top-five journal or earn a top-tier placement:

**Priority 1 (Foundational—must fix before writing code):**
- Resolve the capital/capacity double-stock ambiguity (Section I above).
- Specify and enforce a government budget constraint (Section III).
- Correct the learning-by-doing double-counting and depreciation (Section V.1, V.2).

**Priority 2 (Core results—necessary for the welfare analysis):**
- Choose a single demand system, either CES-derived or Melitz-style monopolistic competition (Section II).
- Prove Proposition 2 analytically for the symmetric two-region case (Section IX).
- Separate first-best from second-best/constrained-optimal planner (Section VI).

**Priority 3 (Identification and quantification):**
- Write a formal identification section and specify instruments for the empirical moments (Section X).
- Replace ad hoc government objective weights with empirically disciplined estimates (Section IV).
- Address the labor market consistency between national and regional wages (Section VII).

**Priority 4 (Extensions with high marginal value):**
- Add soft budget constraints and financial frictions for SOEs and state banks (Section XI.3).
- Add a trade/export sector to allow domestic overcapacity to manifest in export prices (Section XI.2).
- Characterize the strategic form of the local government game (Section VIII).

---

*Prepared as a professional academic review for a JMP memo. All proposed changes are intended to strengthen the paper's contribution and improve its readiness for top-five journal submission.*
