# Troubleshoot

> Investigate operational and technical problems systematically using symptoms, evidence, and system behavior.

# Purpose

Troubleshoot production or development problems without jumping directly to a presumed solution.

# Prompt

## Symptoms

Capture the exact observed behavior, timing, scope, frequency, and affected components.

## Evidence

Use logs, metrics, traces, configuration, recent changes, and reproducible behavior to narrow the problem.

## Dependencies

Check external services, databases, queues, networks, infrastructure, and resource constraints.

## Isolation

Reduce the problem to the smallest failing component or interaction.

## Resolution

Recommend the least risky corrective action and distinguish immediate mitigation from permanent remediation.

# Expected Output

## Diagnosis

Summarize the most likely cause and supporting evidence.

## Immediate Action

Describe safe mitigation when the system is currently affected.

## Root Fix

Explain the permanent corrective action.

## Verification

Describe how to confirm that the problem is resolved.

# Engineering Principles

- Start with observable symptoms.
- Use evidence before assumptions.
- Separate mitigation from root-cause remediation.
- Preserve useful diagnostic information during troubleshooting.
