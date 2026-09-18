#!/usr/bin/env bash
set -euo pipefail

usage() {
  printf '%s\n' \
    'Usage: bash scripts/preview.sh [setup|build|serve] [Jekyll options...]' \
    'Default: serve at http://127.0.0.1:4000; Ctrl-C stops the server.' \
    'setup installs missing gems locally; build writes _site/.' \
    'Example: bash scripts/preview.sh serve --port 4001'
}

action="${1:-serve}"
if (( $# > 0 )); then shift; fi
case "$action" in
  -h|--help|help) usage; exit 0 ;;
  setup) if (( $# > 0 )); then usage >&2; exit 2; fi ;;
  build|serve) ;;
  *) usage >&2; exit 2 ;;
esac

repo_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_dir"
if ! command -v ruby >/dev/null 2>&1 || ! command -v bundle >/dev/null 2>&1; then
  printf '%s\n' 'Ruby and Bundler are required on PATH. See README.md.' >&2
  exit 1
fi

# Keep this site's dependencies and Bundler settings inside the checkout.
export BUNDLE_GEMFILE="$repo_dir/Gemfile"
export BUNDLE_PATH="$repo_dir/vendor/bundle"
export BUNDLE_APP_CONFIG="$repo_dir/.bundle"

if ! bundle check; then
  bundle install
fi

case "$action" in
  setup) printf '%s\n' 'Dependencies ready. Run: bash scripts/preview.sh' ;;
  build) exec bundle exec jekyll build "$@" ;;
  serve) exec bundle exec jekyll serve --host 127.0.0.1 --port 4000 "$@" ;;
esac
