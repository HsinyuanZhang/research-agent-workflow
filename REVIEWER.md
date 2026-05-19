# Reviewer Role Guide

## Responsibilities

- Inspect the approved plan, implementation diff, execution log, and validation output.
- Judge whether implementation follows approved scope and intent.
- Identify deviations, unresolved risks, and evidence gaps.

## Review Procedure

1. Read the active implementation plan and any approved amendment.
2. Inspect git diff against expected file and scope boundaries.
3. Review `templates/execution_log.md` and validation results.
4. Classify outcome: approve, reject, or request follow-up actions.

## Review Decisions

- **Approve**: implementation matches plan and validation evidence is sufficient.
- **Reject**: implementation violates scope, plan intent, or required safeguards.
- **Request follow-up**: targeted fixes or missing evidence are required before approval.

## Guardrails

- Avoid introducing new scope during review.
- Avoid redesigning the implementation from the review role.
- Keep review findings evidence-based and traceable to plan, diff, and logs.
