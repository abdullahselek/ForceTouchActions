//
//  FTActions.m
//  ForceTouchActions
//
//  Created by Abdullah Selek on 20/08/16.
//  Copyright © 2016 Abdullah Selek. All rights reserved.
//

#import "FTActions.h"

@implementation FTActions

- (void)initWithApplication:(UIApplication *)application
                   delegate:(id)delegate
           bundleIdentifier:(NSString *)bundleIdentifier
                  shortcuts:(NSArray<FTShortcut *> *)shortcuts
              launchOptions:(NSDictionary *)launchOptions
{
    _bundleIdentifier = bundleIdentifier;
    if ([[[UIDevice currentDevice] systemVersion] compare:FTAvailableVersion options:NSNumericSearch] != NSOrderedAscending)
    {
        [self installWithShortcuts:shortcuts application:application];
        UIApplicationShortcutItem *shortcutItem = (UIApplicationShortcutItem *) launchOptions[UIApplicationLaunchOptionsShortcutItemKey];
        [self handleWithDelegate:delegate shortcutItem:shortcutItem];
    }
}

- (void)installWithShortcuts:(NSArray<FTShortcut *> *)shortcuts application:(UIApplication *)application
{
    NSMutableArray *shortcutItems = [NSMutableArray arrayWithCapacity:[shortcuts count]];
    [shortcuts enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        id mapObj = [(FTShortcut *) obj toApplicationShortcutWithIdentifier:self.bundleIdentifier];
        [shortcutItems addObject:mapObj];
    }];
    application.shortcutItems = shortcutItems;
}

- (BOOL)handleWithDelegate:(id)delegate shortcutItem:(UIApplicationShortcutItem *)shortcutItem
{
    return [self handleWithDelegate:delegate shortcutItem:shortcutItem];
}

- (BOOL)handleWithDelegate:(id)delegate shortcut:(UIApplicationShortcutItem *)shortcutItem
{
    if ([delegate respondsToSelector:@selector(prepareForTouchActionWithItem:)]) {
        [delegate prepareForTouchActionWithItem:shortcutItem];
        return true;
    }
    return false;
}

@end
