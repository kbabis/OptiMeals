import ProjectDescription

public enum Global {
    public static let bundleID = "com.optimeals.mobile"
    public static let deploymentTarget: DeploymentTarget = .iOS(
        targetVersion: "16.0",
        devices: [.iphone, .ipad])
    public static let mainFolderPath = "Targets"
}
