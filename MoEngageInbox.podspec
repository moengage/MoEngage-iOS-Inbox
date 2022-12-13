
Pod::Spec.new do |s|

  s.name         = 'MoEngageInbox'
  s.version      = '2.1.0'
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
  s.ios.deployment_target = '10.0'

  s.source       = { 
                    :git => 'https://github.com/moengage/MoEngage-iOS-Inbox.git', 
                    :tag => 'inbox-' + s.version.to_s
                    }
                    
  s.ios.vendored_frameworks = 'Frameworks/MoEngageInbox.xcframework'
  s.requires_arc = true
  s.frameworks = 'Foundation', 'UIKit', 'ImageIO'
  s.dependency 'MoEngage-iOS-SDK', '>= 9.1.0', '< 9.2.0'
  s.dependency 'MoEngageRichNotification', '>= 7.1.0', '< 7.2.0'
end
