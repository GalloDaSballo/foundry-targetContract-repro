# `targetContract(address(this));` doesn't work

This prevents foundry from being used in a wide set of common invariant testing suites

## Suggested change

Allow `targetContract(address(this))` to:
- Use all functions for state exploration
- Use `invariant_` for invariant testing