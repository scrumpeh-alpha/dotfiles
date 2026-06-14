#!/bin/bash

set -e

docker run --rm -it \
  -e OPENROUTER_API_KEY \
  -e TERM \
  -v "$PWD:/workspace" \
  -v pi-agent-persist:/root/.pi/agent \
  pi-sandbox
