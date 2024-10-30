#
# Be sure to run `pod lib lint nvServiceExtSampleTest.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'nvServiceExtSampleTest'
  s.version          = '0.1.0'
  s.summary          = 'nvServiceExtSampleTest is sample pod for testing purpose only'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  This is sample pod for testing purpose only.
                       DESC
  s.homepage         = 'https://github.com/ashraf-nv/nvServiceExtSampleTest'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mohammad Ashraf Ali' => 'ashraf@notifyvisitors.com' }
  s.source           = { :git => 'https://github.com/ashraf-nv/nvServiceExtSampleTest.git', :tag => s.version.to_s }
  
  s.platform         = :ios
  s.ios.deployment_target = '12.0'
  s.requires_arc     = true
  
  s.preserve_path    = 'notifyvisitorsNotificationService.xcframework'
  s.vendored_frameworks = 'notifyvisitorsNotificationService.xcframework'
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
