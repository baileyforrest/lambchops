licenses(["notice"])

cc_library(
    srcs = glob(["lib/libvulkan*.so"]),
    name = "vulkan-sdk",
    hdrs = glob(["include/vulkan/*.h"]),
    visibility = ["//visibility:public"],
    strip_include_prefix = "include",
)

exports_files(["bin/glslangValidator"])
