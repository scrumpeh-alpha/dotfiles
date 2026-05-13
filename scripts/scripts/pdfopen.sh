#!/bin/bash

READER="${READER:-zathura}"
TARGET="${1:-.}"

FILE_PATTERN=( \( -iname "*.pdf" -o -iname "*.djvu" -o -iname "*.epub" -o -iname "*.ps" \) )

if [[ -d "$TARGET" ]]; then
    # Search within the directory
    cd "$TARGET"
    FILE=$(find . -maxdepth 5 -type f "${FILE_PATTERN[@]}" 2>/dev/null | fzf --prompt="($READER) $TARGET > ")
elif [[ -f "$TARGET" ]]; then
    FILE="$TARGET"
else
    echo "Path not found: $TARGET"
    exit 1
fi

if [[ -n "$FILE" ]]; then
    nohup "$READER" "$FILE" >/dev/null 2>&1 & disown
fi
