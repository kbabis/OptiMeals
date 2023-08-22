import ProjectDescription
import ProjectDescriptionHelpers

let dependencies = Dependencies(
    swiftPackageManager: .init(ThirdParty.allCases.map(\.externalSource.package)),
    platforms: [Global.deploymentTarget.platform]
)
