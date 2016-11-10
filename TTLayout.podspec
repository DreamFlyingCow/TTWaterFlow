Pod::Spec.new do |s|

  s.name         = "TTLayout"
  s.version      = "1.0.0"
  s.ios.deployment_target = '7.0'
  s.summary      = "It is just a custom layout for flow layout, and it can auto calculate the height of the item, and arrange them"
  s.homepage     = "https://github.com/DreamFlyingCow/TTWaterFlow"
  s.license      = " :type => "MIT", :file => "LICENSE" "
  s.author             = { "ZCH" => "dreamflyingcow@126.com" }
  s.social_media_url   = "http://www.weibo.com/u/2198542311"
  s.source       = { :git => "https://github.com/DreamFlyingCow/TTWaterFlow.git", :tag => "s.version" }
  s.source_files  = "TTLayout/*"
  s.resources     = "TTLayout/TTLayout.bundle"
  s.requires_arc = true

end
