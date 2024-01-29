import ProjectDescription

let project = Project(
    name: "FrameworkWithSwiftMacro",
    settings: .settings(configurations: [
        .debug(name: "Debug"),
        .debug(name: "Development"),
    ]),
    targets: [
        Target(
            name: "Framework",
            destinations: [.iPhone],
            product: .framework,
            bundleId: "io.tuist.FrameworkWithSwiftMacro",
            sources: ["Sources/**/*"],
            dependencies: [
                .external(name: "StructBuilder"),
            ],
            settings: .settings(configurations: [
                .debug(name: "Debug"),
                .release(name: "Development"),
            ])
        ),
    ]
)
