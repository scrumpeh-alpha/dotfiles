#!/bin/bash

docker run -it --rm \
    --name "opencode-$(basename "$PWD")" \
    --user $(id -u):$(id -g) \
    -v "$(pwd)":/workspace \
    -v "$HOME/.config/opencode:/home/ubuntu/.config/opencode" \
    -v "$HOME/.local/share/opencode:/home/ubuntu/.local/share/opencode" \
    -v "$HOME/.config/gh:/home/ubuntu/.config/gh" \
    -v "$HOME/.gitconfig:/home/ubuntu/.gitconfig:ro" \
    opencode-dev
