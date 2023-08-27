import ProjectDescription

let config = Config(
    compatibleXcodeVersions: .upToNextMajor("14.2"),
    plugins: [
        .local(path: .relativeToCurrentFile("Plugins/Bootstrap"))
    ]
)
