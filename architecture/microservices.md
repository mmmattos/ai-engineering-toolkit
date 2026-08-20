# Microservices Architecture

> Design and review production microservices architectures with clear service boundaries and operational characteristics.

# Purpose

Design services around business capabilities and explicit ownership.

Consider:

- service boundaries and responsibilities
- data ownership
- synchronous versus asynchronous communication
- API and event contracts
- service discovery
- failure isolation
- retries, timeouts, and circuit breaking
- observability
- deployment and versioning
- security
- operational complexity

Avoid decomposing a system into services merely because it is technically possible. Prefer boundaries that reduce coupling and allow independent evolution.

When reviewing an existing architecture, identify distributed-system costs and determine whether each service boundary is justified.
