# research-agent-workflow

Personal workflow rules, templates, and skills for multi-agent research coding.

This repository defines how to coordinate different AI CLI tools across multiple machines and projects.

## Purpose

This repo is the shared control layer for an AI-assisted research workflow.

The intended workflow is:

```text
Codex / OpenAI model
  -> analyze project
  -> discuss design with me
  -> generate implementation plan

Claude Code / DeepSeek / OSS coding model
  -> read the plan
  -> verify repository assumptions
  -> execute code changes
  -> report deviations and validation results
```

The goal is not to make every agent autonomous.
The goal is to make each agent operate within a clear role boundary.

## Core Principle

Planner decides.  
Executor verifies and acts.  
Reviewer judges.  
No agent silently changes role.

## Roles

### Planner

Usually Codex or another strong reasoning model.

Responsibilities:
- understand the project
- discuss architecture and tradeoffs
- generate `implementation_plan.md`
- revise plans when execution reveals problems
- review final diffs and logs

### Executor

Usually Claude Code, DeepSeek, or another coding CLI agent.

Responsibilities:
- read the approved plan
- verify files and assumptions before editing
- make minimal code changes
- run validation commands
- write execution logs
- stop and report when the plan is wrong

### Reviewer

Usually Codex or another stronger model.

Responsibilities:
- compare implementation against the plan
- inspect git diff
- inspect test results
- identify remaining risks

## Repository Layout

```text
research-agent-workflow/
  README.md
  AGENTS.md
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

For Codex planning, read:

`~/research-agent-workflow/CODEX.md`

For Claude Code execution, read:

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
- Codex-to-Claude-Code handoff
