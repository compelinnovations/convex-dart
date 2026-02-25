#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_DIR="$REPO_ROOT/llm/objectbox-src"
TMP_DIR="${TMPDIR:-/tmp}/objectbox-dart-src-sync"

rm -rf "$TMP_DIR"
git clone --depth 1 --filter=blob:none --sparse https://github.com/objectbox/objectbox-dart "$TMP_DIR"
(
  cd "$TMP_DIR"
  git sparse-checkout set objectbox/lib/src
)

mkdir -p "$TARGET_DIR"
rsync -a --delete "$TMP_DIR/objectbox/lib/src/" "$TARGET_DIR/"

echo "Synced ObjectBox Dart source to: $TARGET_DIR"
