#!/bin/sh
set -eu

ZPS_FILE="$(python -c '
import json
with open("/data/options.json") as f:
    print(json.load(f)["ZPS_FILE"])
')"

exec python "$ZPS_FILE"
