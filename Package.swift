// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MySwiftPackage",
    /*
    platforms: [
        .iOS(.v15)
    ],
     */
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MySwiftPackage",
            targets: ["MySwiftPackage"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        // Public-facing target
        .target(
            name: "MySwiftPackage"),
        // Hidden implementation target
        .target(
            name: "MySwiftPackageImplementation",  // Internal implementation target
            dependencies: [],
            path: "Sources/MySwiftPackageImplementation",
            publicHeadersPath: ""  // No public headers exposed
        )
        
    ]
)
