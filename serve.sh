#!/bin/bash
PORT=${1:-8000}
echo "Serving Mano Verde at http://localhost:$PORT"
echo "Press Ctrl+C to stop"
python3 -m http.server "$PORT"
