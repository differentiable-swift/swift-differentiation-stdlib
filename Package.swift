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
            url: "https://github.com/differentiable-swift/swift-differentiation-stdlib/releases/download/604.0.0-prerelease-4/_Differentiation-swift-6.4.x-DEVELOPMENT-SNAPSHOT-2026-08-28-a.xcframework.zip",
            checksum: "25310d20bf35b0d25c2905a7dd3a037aa357ec1ded200e545e7e42824426dc2e"
        ),
        .testTarget(
            name: "DifferentiationTests",
            dependencies: ["_Differentiation"]
        ),
    ]
)
