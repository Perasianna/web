#!/usr/bin/env bash
set -euo pipefail

# Runs the @app/web workspace in dev mode.
# Usage: ./scripts/dev-web.sh

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

cd "$ROOT_DIR"

echo "📦 Installing dependencies (root)…"
yarn install

echo "🏗️ Building shared packages…"
yarn build

echo "🚀 Starting @app/web dev server…"
yarn workspace @app/web dev
