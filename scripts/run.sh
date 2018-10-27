#!/bin/bash

SCRIPT_DIR=$(dirname "$0")

LD_LIBRARY_PATH=$PWD/third_party/vulkan-sdk/lib \
  VK_LAYER_PATH=$PWD/third_party/vulkan-sdk/etc/explicit_layer.d \
  bazel run -c dbg //main:lambchops
