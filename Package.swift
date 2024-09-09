// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OpenSSL",
    products: [
        .library(name: "OpenSSL", targets: ["OpenSSL"]),
    ],
    targets: [
        .target(name: "OpenSSL", dependencies: [
            "ssl",
        ]),
        .binaryTarget(
            name: "ssl",
            url: "https://github.com/kakahu2015/openssl-spm/releases/download//libssl.xcframework.zip",
            checksum: "7d36e2c508f08f503d2b7f6b3944edeb8994d3c53562bbb466e921c1a660cd2d"
        ),
    ]
)
