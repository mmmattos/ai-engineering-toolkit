# Simplify

> Reduce unnecessary complexity while preserving behavior, clarity, and architectural intent.

# Purpose

Identify code or design complexity that makes software harder to understand, test, operate, or change.

# Prompt

## Complexity

Look for unnecessary abstractions, indirection, duplication, branching, configuration, and framework machinery.

## Readability

Prefer straightforward control flow, meaningful names, and small cohesive units.

## Abstractions

Determine whether interfaces and layers represent real boundaries or merely add ceremony.

## Behavior

Preserve existing behavior unless simplification explicitly requires a change.

## Trade-offs

Do not simplify by removing necessary validation, resilience, security, or domain behavior.

# Expected Output

## Findings

Identify the sources of unnecessary complexity.

## Simplified Design

Show the simpler structure or implementation.

## Trade-offs

Explain what is preserved and what changes.

# Engineering Principles

- Prefer the simplest solution that satisfies the requirements.
- Remove accidental complexity before adding abstractions.
- Do not trade correctness or resilience for superficial simplicity.
- Make code easy to read before making it clever.
