# Test source provenance

This repository is an isolated public canary owned by
`gha-indie-worker-test`. It is not a deployment source and must not receive
production credentials or production network authority.

- Canonical source: `gha-indie-worker/gha-indie-worker.rs`
- Imported branch: `dev`
- Imported commit: `775fd8cf50c5444dd230afb1436651e6ba1d5671`
- Test-only additions: the fail-closed test-organization manifest, its
  digest-bound isolation workflow, separate native and fixed-profile custom
  meta workflows, a dated workflow-policy exception for the profile-owned
  timeout, and a dated isolation exception for a non-resolving test-org URL in
  the protocol-format fixture

Execution through the custom clone/worker lane must bind this repository to a
full immutable commit SHA, an exact allowlisted workflow path, and a fixed
reviewed profile.
