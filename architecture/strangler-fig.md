# Strangler Fig Architecture

> Modernize legacy systems incrementally by introducing new capabilities around the existing system and progressively moving functionality.

# Purpose

Design modernization paths that reduce risk without requiring a single large migration.

Consider:

- system boundaries
- traffic routing
- capability extraction
- data ownership
- synchronization
- coexistence
- migration sequencing
- observability
- rollback
- decommissioning

Prefer vertical slices that deliver useful capabilities while reducing dependency on the legacy system.

Make the end-state architecture explicit so the migration does not become permanent architectural ambiguity.
