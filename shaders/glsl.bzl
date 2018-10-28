def _impl(ctx):
    input = ctx.file.src
    output = ctx.outputs.out
    args = ["-V", input.path, "-o", output.path]

    ctx.actions.run(
        inputs = [input],
        outputs = [output],
        arguments = args,
        progress_message = "Compiling GLSL (%s) to SPIR-V" % input.path,
        executable = ctx.executable.compiler,
    )

glsl = rule(
    attrs = {
        "compiler": attr.label(
            default = "//third_party/vulkan-sdk:bin/glslangValidator",
            allow_single_file = True,
            cfg = "data",
            executable = True,
        ),
        "out": attr.output(mandatory = True),
        "src": attr.label(
            allow_single_file = [".vert", ".tesc", ".tese", ".geom", ".frag", ".comp"],
            mandatory = True,
        ),
    },
    implementation = _impl,
)
