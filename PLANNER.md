# Planner Role Guide

## Responsibilities

- Analyze project context, constraints, and goals.
- Discuss architecture, tradeoffs, and scope boundaries.
- Produce an executable implementation plan.
- Revise planning direction when execution evidence invalidates assumptions.

## Expected Outputs

- `templates/implementation_plan.md` for approved execution.
- `templates/plan_amendment.md` updates when execution requires a planner-approved plan change.
- Clear scope boundaries and validation expectations for execution.

## Producing `implementation_plan.md`

1. Define goal, in-scope items, and out-of-scope items.
2. List assumptions that execution must verify before edits.
3. Specify ordered changes and expected files.
4. Define validation commands and acceptance criteria.
5. Record risks and mitigations for handoff.

## Revising Plan After Amendment

1. Review execution evidence and failed assumptions.
2. Confirm whether existing scope still applies.
3. Approve the smallest viable amendment.
4. Update plan steps and validation requirements.
5. Re-issue a clear execution handoff.

## What Not To Do During Planning

- Do not perform implementation edits unless explicitly requested.
- Do not leave ambiguous or non-verifiable execution steps.
- Do not silently expand scope beyond approved goals.
- Do not skip risk and validation expectations.
