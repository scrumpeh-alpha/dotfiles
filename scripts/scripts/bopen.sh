#/bin/bash

cd $BOOKS_DIR
bn="$(find . -type f | fzf)"

echo $bn
if [[ $bn != "" ]]; then
    nohup zathura "${bn}" & disown
fi
cd $OLDPWD
