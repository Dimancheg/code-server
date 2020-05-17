#!/usr/bin/env bash
set -euo pipefail

main() {
  cd "$(dirname "$0")/../.."

  cd ./lib/vscode
  git add -A
  git diff HEAD > ../../ci/dev/vscode.patch
}

main "$@"
