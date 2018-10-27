local_repository(
    name = "absl",
    path = "third_party/abseil-cpp",
)

local_repository(
    name = "gtest",
    path = "third_party/googletest",
)

# Buildifier setup
http_archive(
    name = "io_bazel_rules_go",
    sha256 = "c1f52b8789218bb1542ed362c4f7de7052abcf254d865d96fb7ba6d44bc15ee3",
    url = "https://github.com/bazelbuild/rules_go/releases/download/0.12.0/rules_go-0.12.0.tar.gz",
)

http_archive(
    name = "com_github_bazelbuild_buildtools",
    strip_prefix = "buildtools-e8dd7c4a2590c78f7e78ef45688eb67cb4d51498",
    url = "https://github.com/bazelbuild/buildtools/archive/e8dd7c4a2590c78f7e78ef45688eb67cb4d51498.zip",
)

load("@io_bazel_rules_go//go:def.bzl", "go_register_toolchains", "go_rules_dependencies")
load("@com_github_bazelbuild_buildtools//buildifier:deps.bzl", "buildifier_dependencies")

go_rules_dependencies()

go_register_toolchains()

buildifier_dependencies()
