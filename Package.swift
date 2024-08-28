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
            checksum: "905229219577e3536004501dc0f385b498b457f8cb60b7ce3fcf3bddf5c07119"
        ),
    ]
)
