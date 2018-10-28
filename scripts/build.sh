#!/bin/bash

bazel build //shaders:frag
bazel build //shaders:vertex
bazel build -c dbg //main:lambchops
