# Kotlin Multiplatform Library POC

![Version](https://img.shields.io/badge/version-0.1.0-orange)

A Kotlin Multiplatform library that provides cross-platform functionality for Android and iOS applications.

## Overview

KMP_Lib is a lightweight Kotlin Multiplatform library designed to share code between Android and iOS platforms. It provides a foundation for building cross-platform features while maintaining native performance and user experience.

## Supported Platforms

- **Android**: API Level 30+ (Android 11.0+)
- **iOS**: iOS 14.0+ (arm64, x64)
  - iPhone
  - iPad
  - iOS Simulator

## Installation

### Android

```kotlin
// settings.gradle.kts
dependencyResolutionManagement {
    repositories {
        // Add your repository configuration here
        google()
        mavenCentral()
    }
}

// build.gradle.kts (app module)
dependencies {
    implementation("br.com.stade:kmplib:0.1.0")
}
```

### iOS

```swift
// Swift Package Manager
dependencies: [
    .package(url: "https://github.com/yourusername/KMP_Lib", from: "0.1.0")
]

// CocoaPods
pod 'KMP_Lib', '~> 0.1.0'
```

## Usage

```kotlin
// Kotlin
import br.com.stade.kmplib.Greeting

val greeting = Greeting()
val message = greeting.greet() // Returns: "Hello, [Platform Name]!"
```

```swift
// Swift
import Shared

let greeting = Greeting()
let message = greeting.greet() // Returns: "Hello, iOS!"
```

## Features

- Platform-specific implementations with a common API
- Lightweight with minimal dependencies
- Easy integration with existing projects

## Running Tests

### Android/Common Tests

```bash
# Run all tests
./gradlew test

# Run only Android tests
./gradlew :shared:testDebugUnitTest

# Run only common tests
./gradlew :shared:testCommonUnitTest
```

### iOS Tests

```bash
# Run iOS tests from command line
./gradlew :shared:iosSimulatorArm64Test
```

Alternatively, you can run iOS tests directly from Xcode by opening the generated Xcode project and using the test navigator.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the Apache License 2.0 - see the LICENSE file for details.

## Contact

For questions or feedback, please contact [your-email@example.com](mailto:your-email@example.com).
