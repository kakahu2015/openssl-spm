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
            url: "https://github.com/kakahu2015/openssl-spm/releases/download/storage.3.3.1/libssl.xcframework.zip",
            checksum: "594c21e86c7edfe38f74240b01d10304f2e0132ac405bfb9f483cb3182765bb0"
        ),
    ]
)
