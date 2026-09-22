#!/bin/sh
set -eu

ZPS_FILE="$(python -c '
import json
with open("/data/options.json") as f:
    print(json.load(f)["ZPS_FILE"])
')"

if [ ! -f "$ZPS_FILE" ]; then
    mkdir -p "$(dirname "$ZPS_FILE")"
    touch "$ZPS_FILE"
fi

exec python "$ZPS_FILE"
