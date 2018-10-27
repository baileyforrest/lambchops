VULKAN_PATH = "third_party/vulkan-sdk/"

GLFW_LINKOPTS = [
    "-L/usr/local/lib",
    "-lglfw3",
    "-lrt",
    "-lm",
    "-ldl",
    "-lX11",
    "-lpthread",
    "-lxcb",
    "-lXau",
    "-lXdmcp",
]

cc_binary(
    name = "lambchops",
    srcs = ["main.cc"],
    copts = ["-I" + VULKAN_PATH + "include"],
    linkopts = ["-L" + VULKAN_PATH + "lib"] + GLFW_LINKOPTS,
    deps = [
        "//third_party/vulkan-sdk",
        "@absl//absl/types:optional",
    ],
)

cc_test(
    name = "lambchops_test",
    srcs = ["main_test.cc"],
    deps = [
        "@gtest",
        "@gtest//:gtest_main",
    ],
)
