require 'json'
package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-smart-barcode"
  s.version      = package['version']
  s.summary      = "barcode"
  s.description  = package['description']
  s.homepage     = "https://github.com/sinlyly/react-native-smart-barcode"
  s.license      = package['license']
  s.author       = package['author']
  s.platform     = :ios, "8.0"
  s.source                 = { :git => 'https://github.com/sinlyly/react-native-smart-barcode.git', :tag => s.version }
  s.source_files  = "ios/**/**/*.{h,m}"
  s.requires_arc = true

  s.dependency 'React'
end
