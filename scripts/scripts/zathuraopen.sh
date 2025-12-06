#/bin/bash

if [[ -n "$1" ]]; then
    nohup zathura "${1}" >/dev/null 2>&1 & disown
    exit 0
fi


FILE_PATTERN=(
    \( 
    -iname "*.pdf" 
    -o -iname "*.djvu" 
    -o -iname "*.ps" 
    -o -iname "*.epub" 
    \)
)

file="$(
    find . -maxdepth 5 -type f "${FILE_PATTERN[@]}" -print 2>/dev/null \
    | fzf --prompt="Open file with Zathura: "
)"

if [[ -n "$file" ]]; then
    echo "Opening: $file"
    nohup zathura "$file" >/dev/null 2>&1 & disown
fi
