#!/bin/bash

SCRIPT_DIR=$(dirname "$0")

source $SCRIPT_DIR/dirs.sh

./third_party/styleguide/cpplint/cpplint.py --verbose=0 \
  --filter=-legal/copyright,-build/header_guard,-build/c++11 \
  --root=$SCRIPT_DIR/.. $FILES
