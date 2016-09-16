[![Build Status](https://travis-ci.org/abdullahselek/ForceTouchActions.svg)](https://travis-ci.org/abdullahselek/ForceTouchActions.svg)
[![Coverage Status](https://coveralls.io/repos/github/abdullahselek/ForceTouchActions/badge.svg?branch=master)](https://coveralls.io/github/abdullahselek/ForceTouchActions?branch=master)

# ForceTouchActions
Objective-C wrapper for iOS Home Screen Quick Actions

ForceTouchActions wrapper creates dynamic quick actions. You can add localizable shortcuts dynamically in runtime and handle them with type.

# Requirements

iOS 9.0+

# CocoaPods

CocoaPods is a dependency manager for Cocoa projects. You can install it with the following command:

```objc
$ gem install cocoapods
```

To integrate ForceTouchActions into your Xcode project using CocoaPods, specify it in your Podfile:

```objc
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'ForceTouchActions', '0.2'
end
```

Then, run the following command:

```objc
$ pod install
```

## Usage

```objc
#import <ForceTouchActions/ForceTouchActions.h>
```

### Create shortcuts and add an array of shortcuts

```objc
	FTShortcut *shortcutFavorite = [[FTShortcut alloc] initWithType:UIApplicationShortcutIconTypeFavorite
                                                              title:@"Add Favorite"
                                                           subtitle:@"Favorite"
                                                               icon:[UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeFavorite]];
    FTShortcut *shortcutCompose = [[FTShortcut alloc] initWithType:UIApplicationShortcutIconTypeCompose
                                                             title:@"Compose Mail"
                                                          subtitle:@"Mail"
                                                              icon:[UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeCompose]];
    NSArray<FTShortcut *> *shortcuts = @[shortcutFavorite, shortcutCompose];
```

### Initiate ForceTouchActions with parameters to install the shortcuts

```objc
	UIViewController *rootViewController = self.window.rootViewController;
    NSString *bundleIdentifier = [NSBundle mainBundle].bundleIdentifier;
    self.forceTouchActions = [[FTActions alloc] initWithApplication:[UIApplication sharedApplication]
                                                           delegate:rootViewController
                                                   bundleIdentifier:bundleIdentifier
                                                          shortcuts:shortcuts
                                                      launchOptions:launchOptions];
```

### Add more shortcuts

```objc
- (void)applicationDidEnterBackground:(UIApplication *)application
{
    FTShortcut *shortcutLocation = [[FTShortcut alloc] initWithType:UIApplicationShortcutIconTypeLocation
                                                              title:@"Location"
                                                           subtitle:nil
                                                               icon:[UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeLocation]];
    [self.forceTouchActions addShortcut:shortcutLocation application:application];
}
```

### Handle action shortcuts on AppDelegate

```objc
- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler
{
    if (!self.forceTouchActions)
    {
        completionHandler(NO);
        return;
    }
    UIViewController *rootViewController = self.window.rootViewController;
    if (!rootViewController)
    {
        completionHandler(NO);
        return;
    }
    completionHandler([self.forceTouchActions handleWithDelegate:rootViewController shortcutItem:shortcutItem]);
}
```

### Add FTActionsSupport protocol to your viewcontroller

```objc
@interface ViewController : UIViewController<FTActionsSupport>
```

### handle in
```objc
- (void)prepareForTouchActionWithItem:(UIApplicationShortcutItem *)shortcutItem
```

# License
MIT License

Copyright (c) 2016 Abdullah Selek

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.