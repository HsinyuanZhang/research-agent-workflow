# research-agent-workflow

Personal workflow rules, templates, and skills for multi-agent research coding.

This repository defines how to coordinate AI agent roles across multiple machines and projects.

## Purpose

This repo is the shared control layer for an AI-assisted research workflow.

The intended workflow is role-first:

```text
Planner role
  -> analyze project
  -> discuss architecture/design
  -> generate or revise implementation plan

Executor role
  -> read approved plan
  -> verify repository assumptions
  -> execute code changes
  -> report deviations and validation results

Reviewer role
  -> inspect diff, logs, and validation results
  -> judge whether implementation follows the plan
```

Codex, Claude Code, DeepSeek, OSS models, or future tools are possible implementations of these roles.
Role selection depends on task phase and capability, not tool name.

The goal is not to make every agent autonomous.
The goal is to make each agent operate within a clear role boundary.

## Core Principle

Planner decides.  
Executor verifies and acts.  
Reviewer judges.  
No agent silently changes role.

## Roles

### Planner

Responsibilities:
- understand the project
- discuss architecture and tradeoffs
- generate `implementation_plan.md`
- revise plans when execution reveals problems
- review final diffs and logs

Typical implementation: a strong reasoning model.

### Executor

Responsibilities:
- read the approved plan
- verify files and assumptions before editing
- make minimal code changes
- run validation commands
- write execution logs
- stop and report when the plan is wrong

Typical implementation: a coding CLI model.

### Reviewer

Responsibilities:
- compare implementation against the plan
- inspect git diff
- inspect test results
- identify remaining risks

Typical implementation: a strong evaluator model.

## Repository Layout

```text
research-agent-workflow/
  README.md
  AGENTS.md
  PLANNER.md
  EXECUTOR.md
  REVIEWER.md
  CODEX.md
  CLAUDE.md

  templates/
    implementation_plan.md
    plan_amendment.md
    execution_log.md
    executor_brief.md

  skills/
    plan-ingest-and-execute/
      SKILL.md
    plan-amend/
      SKILL.md

  policies/
    stop_conditions.md
    git_policy.md
    validation_policy.md

  scripts/
    sync.sh
    link-claude-skills.sh
```

## How Projects Use This Repo

Each project should keep only a thin `AGENTS.md` that points to this workflow repo.

Example:

```md
# Project Agent Instructions

Before planning or executing tasks, read:

`~/research-agent-workflow/AGENTS.md`

For planning tasks, read:

`~/research-agent-workflow/PLANNER.md`

For execution tasks, read:

`~/research-agent-workflow/EXECUTOR.md`

For review tasks, read:

`~/research-agent-workflow/REVIEWER.md`

Then read any tool-specific adapter if relevant:

`~/research-agent-workflow/CODEX.md`  
`~/research-agent-workflow/CLAUDE.md`

Use templates from:

`~/research-agent-workflow/templates/`
```

## Plan-Based Execution

All non-trivial code changes should start from an implementation plan.
The executor should not directly redesign the solution during execution.
If the plan is wrong, the executor should write a plan amendment instead of silently changing direction.

## Local Installation

Clone this repo to a stable path on every machine:

```bash
git clone git@github.com:YOUR_NAME/research-agent-workflow.git ~/research-agent-workflow
```

Then link Claude Code skills:

```bash
bash ~/research-agent-workflow/scripts/link-claude-skills.sh
```

## Status

This workflow is experimental and optimized for a personal research environment.

Primary use cases:
- EDA scripts and digital design workflows
- research code
- hardware/software co-design projects
- multi-machine development
- role-based planner/executor/reviewer handoff
