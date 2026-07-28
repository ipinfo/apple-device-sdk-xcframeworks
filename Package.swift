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
			url: "https://github.com/ipinfo/apple-device-sdk-xcframeworks/releases/download/0.6.0/IPinfoKit.xcframework.zip",
			checksum: "25bc5e9cede924e870eee4cc0ca9db44f34adef4e7fff9f2e49f46029cbfb551"
		),
		.binaryTarget(
			name: "HTTPClient",
			url: "https://github.com/ipinfo/apple-device-sdk-xcframeworks/releases/download/0.6.0/HTTPClient.xcframework.zip",
			checksum: "f7615b596cb6fa35f9954ab3c083c7a7f290324b47043e242f0c9e18e9bb5671"
		),
		.binaryTarget(
			name: "Hopscotch",
			url: "https://github.com/ipinfo/apple-device-sdk-xcframeworks/releases/download/0.6.0/Hopscotch.xcframework.zip",
			checksum: "bb547dfefad20b1e42d15e45676c16e14533f6b383b3dd671a995bb99b0b071f"
		),
	]
)
