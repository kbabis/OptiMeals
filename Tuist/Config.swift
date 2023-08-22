import ProjectDescription

let config = Config(
    compatibleXcodeVersions: .upToNextMajor("14.3"),
    plugins: [
        .local(path: .relativeToCurrentFile("Plugins/Bootstrap"))
    ]
)
