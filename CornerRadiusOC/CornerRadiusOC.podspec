#CornerRadiusOC.podspec
Pod::Spec.new do |s|
  s.name         = "CornerRadiusOC"
  s.version      = "1.0.0"
  s.summary      = "Quick view with corner radius."

  s.homepage     = "https://github.com/zthhhhhhhhh/CornerRadiusOC"
  s.license      = 'None'
  s.author       = { "Smooth" => "Smooth_Z@outlook.com" }
  s.platform     = :ios, "7.0"
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/zthhhhhhhhh/CornerRadiusOC.git", :tag => s.version}
  s.source_files  = 'CornerRadiusOC/CornerRadiusOC/RCView/*.{h,m}'
  s.requires_arc = true
end
