# Code

No numerical implementation exists yet.

The currently planned implementation language is Julia. Create the Julia
environment only after the baseline two-region equilibrium is closed and the
timing conventions are recorded in the active model notes.

When implementation begins:

- track `Project.toml` and `Manifest.toml`;
- keep one documented entry script;
- separate model primitives, equilibrium residuals, solvers, calibration, and
  counterfactuals;
- add tests for accounting identities, first-order conditions, solver
  convergence, and decentralized/planner comparisons;
- write generated results only to `../outputs/`.
