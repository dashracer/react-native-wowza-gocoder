require 'json'
version = JSON.parse(File.read('package.json'))["version"]

Pod::Spec.new do |s|

  s.name            = "RNWowzaBroadcaster"
  s.version         = version
  s.homepage        = "no"
  s.summary         = "no"
  s.license         = "MIT"
  s.author          = { "" => "" }
  s.ios.deployment_target = '7.0'
  s.tvos.deployment_target = '9.0'
  s.source          = { :git => "https://github.com/maxmcd/react-native-wowza-gocoder.git", :tag => "#{s.version}" }
  s.source_files    = 'ios/*.{h,m}', 'WowzaGoCoderSDK.framework/Headers/*.h'
  s.preserve_paths  = "**/*.js"
  s.ios.vendored_frameworks = 'WowzaGoCoderSDK.framework'

  s.dependency 'React'

end
