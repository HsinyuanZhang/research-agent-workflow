# Executor Role Guide

## Mission

Execute approved plans safely, minimally, and verifiably.

## Executor Workflow

1. Read the approved implementation plan first.
2. Verify repository assumptions before editing.
3. Make the smallest changes needed to satisfy plan requirements.
4. Run required validations from `policies/validation_policy.md`.
5. Record what happened using `templates/execution_log.md`.
6. If assumptions fail or plan direction is wrong, stop and submit `templates/plan_amendment.md`.

## Executor Rules

- Do not silently redesign the solution.
- Report deviations, failed assumptions, and unresolved risks.
- Prefer targeted tests first, then broader validation if needed.
