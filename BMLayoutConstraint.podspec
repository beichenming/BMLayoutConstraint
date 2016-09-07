Pod::Spec.new do |s|
    s.name         = 'BMLayoutConstraint'
    s.version      = '1.0.4'
    s.summary      = 'a good UI layout adaptation tool.'
    s.homepage     = 'https://github.com/beichenming/BMLayoutConstraint'
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.description  = <<-DESC
                   BMLayoutConstraint is a UI layout adaptation tool, through the JSON configuration file to form fast adaptation to different device and multi language UI layout，apply to iOS and Mac OSX application development，which implement by Objective-C.
                   DESC
    s.authors      = { "beichenming" => "beichenming@163.com" }
    s.platform     = :ios, '8.0'
    s.source       = { :git => "https://github.com/beichenming/BMLayoutConstraint.git", :tag => "1.0.4" }
    s.source_files = 'BMLayoutConstraint/*.{h,m}', 'BMLayoutConstraint/Extension/*.{h,m}'
    s.framework    = 'UIKit','Foundation'
    s.requires_arc = true
end
