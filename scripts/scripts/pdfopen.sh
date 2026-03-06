#!/bin/bash

DEFAULT_READER="zathura"
FILE_PATTERN=( \( -iname "*.pdf" -o -iname "*.djvu" -o -iname "*.ps" -o -iname "*.epub" \) )

# --- Argument Parsing ---
READER=$DEFAULT_READER

while getopts "o:" opt; do
  case $opt in
    o) READER=$OPTARG ;;
    *) echo "Usage: $0 [-o reader] [file]"; exit 1 ;;
  esac
done
shift $((OPTIND -1))

# --- Program ---

if [[ -n "$1" ]]; then
    nohup "$READER" "$1" >/dev/null 2>&1 & disown
    exit 0
fi

file="$(
    find . -maxdepth 5 -type f "${FILE_PATTERN[@]}" -print 2>/dev/null \
    | fzf --prompt="Open with $READER: "
)"

if [[ -n "$file" ]]; then
    echo "Opening: $file"
    nohup "$READER" "$file" >/dev/null 2>&1 & disown
fi
