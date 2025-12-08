#/bin/bash

VIEWER=zathura
if [[ $1 ]]; then
    VIEWER=$1
fi

(
    cd "$BOOKS_DIR" || exit 1
    bn="$(find . -type f | fzf)"

    if [[ -n "$bn" ]]; then
        echo "Opening $bn with $VIEWER"
        nohup "$VIEWER" "${bn}" >/dev/null 2>&1 &
        # nohup zathura "${bn}" & disown
    fi
)
