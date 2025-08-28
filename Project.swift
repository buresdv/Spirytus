import ProjectDescription

let project = Project(
    name: "Spirytus",
    targets: [
        .target(
            name: "Spirytus",
            destinations: .macOS,
            product: .staticLibrary,
            bundleId: "eu.davidbures.Spirytus",
            infoPlist: .default,
            sources: ["Spirytus/Sources/**"],
            resources: ["Spirytus/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "SpirytusTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "eu.davidbures.SpirytusTests",
            infoPlist: .default,
            sources: ["Spirytus/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Spirytus")]
        ),
    ]
)
