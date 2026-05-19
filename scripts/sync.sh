#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="${1:-$HOME/research-agent-workflow}"

if [[ ! -d "$REPO_DIR/.git" ]]; then
  echo "error: not a git repository: $REPO_DIR" >&2
  exit 1
fi

cd "$REPO_DIR"
git fetch --all --prune
git pull --ff-only

echo "Synced workflow repository at: $REPO_DIR"
