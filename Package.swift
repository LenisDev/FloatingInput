// swift-tools-version:5.1

import PackageDescription

let package = Package(name: "FloatingInput",
                      platforms: [.iOS(.v11)],
                      products: [.library(name: "FloatingInput",
                                          targets: ["FloatingInput"])],
                      targets: [.target(name: "FloatingInput",
                                        path: "Source"),
                                .testTarget(name: "FloatingInputTests",
                                            dependencies: ["FloatingInput"],
                                            path: "Source/FloatingInputTests")],
                      swiftLanguageVersions: [.v5])
