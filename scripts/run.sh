#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
ROOT=$(dirname $SCRIPT_DIR)

echo $ROOT/third_party/vulkan-sdk/lib

LD_LIBRARY_PATH=$ROOT/third_party/vulkan-sdk/lib \
  VK_LAYER_PATH=$ROOT/third_party/vulkan-sdk/etc/explicit_layer.d \
  bazel run -c dbg //main:lambchops $ROOT/bazel-out/k8-fastbuild/bin
