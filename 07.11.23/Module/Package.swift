// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Module",
    products: [
        .library(name: "Module", targets: ["MyLibrary", "OtherTarget"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "MyLibrary"),
        .target(
            name: "OtherTarget",
            dependencies: [.byName(name: "MyLibrary")]

        )
    ]
)
