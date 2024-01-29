// swift-tools-version: 5.9
import PackageDescription

#if TUIST
import ProjectDescription

let packageSettings = PackageSettings(baseSettings: .settings(configurations: [
    .debug(name: "Debug"),
    .debug(name: "Development"),
]))

#endif
let package = Package(
    name: "FrameworkWithNativeSwiftMacro",
    dependencies: [
        .package(url: "https://github.com/alschmut/StructBuilderMacro", .exact("0.2.0"))
    ]
)
