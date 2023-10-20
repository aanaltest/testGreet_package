// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestGreet_Package",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TestGreet_Package",
            targets: ["TestGreet_Package"]),
    ],
    
    dependencies: [
        .package(url: "https://github.com/aanaltest/Greet_SPM",
                 from: "1.0.0")
    ],
    
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        
        .target(
            name: "TestGreet_Package",
            dependencies: [
                .target(name: "TestGreet"),
                .product(name: "Greet_SPM", package: "Greet_SPM")
            ]),
        
            .binaryTarget(
                name: "TestGreet",
                path: "./Sources/TestGreet.xcframework"
            )
    ]
    
)
