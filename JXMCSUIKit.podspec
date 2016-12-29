Pod::Spec.new do |s|
  s.name         = "JXMCSUIKit"
  s.version      = "2.3.5"
  s.summary      = "JXMCSUIKit"
  s.description  = "UIKit for mcsuer"
  s.homepage     = "https://github.com/jiaxincloud/JXMCSUIKit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "jiaxin" => "github@jiaxincloud.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/jiaxincloud/JXMCSUIKit.git", :tag => s.version.to_s }
  s.source_files  = "JXUIKit/**/*.{h,m,mm,a}"
  s.resource  = "JXUIKit/JXUIResources.bundle"
  s.requires_arc = true
  s.vendored_libraries = ['JXUIKit/**/*.a']
  s.dependency "JXSDK_MCS"
end
