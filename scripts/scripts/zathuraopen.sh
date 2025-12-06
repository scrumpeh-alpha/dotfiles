#/bin/bash

if [[ $1 != "" ]]; then
    nohup zathura "${1}" >/dev/null 2>&1 & disown
    return 0
fi


file="$(find . -type f | fzf)"

echo $file
if [[ $file != "" ]]; then
    nohup zathura "${file}" >/dev/null 2>&1 & disown
fi
