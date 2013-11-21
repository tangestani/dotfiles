#!/usr/bin/env bash

echo "Linking dotfiles..."

cd $(dirname $0)

for file in $(ls | cat | egrep -v '(.sh|.md)'); do
  ln -sfv $(pwd)/${file} ~/.${file}
done
