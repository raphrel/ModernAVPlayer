// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "ModernAVPlayer",
    platforms: [.iOS(.v10), .tvOS(.v10)],
    products: [
        .library(name: "ModernAVPlayer", targets: ["ModernAVPlayer"]),
        .library(name: "RxModernAVPlayer", targets: ["RxModernAVPlayer"])
    ],
	dependencies: [
		.package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0"))
	],
    targets: [
        .target(
			name: "ModernAVPlayer", 
			path: "Sources/Core"
		),
        .target(
			name: "RxModernAVPlayer",
			dependencies: [
				.target(name: "ModernAVPlayer"),
				.product(name: "RxSwift", package: "RxSwift"),
				.product(name: "RxCocoa", package: "RxSwift")
			],
			path: "Sources/RxModernAVPlayer"
		)
    ]
)

