#!/bin/bash
scripts_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo ">> Starting serverless"
serverless offline start --noEnvironment --host 0.0.0.0 -P 3000