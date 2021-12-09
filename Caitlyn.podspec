#
# Be sure to run `pod lib lint Caitlyn.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Caitlyn'
  s.version          = '1.1.1'
  s.summary          = 'Distance between user face and screen by face tracker.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://git.corp.hetao101.com/app/component-ios/Caitlyn'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = '核桃编程'
  s.source           = { :git => 'https://git.corp.hetao101.com/app/component-ios/Caitlyn.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'
  s.static_framework = true

  # s.requires_arc = 'Caitlyn/Classes/Arc'
  s.source_files = 'Caitlyn/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Caitlyn' => ['Caitlyn/Assets/*.png']
  # }

  # s.public_header_files = 'Caitlyn/Classes/Public/*.h'
  # s.public_header_files = 'Caitlyn/Classes/Private/*.h'

  # s.frameworks = 'UIKit', 'MapKit'
  # s.libraries = 'xml2', 'z'

  # s.dependency 'AFNetworking', '~> 2.3'
  
  # s.ios.vendored_library = 'Caitlyn/Assets/libProj4.a'
  # s.ios.vendored_frameworks = 'Caitlyn/Assets//MyFramework.framework'
end
