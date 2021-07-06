// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "GCDWebServers",
    products: [
        .library(
            name: "GCDWebServers",
            targets: ["GCDWebServers"]
        ),
    ],
    targets: [
        .target(
            name: "GCDWebServers",
            path: ".",
            exclude: [
                "Frameworks",
                "iOS",
                "Mac",
                "Tests",
                "tvOS",
                "Package.swift",
                "GCDWebServer.podspec",
                "Run-Tests.sh",
                "format-source.sh",
                "README.md",
                "LICENSE"
            ],
            resources: [
                .process("GCDWebUploader/GCDWebUploader.bundle"),
            ],
            cSettings:[
                .headerSearchPath("GCDWebServer/Core"),
                .headerSearchPath("GCDWebServer/Requests"),
                .headerSearchPath("GCDWebServer/Responses"),
            ]),
    ]
)
