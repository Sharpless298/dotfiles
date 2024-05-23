#!/bin/bash

PLUG_VIM_DIR="${HOME}/.vim/autoload"
mkdir -p "${PLUG_VIM_DIR}"

echo "Downloading vim-plug..."
curl -fLo "${PLUG_VIM_DIR}/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if [ $? -ne 0 ]; then
  echo 'Falied.' >&2
  exit 1
fi

echo "vim-plug installed!"

