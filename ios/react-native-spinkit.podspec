# Copied verbatim from React Native's podspec file.

require 'json'

package = JSON.parse(File.read(File.join(__dir__, '../package.json')))

Pod::Spec.new do |s|
  s.name                = "react-native-spinkit"
  s.version             = package['version']
  s.summary             = package['description'][0..42] + "..." # Summarize
  s.description         = package['description']
  s.homepage            = "https://github.com/maxs15/react-native-spinkit.git"
  s.license             = package['license']
  s.author              = package['author']
  s.source              = { :git =>  "https://github.com/maxs15/react-native-spinkit.git", :tag => "v#{s.version}" }
  s.requires_arc        = true
  s.platform            = :ios, "8.0"

  s.source_files = "*.{c,h,m,s}"
  s.dependency 'SpinKit', '~> 1.2'
end
