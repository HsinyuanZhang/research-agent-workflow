# Agent Operating Instructions

Use this repository as the source of truth for role boundaries and workflow policies.

## Required Reading Order

1. `README.md`
2. `policies/stop_conditions.md`
3. `policies/git_policy.md`
4. `policies/validation_policy.md`

Then choose role-specific instructions:
- Planner: `CODEX.md`
- Executor: `CLAUDE.md`

## Role Contract

- Planner decides and writes plans.
- Executor verifies assumptions and executes with minimal edits.
- Reviewer judges outputs and risk.
- If execution deviates, submit `templates/plan_amendment.md` instead of silently changing strategy.
