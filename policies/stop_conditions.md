# Stop Conditions

Execution must stop and be reported when any of the following occurs:

1. The approved plan depends on files, APIs, or behavior that do not exist.
2. Required validations fail and root cause implies plan-level changes.
3. Security or data-safety risk appears that is not covered by the plan.
4. The task requires architectural redesign beyond approved scope.
5. The executor cannot confidently continue without planner clarification.

When stopping, provide evidence and submit `templates/plan_amendment.md`.
