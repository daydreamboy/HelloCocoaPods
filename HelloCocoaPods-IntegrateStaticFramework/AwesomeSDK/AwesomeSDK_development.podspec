#
# Be sure to run `pod lib lint AwesomeSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AwesomeSDK'
  s.version          = '0.1.0'
  s.summary          = 'A short description of AwesomeSDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/daydreamboy/AwesomeSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'daydreamboy' => 'wesley4chen@gmail.com' }
  s.source           = { :git => 'https://github.com/daydreamboy/AwesomeSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'AwesomeSDK/Classes/**/*'
  
  # Note: support on CocoaPods v1.5, see https://github.com/CocoaPods/CocoaPods/issues/7428
  s.static_framework = true
  s.cocoapods_version = '>= 1.5'
  
  # s.resource_bundles = {
  #   'AwesomeSDK' => ['AwesomeSDK/Assets/*.png']
  # }

  s.public_header_files = 'AwesomeSDK/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  # Examples
  # s.pod_target_xcconfig = ...
  
  # Note: this only apply to the Pod Target
  #s.pod_target_xcconfig = { "CONFIGURATION_BUILD_DIR" => "$(PROJECT_DIR)/Product" }
  
  # Note: this will apply to App Target and all Pod Targets
  #s.xcconfig = { "CONFIGURATION_BUILD_DIR" => "$(PROJECT_DIR)/Product/$(CONFIGURATION)$(EFFECTIVE_PLATFORM_NAME)" }
end
