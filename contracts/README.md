# Contract peer-authority canary

This `*-test` repository intentionally exercises the fleet split-lane contract layout:

- `contracts/typespec/worker-canary.tsp` is independently authored TypeSpec authority A.
- `contracts/json-schema/worker-canary.schema.json` is independently authored JSON Schema Draft 2020-12 authority B.

Neither source is generated from, subordinate to, or allowed to overwrite the other. The canonical TJSV lane compiles TypeSpec to a third JSON Schema document only as comparison evidence, then compares that generated witness with the independently authored JSON Schema and executes both validators over probe instances. Generated Schema B, Contract IR, parity reports, and verification receipts are evidence rather than authorities.

The CI canary proves both directions fail closed: an authored-JSON-only semantic drift and a TypeSpec-only semantic drift must each stop TJSV with exit code `2`. The source authorities must remain byte-unchanged after every run.
