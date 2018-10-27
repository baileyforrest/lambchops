#!/bin/bash

source $(dirname "$0")/dirs.sh

clang-format -i -style=Google $FILES
