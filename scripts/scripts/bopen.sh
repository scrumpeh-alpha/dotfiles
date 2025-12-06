#/bin/bash

(
    cd "$BOOKS_DIR" || exit 1
    bn="$(find . -type f | fzf)"

    echo $bn
    if [[ $bn != "" ]]; then
        nohup zathura "${bn}" >/dev/null 2>&1 &
        # nohup zathura "${bn}" & disown
    fi
)
# cd $OLDPWD
