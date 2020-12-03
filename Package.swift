// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "ZendeskSupportProvidersSDK",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "ZendeskSupportProvidersSDK",
            targets: [
              "ZendeskSupportProvidersSDKTargets"
            ]
        )
    ],
    dependencies: [
        .package(name: "ZendeskCoreSDK",
                 url: "https://github.com/zendesk/core_sdk_ios/releases/download/2.5.0/ZendeskCoreSDK.xcframework.zip",
                 from: "2.5.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "ZendeskSupportProvidersSDK",
            url: "https://github.com/zendesk/support_providers_sdk_ios/releases/download/5.2.0/SupportProvidersSDK.xcframework.zip",
            checksum: "14138eac76d55cf296d0941902b1b71161324b993fc6d7526c1f7034e201ce52"
        ),
        .target(name: "ZendeskSupportProvidersSDKTargets",
                dependencies: [
                    .target(name: "ZendeskSupportProvidersSDK"),
                    .product(name: "ZendeskCoreSDK", package: "ZendeskCoreSDK")
                ],
                path: "Sources"
        )
    ]
)
