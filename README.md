# swift-differentiation-stdlib
This repo wraps a precompiled static library of the `_Differentiation` module from the Swift standard library.
This is a required dependency for working with swift-differentiation on OS versions 26.4 and above. As of 26.4 the OSses no longer ship with the `_Differentiation` module as part of the system libraries.

Versioning of this library works similar to [swift-syntax](https://github.com/swiftlang/swift-syntax) where every compiler version will get a matching release. For example the matching release for Swift 6.3 will be `"603.0.0"`. 
