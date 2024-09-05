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
            url: "https://github.com/kakahu2015/openssl-spm/releases/download/storage.3.3.2/libssl.xcframework.zip",
            checksum: "ee40775af944fe9a40f3cff9638117e08c9211e1c4649c18060c99d1211c1ea6"
        ),
    ]
)
