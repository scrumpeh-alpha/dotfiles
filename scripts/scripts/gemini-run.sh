#!/bin/bash
# Pre-create the host folders so they aren't owned by root
mkdir -p ~/.gemini/tmp

docker run -it --rm \
    --name "gemini-cli" \
    --user $(id -u):$(id -g) \
    -v "$(pwd)":/workspace \
    -v "$HOME/.gemini:/home/node/.gemini" \
    -v "$HOME/.gitconfig:/home/node/.gitconfig:ro" \
    gemini-cli-custom
