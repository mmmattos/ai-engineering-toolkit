# Validate

> Verify that software changes satisfy their functional, technical, and operational requirements.

# Purpose

Validate a change systematically rather than relying on compilation or a single successful test.

# Prompt

## Requirements

Identify the behavior and acceptance criteria that must be satisfied.

## Static Validation

Check types, linting, formatting, schemas, interfaces, and other automated checks relevant to the project.

## Behavioral Validation

Run focused tests and verify normal, boundary, and failure scenarios.

## Integration

Validate important interactions with databases, APIs, queues, files, or other external systems.

## Operational Validation

Consider logging, metrics, resource usage, configuration, deployment, and rollback where relevant.

# Expected Output

## Validation Checklist

List the checks that should be performed.

## Results

Summarize what passed, failed, or remains uncertain.

## Risks

Identify areas that could not be fully validated.

## Recommendation

State whether the change is ready and what remains before release.

# Engineering Principles

- Validate against requirements, not assumptions.
- Prefer automated, repeatable checks.
- Distinguish verified facts from unverified risks.
- Do not declare success when important validation is incomplete.
