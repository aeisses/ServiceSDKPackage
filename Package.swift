// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ServiceSDKPackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ServiceSDKPackage",
            targets: ["ServiceSDKPackage", "ServiceCore", "ServiceChat"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ServiceSDKPackage"
        ),
        .binaryTarget(
            name: "ServiceCore",
            url: "https://s3.amazonaws.com/salesforcesos.com/ios/servicesdk/SwiftPackageManager/ServiceCore.xcframework.zip",
            checksum: "05b8fc313014bbec30c70261180a4106b36fad3500ae58f6315dd7b2682e7766"
        ),
        .binaryTarget(
            name: "ServiceChat",
            url: "https://s3.amazonaws.com/salesforcesos.com/ios/servicesdk/SwiftPackageManager/ServiceChat.xcframework.zip",
            checksum: "8641ad3c08624dcf05dc40c4c10f7fa9af44d9aa9873e60240539b8c549e0108"
        ),
    ]
)
