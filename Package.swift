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
			url: "https://github.com/ipinfo/apple-device-sdk-xcframeworks/releases/download/0.6.4/IPinfoKit.xcframework.zip",
			checksum: "a31afd8d4e267a9d6eb8c768d3a076890a8d6568049530c37af02330f7ad7306"
		),
		.binaryTarget(
			name: "HTTPClient",
			url: "https://github.com/ipinfo/apple-device-sdk-xcframeworks/releases/download/0.6.4/HTTPClient.xcframework.zip",
			checksum: "817dc9d9976c6adc87b4eb0976f143022b7c9a687fec35482eefbbbcd54d84df"
		),
		.binaryTarget(
			name: "Hopscotch",
			url: "https://github.com/ipinfo/apple-device-sdk-xcframeworks/releases/download/0.6.4/Hopscotch.xcframework.zip",
			checksum: "705204031d772d8156b337e44e2f17c4074492bd323485e2d39c8d4241a5ab75"
		),
	]
)
