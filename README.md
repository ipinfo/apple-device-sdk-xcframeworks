# IPinfoKit

Pre-built XCFrameworks for the [IPinfoKit](https://github.com/ipinfo/ios-data-sdk) device SDK.

## Requirements

- **iOS 14+** (the frameworks also build for macOS 15+).
- **A real device for Wi-Fi data** — Wi-Fi network details are unavailable in the Simulator.
- **Access Wi-Fi Information entitlement** — add the `com.apple.developer.networking.wifi-info` capability to your app target.
- **Location usage string** — the SDK requests When-In-Use location authorization to improve Wi-Fi accuracy, so add an `NSLocationWhenInUseUsageDescription` value to your `Info.plist`. Without it, the app crashes when authorization is requested.

## Installation

### Xcode

File → Add Package Dependencies… → enter:

https://github.com/ipinfo/apple-device-sdk-xcframeworks

Pick the latest version (see [Releases](https://github.com/ipinfo/apple-device-sdk-xcframeworks/releases)).

### Package.swift

```swift
dependencies: [
    .package(url: "https://github.com/ipinfo/apple-device-sdk-xcframeworks", exact: "0.6.0")
]
```

Then add the IPinfoKit product to your target:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "IPinfoKit", package: "apple-device-sdk-xcframeworks"),
    ]
)
```

## Usage

IPInfoMonitor is an AsyncSequence. Create one and iterate it to receive an update whenever the device's network conditions change:

```swift
import IPinfoKit

let monitor = IPInfoMonitor()

for await update in monitor {
    print(update)
}
```
