// swift-tools-version:5.3
import PackageDescription

let package = Package(
   name: "Shared",
   platforms: [
     .iOS(.v14),
   ],
   products: [
      .library(name: "Shared", targets: ["Shared"])
   ],
   targets: [
      .binaryTarget(
         name: "Shared",
         url: "https://github.com/romulomessias/kmp_lib/releases/download/v0.1.0-rc/Shared.xcframework.zip",
         checksum:"b866c433aac740bd8988759c32b13b485e3fa1d6ae244d1fde780a02ee56a949")
   ]
)