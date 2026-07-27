#!/bin/bash
USER_HOME="$HOME"
PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "${PATH}"
EMACS_HOME="${USER_HOME}/.emacs.d"

if [ -e "$EMACS_HOME" ]; then
    echo "$TARGET_DIR 已存在，是否覆盖？(y/n)"
    read -r answer
    if [[ "$answer" != "y" && "$answer" != "Y" ]]; then
        echo "操作已取消。"
        exit 1
    fi
    # 删除旧目录
    /usr/bin/rm -rf "$EMACS_HOME"
fi

echo "Copying ${PATH} Into ${EMACS_HOME}"
/usr/bin/cp -r "$PATH" "$EMACS_HOME"
/usr/bin/emacs --batch ~/.emacs.d/init.org --eval '(org-babel-tangle)'
