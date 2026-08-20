# API Gateway

> Design API gateway architectures that provide a controlled boundary between clients and backend services.

# Purpose

Evaluate what responsibilities belong at the gateway and what should remain inside backend services.

Consider:

- routing
- authentication and authorization
- rate limiting
- TLS termination
- request transformation
- aggregation
- versioning
- caching
- observability
- resilience
- security

Avoid turning the gateway into a monolithic business-logic layer. Keep domain behavior in the appropriate backend components.
