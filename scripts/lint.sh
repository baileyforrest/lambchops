#!/bin/bash

source $(dirname "$0")/dirs.sh

./third_party/styleguide/cpplint/cpplint.py --verbose=0 \
  --filter=-legal/copyright,-build/header_guard,-build/c++11 \
  --root=$SCRIPT_DIR/.. $FILES
