#!/usr/bin/env bash

echo "Linking dotfiles..."

for file in $(ls | cat | grep -v .sh); do
  ln -sf $(pwd)/${file} ~/.${file}
done
