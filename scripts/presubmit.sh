#!/bin/bash

SCRIPT_DIR=$(dirname "$0")
COLOR='\033[0;36m'
NC='\033[0m' # No Color

cd $SCRIPT_DIR/.. || exit

echo -e "$COLOR## Formatting build files...$NC"
bazel run //:buildifier
echo -e "${COLOR}Done\n$NC"

echo -e "$COLOR## Formatting source code...$NC"
$SCRIPT_DIR/format.sh
echo -e "${COLOR}Done\n$NC"

echo -e "$COLOR## Linting source code...$NC"
$SCRIPT_DIR/lint.sh
echo -e "${COLOR}Done\n$NC"
