# Test source provenance

This repository is an isolated public canary owned by
`gha-indie-worker-test`. It is not a deployment source and must not receive
production credentials or production network authority.

- Canonical source: `gha-indie-worker/gha-indie-worker.rs`
- Imported branch: `dev`
- Imported commit: `e39c00bb86f625ef3ccb8343fd693f88e382e3e7`
- Test-only additions: the fail-closed test-organization manifest, its
  digest-bound isolation workflow, separate native and fixed-profile custom
  meta workflows, a dated workflow-policy exception for the profile-owned
  timeout, and a synthetic `.invalid` repository URL in the protocol fixture

Execution through the custom clone/worker lane must bind this repository to a
full immutable commit SHA, an exact allowlisted workflow path, and a fixed
reviewed profile.
