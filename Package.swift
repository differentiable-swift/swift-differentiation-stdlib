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
            checksum: "47e0f44a4c0eab9f12502e06d8260cb3ffb8a7c6a1ab442900f7fbcfa7876416"
        ),
        .testTarget(
            name: "DifferentiationTests",
            dependencies: ["_Differentiation"]
        ),
    ]
)
