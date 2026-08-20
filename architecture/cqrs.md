# CQRS

> Design systems that deliberately separate command processing from query/read models when their responsibilities or scaling characteristics differ.

# Purpose

Use CQRS when read and write workloads, models, consistency requirements, or evolutionary needs justify the separation.

Consider:

- command ownership
- validation and business rules
- read models
- synchronization between models
- eventual consistency
- projections
- rebuilding read models
- transactional boundaries
- operational complexity

Do not introduce CQRS simply to separate classes. Explain the concrete problem that the separation solves.
