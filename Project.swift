import ProjectDescription
import ProjectDescriptionHelpers
import Bootstrap

let project = Project(
    name: "OptiMeals",
    packages: ThirdParty.allCases.map(\.externalSource.package),
    targets: App.allCases.map(\.target)
                + Core.allCases.map(\.target)
                + Feature.allCases.map(\.target)
                + ThirdParty.allCases.map(\.target),
    schemes: [
        .default(
            named: "OptiMeals",
            buildTarget: App.optiMealsApp.target,
            runConfiguration: Configurations.debug.configuration,
            archiveConfiguration: Configurations.release.configuration)])
