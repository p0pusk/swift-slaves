// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "PackageName",
    products: [
        .executable(name: "ExcecutableName", targets: ["TargetName"]),
    ],
    dependencies: [
        .package(
            name: "Module",
            path: "./Module"
        )

    ],
    targets: [
        .target(
            name: "TargetName",
            dependencies: [
                .byName(name: "Module")
            ]
        ),
    ]
)
