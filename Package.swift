// swift-tools-version: 6.0
import PackageDescription
let package = Package(
	name: "IPinfoKit",
	platforms: [
		.iOS(.v14),
		.macOS(.v15),
	],
	products: [
		.library(name: "IPinfoKit", targets: ["IPinfoKit", "HTTPClient", "Hopscotch"]),
	],
	targets: [
		.binaryTarget(
			name: "IPinfoKit",
			url: "https://github.com/ipinfo/apple-device-sdk-xcframeworks/releases/download/0.3.1/IPinfoKit.xcframework.zip",
			checksum: "a0da9885e787329e7a932ee5b5e449fadd5d77ab1a133cab20b7b0c14fbf3c3f"
		),
		.binaryTarget(
			name: "HTTPClient",
			url: "https://github.com/ipinfo/apple-device-sdk-xcframeworks/releases/download/0.3.1/HTTPClient.xcframework.zip",
			checksum: "76a05b817d8735be2f02501f352e18c948e8f94a5996f1401634d61bd6d7f88a"
		),
		.binaryTarget(
			name: "Hopscotch",
			url: "https://github.com/ipinfo/apple-device-sdk-xcframeworks/releases/download/0.3.1/Hopscotch.xcframework.zip",
			checksum: "1ec0405f1e34796791e100056fd4f9d1bd7fc40b1cf8bbbe5c963eee6b13f1b1"
		),
	]
)
