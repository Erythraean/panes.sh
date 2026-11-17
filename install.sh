#!/bin/sh

cd "$(dirname "$0")" || exit 1

PREFIX="${PREFIX:-/usr/local}"

printf 'copying panes to %s/bin...\n' "$PREFIX"

mkdir -p "$PREFIX/bin" || exit 1
cp panes "$PREFIX/bin/panes" || exit 1
chmod +x "$PREFIX/bin/panes" || exit 1

printf 'panes installed successfully.\n'

