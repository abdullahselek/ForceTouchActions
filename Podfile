platform :ios, '9.0'
use_frameworks!

def product_pods
	pod 'ForceTouchActions', :path => '.'
end

def testing_pods
	pod 'OCMock', '~> 3.3'
	pod 'Expecta', '~> 1.0'
	pod 'Quick'
end

workspace 'ForceTouchActions.xcworkspace'
project 'ForceTouchActions.xcodeproj'
project 'ForceTouchSample/ForceTouchSample.xcodeproj'

target 'ForceTouchActionsTests' do
	project 'ForceTouchActions.xcodeproj'
   		inherit! :search_paths
   		testing_pods
end

target 'ForceTouchSample' do
	product_pods
end
