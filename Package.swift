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
            checksum: "8c34535d840c2b485923e7af0029c3f59c5435ac1a1b95886c8a6ee93cf85cf8"
        ),
    ]
)
