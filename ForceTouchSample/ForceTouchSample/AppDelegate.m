//
//  AppDelegate.m
//  ForceTouchSample
//
//  Created by Abdullah Selek on 13/09/16.
//  Copyright © 2016 Abdullah Selek. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import <ForceTouchActions/ForceTouchActions.h>

@interface AppDelegate ()

@property (nonatomic) FTActions *forceTouchActions;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    self.window.rootViewController = [ViewController new];
    
    FTShortcut *shortcutFavorite = [[FTShortcut alloc] initWithType:UIApplicationShortcutIconTypeFavorite
                                                              title:@"Add Favorite"
                                                           subtitle:@"Favorite"
                                                               icon:[UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeFavorite]];
    FTShortcut *shortcutCompose = [[FTShortcut alloc] initWithType:UIApplicationShortcutIconTypeCompose
                                                             title:@"Compose Mail"
                                                          subtitle:@"Mail"
                                                              icon:[UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeCompose]];
    NSArray<FTShortcut *> *shortcuts = @[shortcutFavorite, shortcutCompose];
    
    UIViewController *rootViewController = self.window.rootViewController;
    NSString *bundleIdentifier = [NSBundle mainBundle].bundleIdentifier;
    self.forceTouchActions = [[FTActions alloc] initWithApplication:[UIApplication sharedApplication]
                                                           delegate:rootViewController
                                                   bundleIdentifier:bundleIdentifier
                                                          shortcuts:shortcuts
                                                      launchOptions:launchOptions];
    
    return YES;
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    FTShortcut *shortcutLocation = [[FTShortcut alloc] initWithType:UIApplicationShortcutIconTypeLocation
                                                              title:@"Location"
                                                           subtitle:nil
                                                               icon:[UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeLocation]];
    [self.forceTouchActions addShortcut:shortcutLocation application:application];
}

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

@end
