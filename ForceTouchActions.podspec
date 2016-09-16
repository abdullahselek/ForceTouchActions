Pod::Spec.new do |s|

    s.name                = 'ForceTouchActions'
    s.version             = '0.2'
    s.summary             = 'Objective-C wrapper for iOS Home Screen Quick Actions'
    s.homepage            = 'https://github.com/abdullahselek/ASToast'
    s.license             = {
        :type => 'MIT',
        :file => 'LICENSE'
    }
    s.author              = {
        'Abdullah Selek' => 'abdullahselek@yahoo.com'
    }
    s.source              = {
        :git => 'https://github.com/abdullahselek/ForceTouchActions.git',
        :tag => s.version.to_s
    }
    s.prefix_header_file = 'ForceTouchActions/ForceTouchActions-Prefix.pch'
    s.ios.deployment_target = '9.0'
    s.source_files        = 'ForceTouchActions/*.{h,m}'
    s.requires_arc        = true

end