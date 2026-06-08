# Module 8: Extensions (Outside Baseline)

## Warning: Important rule

> **None of the content in this module should enter the baseline macro GE model
> until the core decentralized-policy-misallocation mechanism is fully solved,
> calibrated, and producing stable results.**

This module stores extensions that are planned but not yet in the baseline.

---

## 1. Supply chain IO [Extension — not baseline]

Extend the model to include a production network:
upstream battery/materials firms → midstream component firms → downstream OEMs.

Purpose: Capture how the policy wedge at the OEM level propagates upstream.
Reference: Liu (2019, QJE) on industrial policies in production networks.

Requires: Input-output structure, supplier-OEM relationships, intermediate goods prices.

---

## 2. Differentiated demand: BLP [Extension — not baseline]

Replace the inverse demand function $P^N = \mathcal{D}(Q^N)$ with a BLP-type
differentiated product demand system.

Purpose: Capture product-level competition among NEV brands.
Reference: Berry, Levinsohn, Pakes (1995).

Requires: Vehicle-level price and characteristic data, market share data.

---

## 3. Soft budget constraint [Extension — not baseline]

Add an explicit soft budget constraint: local government bails out
loss-making firms above a threshold size (zombie firm mechanism).

Purpose: Explain why capacity exit is even slower than $\chi_s$ alone predicts.
Reference: Caballero, Hoshi, Kashyap (2008, AER) on zombie firms.

---

## 4. International trade [Extension — not baseline]

Add a rest-of-world market for NEV exports.

Purpose: Capture how domestic overcapacity drives export surges.
Relevant for welfare calculation: if overcapacity is absorbed by exports,
domestic welfare calculation changes.

---

## 5. Financial frictions [Extension — not baseline]

Add borrowing constraints on firm-level investment.

Purpose: Capture the role of local government credit support
(policy banks, directed credit) as a form of relaxing constraints.

---

## 6. When to consider promoting to baseline

An extension should be promoted to the baseline only when:
1. The core model is solved and producing stable quantitative results.
2. The extension is necessary to match a key empirical pattern
   that the baseline cannot explain.
3. The extension does not fundamentally change the core mechanism.
