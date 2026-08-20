# Event-Driven Architecture

> Design reliable event-driven systems using asynchronous communication and well-defined event contracts.

# Purpose

Design systems where events represent meaningful business facts and enable loosely coupled components.

Consider:

- event ownership and contracts
- producers and consumers
- brokers and delivery semantics
- ordering and partitioning
- idempotency
- retries and dead-letter handling
- schema evolution
- eventual consistency
- replay and recovery
- observability
- exactly-once versus at-least-once trade-offs

Keep commands and events conceptually distinct. Treat event schemas as contracts that evolve over time.
