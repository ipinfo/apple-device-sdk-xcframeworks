# IPinfoKit

Pre-built XCFrameworks for the IPinfoKit device SDK.

## Installation

### Xcode

File → Add Package Dependencies → Enter:
https://github.com/ipinfo/apple-device-sdk-xcframeworks

### Package.swift

See [Releases](https://github.com/ipinfo/apple-device-sdk-xcframeworks/releases) for the latest version.

```swift
dependencies: [
    .package(url: "https://github.com/ipinfo/apple-device-sdk-xcframeworks", exact: "<#version#>")
]
```

Then add IPinfoKit to your target's dependencies:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "IPinfoKit", package: "apple-device-sdk-xcframeworks"),
    ]
)
```

## Usage

```swift
import IPinfoKit
let monitor = IPInfoMonitor()
for await update in monitor.start() {
    print(update)
}
```
