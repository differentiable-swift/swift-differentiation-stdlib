// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-differentiation-stdlib",
    platforms: [
        .macOS("26.0"),
        .iOS("26.0"),
    ],
    products: [
        .library(
            name: "_Differentiation",
            targets: ["_Differentiation"]
        ),
    ],
    targets: [
        // url and checksum are rewritten by Tools/release.sh. The artifact is
        // published as a release asset rather than committed: SwiftPM verifies
        // the download against the checksum, so the repository does not have to
        // carry a binary that changes on every rebuild.
        //
        // For local work against a rebuilt xcframework, use
        //   swift package edit swift-differentiation-stdlib --path <checkout>
        // in the consuming package.
        .binaryTarget(
            name: "_Differentiation",
            url: "https://github.com/differentiable-swift/swift-differentiation-stdlib/releases/download/603.3.1/_Differentiation-swift-6.3.3-RELEASE.xcframework.zip",
            checksum: "42481b055acdb30adf42f5141b6e5eabc8cca31efec38a84c0f232f70de3903a"
        ),
        .testTarget(
            name: "DifferentiationTests",
            dependencies: ["_Differentiation"]
        ),
    ]
)
