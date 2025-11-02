#!/bin/bash
set -e

echo "🔨 Running build_runner..."
dart run build_runner build --delete-conflicting-outputs "$@"

echo "🔧 Applying automatic fixes..."
dart fix --apply

echo "✅ Build complete and fixes applied!"
