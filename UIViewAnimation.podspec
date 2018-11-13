Pod::Spec.new do |s|
  s.name         = "UIViewAnimation"
  s.version      = "1.0.0"
  s.summary      = "Animation extension for UIView."
  s.description  = <<-DESC
                   It is a animation extension for UIView.
                   DESC

  s.homepage     = "https://github.com/venwu1984/UIViewAnimation"
  s.license      = "MIT"
  s.author       = { "ven.wu" => "ven.wu.github@gmail.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/venwu1984/UIViewAnimation.git", :tag => s.version }
  s.requires_arc = true
  s.source_files = "Classes/*.{swift}"
  s.swift_version = "4.2"
end
