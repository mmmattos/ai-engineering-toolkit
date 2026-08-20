# Hexagonal Architecture

> Design software around a stable domain core isolated from external technologies through ports and adapters.

# Purpose

Keep business rules independent from databases, frameworks, messaging systems, HTTP, and other infrastructure.

Consider:

- domain responsibilities
- inbound ports
- outbound ports
- adapters
- dependency direction
- dependency injection
- testability
- transaction boundaries

Do not introduce interfaces simply to satisfy a pattern. Create ports where they represent meaningful boundaries between the domain and external concerns.
