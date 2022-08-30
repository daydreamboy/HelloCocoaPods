#
# Be sure to run `pod lib lint PodspecIgnoreWarnings.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PodspecIgnoreWarnings'
  s.version          = '0.1.0'
  s.summary          = 'A short description of PodspecIgnoreWarnings.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/[1;35;40m[Kacct[m[K<blob>=daydreamboy/PodspecIgnoreWarnings'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '[1;35;40m[Kacct[m[K<blob>=daydreamboy' => 'wesleychen.cl@alibaba-inc.com' }
  s.source           = { :git => 'https://github.com/[1;35;40m[Kacct[m[K<blob>=daydreamboy/PodspecIgnoreWarnings.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'PodspecIgnoreWarnings/Classes/**/*'
  
  # Note: CLANG_WARN_DOCUMENTATION_COMMENTS disable warnings for Documentation Issue
#  s.pod_target_xcconfig = {
#    'CLANG_WARN_DOCUMENTATION_COMMENTS' => 'NO',
#    'CLANG_WARN_STRICT_PROTOTYPES' => 'NO'
#  }
end
