// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "ReveChatSDK_CPrime",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "ReveChatSDK_CPrime",
            targets: ["ReveChatSDK_CPrime"]
        )
    ],
    dependencies: [
    ],
    targets: [
        // Remote XCFramework - ReveChatSDK_CPrime
        .binaryTarget(
            name: "ReveChatSDK_CPrimeBinary",
            url: "https://github.com/revesaurabhsystem2022/ReveChatSDK_CPrime/releases/download/1.0.0/ReveChatSDK_CPrime.xcframework.zip",
            checksum: "557977e6373c5a58eabdbc7012a3f219aba0f934d1bcbe69bb9488aeb76b0c4f"
        ),

        // Remote XCFramework - AFNetworking
        .binaryTarget(
            name: "AFNetworking",
            url: "https://github.com/revesaurabhsystem2022/ReveChatSDK_CPrime/releases/download/1.0.0/AFNetworking.xcframework.zip",
            checksum: "3210d9a5508febc628bdc611766c68870a2c1211261ecfb907db5220ac459f8a"
        ),

        // Remote XCFramework - WebRTC
        .binaryTarget(
            name: "WebRTC",
            url: "https://github.com/revesaurabhsystem2022/ReveChatSDK_CPrime/releases/download/1.0.0/WebRTC.xcframework.zip",
            checksum: "0adcbddd9339ecdbb5905ea195710319c32e9e5f0a13075fb0a0ab8ae62265e4"
        ),

        // Wrapper Target
        .target(
            name: "ReveChatSDK_CPrime",
            dependencies: [
                "ReveChatSDK_CPrimeBinary",
                "AFNetworking",
                "WebRTC"
            ],
            path: "Sources/ReveChatSDK_CPrime",
            publicHeadersPath: "include"
        )
    ]
)
