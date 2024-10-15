// swift-tools-version: 5.9
import PackageDescription

let package = Package(
  name: "IonicWatchConnectivity",
  platforms: [.iOS(.v13)],
  products: [
    .library(
      name: "IonicWatchConnectivity",
      targets: ["IonicWatchConnectivityPlugin"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main"),
  ],
  targets: [
    .target(
      name: "IonicWatchConnectivityPlugin",
      dependencies: [
        .product(name: "Capacitor", package: "capacitor-swift-pm"),
        .product(name: "Cordova", package: "capacitor-swift-pm"),
      ],
      path: "ios/Sources/IonicWatchConnectivityPlugin"
    ),
    .testTarget(
      name: "IonicWatchConnectivityPluginTests",
      dependencies: ["IonicWatchConnectivityPlugin"],
      path: "ios/Tests/IonicWatchConnectivityPluginTests"
    ),
  ]
)
