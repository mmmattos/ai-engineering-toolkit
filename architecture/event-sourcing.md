# Event Sourcing

> Design systems where domain state can be reconstructed from an ordered history of domain events.

# Purpose

Evaluate whether event sourcing is appropriate for the problem before introducing it.

Consider:

- domain events
- event store
- aggregate boundaries
- event ordering
- replay
- snapshots
- schema evolution
- projections
- concurrency control
- audit requirements
- storage growth
- operational complexity

Treat events as durable business facts. Do not confuse event sourcing with ordinary event publication or logging.
