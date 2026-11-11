#!/usr/bin/env bash
# Serve the project at http://localhost:${PORT:-8000}
# Usage: ./serve.sh [port]
set -euo pipefail
cd "$(dirname "$0")"
PORT="${1:-${PORT:-8000}}"
echo "Serving on http://localhost:$PORT  (Ctrl+C to stop)"
exec python3 -m http.server "$PORT" --bind 127.0.0.1
