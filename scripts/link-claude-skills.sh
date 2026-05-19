#!/usr/bin/env bash
set -euo pipefail

WORKFLOW_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SOURCE_DIR="$WORKFLOW_DIR/skills"
TARGET_DIR="$HOME/.claude/skills/research-agent-workflow"

mkdir -p "$TARGET_DIR"

if command -v rsync >/dev/null 2>&1; then
  rsync -a --delete "$SOURCE_DIR/" "$TARGET_DIR/"
else
  rm -rf "$TARGET_DIR"/*
  cp -R "$SOURCE_DIR"/* "$TARGET_DIR/"
fi

echo "Claude skills linked at: $TARGET_DIR"
