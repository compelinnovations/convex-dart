# Build Scripts

## build.sh

Runs the code generator and automatically applies Dart fixes (like removing unused imports).

### Usage

```bash
# Simple build
./scripts/build.sh

# Clean build (removes cached files)
./scripts/build.sh --delete-conflicting-outputs

# Watch mode (rebuilds on changes)
./scripts/build.sh watch
```

### What it does

1. Runs `dart run build_runner build` with any arguments you pass
2. Automatically runs `dart fix --apply` to clean up the generated code
3. Reports completion status

This ensures generated code is always clean and follows Dart best practices.
