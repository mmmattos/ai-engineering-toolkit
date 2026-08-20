# Migrate

> Plan and execute software migrations safely with explicit compatibility, sequencing, rollback, and validation.

# Purpose

Design migration strategies that minimize production risk while moving data, infrastructure, dependencies, APIs, or application components from one state to another.

# Prompt

## Current State

Identify the existing system, dependencies, constraints, and migration risks.

## Target State

Define the desired end state and the properties that must remain compatible during transition.

## Strategy

Choose an incremental, dual-run, phased, or cutover strategy appropriate to the migration.

## Data and Compatibility

Consider schema changes, synchronization, backward compatibility, versioning, and data validation.

## Rollback

Define how the migration can be stopped or reversed safely.

## Validation

Specify technical and business checks that prove the migration succeeded.

# Expected Output

## Migration Plan

Provide the migration stages in a practical sequence.

## Risks

Identify failure modes and their mitigations.

## Rollback

Explain the rollback or recovery strategy.

## Validation

Define the checks required before declaring the migration complete.

# Engineering Principles

- Prefer incremental and reversible changes.
- Maintain compatibility during transition where required.
- Never treat data migration as an afterthought.
- Define rollback before executing a risky migration.
