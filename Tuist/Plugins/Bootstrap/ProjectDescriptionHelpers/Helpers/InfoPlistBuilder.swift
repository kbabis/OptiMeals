import ProjectDescription

public final class InfoPlistPropertiesBuilder {
    public typealias Key = String
    private var properties: [Key: InfoPlist.Value] = [:]
    
    public init() {}
    
    public func build() -> [Key: InfoPlist.Value] {
        properties
    }
}

extension InfoPlistPropertiesBuilder {
    /// suggested value: "$(APP_NAME)",
    public func set(bundleDisplayName: String) -> Self {
        properties["CFBundleDisplayName"] = .string(bundleDisplayName)
        return self
    }
    
    /// suggested value: "$(APP_NAME)",
    public func set(bundleName: String) -> Self {
        properties["CFBundleName"] = .string(bundleName)
        return self
    }
    
    public func set(doesUseNonExemptEncryption: Bool) -> Self {
        properties["ITSAppUsesNonExemptEncryption"] = .boolean(doesUseNonExemptEncryption)
        return self
    }
    
    public func set(fonts: [String]) -> Self {
        properties["UIAppFonts"] = .array(
            fonts.map { InfoPlist.Value.string($0) }
        )
        return self
    }
    
    public func set(launchStoryboardName: String) -> Self {
        properties["UILaunchStoryboardName"] = .string(launchStoryboardName)
        return self
    }
    
    public func set(isStatusBarHidden: Bool) -> Self {
        properties["UIStatusBarHidden"] = .boolean(isStatusBarHidden)
        return self
    }
    
    public func set(supportedInterfaceOrientations: [InterfaceOrientations]) -> Self {
        properties["UISupportedInterfaceOrientations"] = .array(supportedInterfaceOrientations.map(\.plistValue))
        return self
    }
}

extension InfoPlistPropertiesBuilder {
    public enum InterfaceOrientations {
        case portrait
        case upsideDown
        case landscapeLeft
        case landscapeRight
        
        var plistValue: InfoPlist.Value {
            switch self {
            case .portrait:
                return "UIInterfaceOrientationPortrait"
            case .upsideDown:
                return "UIInterfaceOrientationPortraitUpsideDown"
            case .landscapeLeft:
                return "UIInterfaceOrientationLandscapeLeft"
            case .landscapeRight:
                return "UIInterfaceOrientationLandscapeRight"
            }
        }
    }
}
