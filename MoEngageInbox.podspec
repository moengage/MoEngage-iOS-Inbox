
Pod::Spec.new do |s|

  s.name         = 'MoEngageInbox'
  s.version      = '2.16.2'
  s.summary      = 'MoEngage Inbox Campaigns for iOS'
  s.description  = <<-DESC
                 Inbox is a drop-in view controller which contains the read and unread push notifications.
                   DESC

  s.homepage     = 'https://www.moengage.com'
  s.documentation_url = 'https://developers.moengage.com'
  s.license      = { :type => 'Commercial', :file => 'LICENSE' }
  s.author       = { 'MobileDev' => 'mobiledevs@moengage.com' }
  s.social_media_url   = 'https://twitter.com/moengage'
  s.platform     = :ios
  s.ios.deployment_target = '11.0'

  s.source       = {
    :http => "https://github.com/moengage/MoEngage-iOS-Inbox/releases/download/#{s.version}/MoEngageInbox.xcframework.zip", 
    :sha256 => '04c28f1f9ce5dd07d6856d62bdb27095cf377680ab17c34cac2d14cb11d30224'
  }
                    
  s.ios.vendored_frameworks = 'MoEngageInbox.xcframework'
  s.requires_arc = true
  s.frameworks = 'Foundation', 'UIKit', 'ImageIO'
  s.dependency 'MoEngage-iOS-SDK', '>= 9.17.2', '< 9.18.0'
  s.dependency 'MoEngageRichNotification', '>= 7.16.0', '< 7.17.0'
end
