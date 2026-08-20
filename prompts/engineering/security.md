# Security

> Review software for security weaknesses and recommend practical, risk-based improvements.

# Purpose

Perform a production-oriented security review focused on realistic threats, trust boundaries, sensitive data, and exploitable weaknesses.

# Prompt

## Input and Output

Check validation, sanitization, encoding, injection risks, and unsafe assumptions about external data.

## Authentication and Authorization

Review identity, permissions, privilege boundaries, and access-control decisions.

## Secrets and Sensitive Data

Look for exposed credentials, tokens, personal data, excessive logging, and unsafe storage or transmission.

## Dependencies and Infrastructure

Consider dependency risks, insecure configuration, network exposure, and unsafe defaults.

## Failure Handling

Check whether errors, logs, and recovery behavior can leak information or bypass security controls.

## Prioritization

Distinguish exploitable vulnerabilities from lower-risk hardening suggestions.

# Expected Output

## Findings

List security issues with severity and the affected area.

## Risk

Explain the realistic impact and attack scenario.

## Recommendation

Provide a concrete remediation for each important finding.

# Engineering Principles

- Treat external input as untrusted.
- Apply least privilege.
- Protect secrets and sensitive data.
- Prioritize exploitable risk over theoretical concerns.
- Security controls should be explicit and testable.
