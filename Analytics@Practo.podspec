Pod::Spec.new do |s|
  s.name             = "Analytics@Practo"
  s.version          = "3.8.0-beta.1"
  s.summary          = "The hassle-free way to add analytics to your iOS app."

  s.description      = <<-DESC
                       Analytics for iOS provides a single API that lets you
                       integrate with over 100s of tools.
                       DESC

  s.homepage         = "https://github.com/practo/analytics-ios"
  s.license          =  { :type => 'MIT', :file => "LICENSE" }
  s.author           = { "Sumeet Gupta" => "sumeet.gupta@practo.com" }
  s.source           = { :git => "https://github.com/practo/analytics-ios", :tag => s.version.to_s }

  s.ios.deployment_target = '7.0'
  s.tvos.deployment_target = '9.0'

  s.ios.frameworks = 'CoreTelephony'
  s.frameworks = 'Security', 'StoreKit', 'SystemConfiguration', 'UIKit'

  s.source_files = [
    'Analytics/Classes/**/*',
    'Analytics/Vendor/**/*'
  ]
end
