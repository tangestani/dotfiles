#!/usr/bin/env bash

echo "Linking dotfiles..."

cd $(dirname $0)

for file in $(ls | cat | grep -v .sh); do
  ln -sf $(pwd)/${file} ~/.${file}
done
