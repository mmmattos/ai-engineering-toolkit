# Test

> Design focused, reliable tests that verify software behavior and protect against regressions.

# Purpose

Create tests that provide confidence in the behavior that matters without coupling unnecessarily to implementation details.

# Prompt

## Behavior

Identify the behavior, contract, or requirement that needs to be verified.

## Coverage

Consider normal paths, boundaries, invalid inputs, failure cases, and important integration boundaries.

## Isolation

Use mocks, fakes, or stubs only where they provide a meaningful boundary. Prefer real behavior when practical.

## Regression

When addressing a defect, create a test that fails before the fix and passes afterward.

## Maintainability

Keep tests deterministic, readable, independent, and easy to diagnose when they fail.

# Expected Output

## Test Strategy

Explain what should be tested and why.

## Tests

Provide the focused tests required.

## Gaps

Identify important scenarios that remain untested.

# Engineering Principles

- Test behavior rather than implementation details.
- Prefer deterministic tests.
- Keep tests independent.
- A test should provide useful diagnostic information when it fails.
