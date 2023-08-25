import ProjectDescription
import ProjectDescriptionHelpers

let testsNameAttribute: Template.Attribute = .required("name")

let testsTemplate = Template(
    description: "Basic composable architecture feature template",
    attributes: [
        testsNameAttribute,
    ],
    items: [
        .file(
            path: "\(Global.mainFolderPath)/\(testsNameAttribute)/Tests/\(testsNameAttribute)Tests.swift",
            templatePath: "../stencils/tests.stencil")
    ])
