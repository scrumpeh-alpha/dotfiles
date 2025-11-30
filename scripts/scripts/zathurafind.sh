#/bin/bash

bn="$(find . -type f | fzf)"

echo $bn
if [[ $bn != "" ]]; then
    nohup zathura "${bn}" >/dev/null 2>&1 & disown
fi
