#!/bin/bash
REPOURL="https://github.com/alosadagrande/laptop_install.git"
GITDIR="${HOME}/git"
GITREPO="${GITDIR}/laptop_install"

if [ -d "${GITREPO}" ];then
 echo "Folder exists, deleting..."
 rm -rf ${GITREPO}
fi

sudo dnf install -y ansible git dnf-plugins-core 

mkdir -p ${GITDIR}

git clone ${REPOURL} ${GITREPO}

echo "Read the README.md file to continue"
