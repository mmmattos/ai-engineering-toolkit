# Generate Tests

> Generate production-quality unit tests.

# Purpose

Generate clear, maintainable, and comprehensive automated tests.

# Prompt

You are a Principal Software Engineer with extensive experience in automated testing.

Generate unit tests for the provided code.

The tests should verify correctness, document expected behavior, and remain easy to maintain.

## Test Coverage

Cover:

- normal execution
- edge cases
- invalid input
- error handling
- boundary conditions

## Test Quality

Tests should be:

- independent
- deterministic
- readable
- maintainable
- fast

Avoid duplicated test logic.

## Assertions

Verify behavior rather than implementation details.

Avoid fragile assertions.

## Mocking

Mock only external dependencies.

Do not mock internal business logic unless absolutely necessary.

## Organization

Group related test cases logically.

Use descriptive test names.

Follow the conventions of the target language and testing framework.

## Output

Return complete, executable test code.

Include required imports.

If assumptions are necessary, state them clearly.

# Expected Output

## Assumptions

## Test Code

## Coverage Summary

## Additional Test Ideas

Suggest additional integration or end-to-end tests if appropriate.

# Tone

Write tests that another senior engineer would be comfortable maintaining in a production codebase.

# Engineering Principles

- Test behavior rather than implementation.
- Keep tests deterministic.
- Keep tests independent.
- Prefer readability over cleverness.
- Mock only external dependencies.
- Cover both expected and exceptional behavior.
- Produce production-quality test code.
