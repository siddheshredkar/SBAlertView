


Pod::Spec.new do |spec|

  spec.name         = "SBAlertView"
  spec.version      = "1.0.0"
  spec.summary      = "The SBAlertView is Custom UIAlertView "
  spec.description  = "Make Your Application Alert,which goes/match with ur application Theme"
  spec.homepage     = "https://github.com/siddheshredkar/SBAlertView"
  spec.license      = "MIT"
  spec.author       = { "siddheshRedkar" => "siddheshredkar104@gmail.com" }
  spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://github.com/siddheshredkar/SBAlertView.git", :tag => "1.0.0" }
  spec.source_files = "SBAlertView/**/*.{h,m}"
  spec.swift_versions = "5.0"
  spec.framework  = "UIKit"

end
