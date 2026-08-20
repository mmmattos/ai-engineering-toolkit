# Saga Pattern

> Design reliable distributed workflows without relying on a single distributed transaction.

# Purpose

Model a business transaction as a sequence of local transactions coordinated through explicit state transitions and compensating actions.

Consider:

- transaction boundaries
- orchestration versus choreography
- compensating actions
- retries
- idempotency
- timeouts
- partial failure
- state persistence
- observability
- recovery and reconciliation

Make compensation semantics explicit. A compensating action is a business operation, not necessarily a technical rollback.
