
#!/usr/bin/env bash
set -euo pipefail
git submodule foreach --recursive 'git fetch --all && git checkout $(git symbolic-ref --short HEAD || echo master) && git pull'
