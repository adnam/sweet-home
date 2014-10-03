 #!/bin/bash

CHECKOUT_DIR=`dirname $0`
pushd ${CHECKOUT_DIR} > /dev/null
SCRIPT_DIR=`pwd -P`
popd > /dev/null
FALSE_HOME=${SCRIPT_DIR}/home

TO_INSTALL=(.ackrc .bash_logout .bashrc .gitconfig .gitignore .profile .vimrc .vim)

for FILE in ${TO_INSTALL[*]}; do
    echo "Installing $FILE"
    if [ -f ~/${FILE} ] || [ -d ~/${FILE} ]; then
        echo "mv ~/${FILE} ~/${FILE}.bak"
        mv ~/${FILE} ~/${FILE}.bak
    fi
    echo "ln -fs ${FALSE_HOME}/${FILE} ~/${FILE}"
    ln -fs ${FALSE_HOME}/${FILE} ~/${FILE}
done

