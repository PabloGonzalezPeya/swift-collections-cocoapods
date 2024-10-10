Pod::Spec.new do |s|
  s.name         = "SwiftCollections"
  s.version      = "1.0.0"  # Update this version as per your tag
  s.summary      = "Swift Collections provides high-performance data structures in the Swift programming language."
  s.description  = <<-DESC
    The Swift Collections package provides a variety of highly performant data structures designed for Swift.
  DESC
  s.homepage     = "https://github.com/apple/swift-collections"
  s.license      = { :type => "Apache 2.0", :file => "LICENSE" }
  s.author       = { "Apple Inc." => "swift.org" }
  s.source       = { :git => "https://github.com/tu-usuario/tu-fork.git", :tag => s.version.to_s }
  
  s.ios.deployment_target = '12.0'
  s.swift_version = '5.7'

  s.source_files = 'Sources/**/*.{swift}'
  s.exclude_files = [
    'Sources/**/CMakeLists.txt',
    'Sources/**/*.gyb',
    'Sources/**/Compatibility/*.gyb',
    'Sources/**/README.md',
    'Sources/**/Documentation.docc',
    'Sources/**/**/*.md',
    'Sources/**/Package.swift',
    # Exclude any other non-source files or directories as needed
  ]

  # Define COLLECTIONS_SINGLE_MODULE using OTHER_SWIFT_FLAGS
  s.pod_target_xcconfig = {
    'OTHER_SWIFT_FLAGS' => '$(inherited) -DCOLLECTIONS_SINGLE_MODULE'
  }
end
