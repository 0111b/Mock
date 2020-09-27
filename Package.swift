// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Mock",
  products: [
    .library(name: "Mock", targets: ["Mock"])
  ],
  dependencies: [],
  targets: [
    .target(
      name: "Mock",
      dependencies: [
      ]),
  ]
)
