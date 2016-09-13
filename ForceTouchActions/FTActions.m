//
//  FTActions.m
//  ForceTouchActions
//
//  Created by Abdullah Selek on 20/08/16.
//  Copyright © 2016 Abdullah Selek. All rights reserved.
//

#import "FTActions.h"

@implementation FTActions

- (instancetype)initWithApplication:(UIApplication *)application
                           delegate:(id)delegate
                   bundleIdentifier:(NSString *)bundleIdentifier
                          shortcuts:(NSArray<FTShortcut *> *)shortcuts
                      launchOptions:(NSDictionary *)launchOptions
{
    self = [super init];
    if (self)
    {
        _bundleIdentifier = bundleIdentifier;
        if ([[[UIDevice currentDevice] systemVersion] compare:FTAvailableVersion options:NSNumericSearch] != NSOrderedAscending)
        {
            [self installWithShortcuts:shortcuts application:application];
            _shortcutItem = (UIApplicationShortcutItem *) launchOptions[UIApplicationLaunchOptionsShortcutItemKey];
        }
    }
    return self;
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
    if ([delegate respondsToSelector:@selector(prepareForTouchActionWithItem:)]) {
        [delegate prepareForTouchActionWithItem:shortcutItem];
        return YES;
    }
    return NO;
}

- (void)addShortcuts:(NSArray<FTShortcut *> *)shortcuts application:(UIApplication *)application
{
    NSMutableArray *shortcutItems = [NSMutableArray arrayWithCapacity:[shortcuts count]];
    [shortcuts enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        id mapObj = [(FTShortcut *) obj toApplicationShortcutWithIdentifier:self.bundleIdentifier];
        [shortcutItems addObject:mapObj];
    }];
    if (application.shortcutItems)
    {
        [shortcutItems addObject:application.shortcutItems];
    }
    application.shortcutItems = shortcutItems;
}

- (void)addShortcut:(FTShortcut *)shortcut application:(UIApplication *)application
{
    [self addShortcuts:@[shortcut] application:application];
}

- (void)removeShortcut:(FTShortcut *)shortcut application:(UIApplication *)application
{
    if (application.shortcutItems)
    {
        NSUInteger index = [application.shortcutItems indexOfObject:[shortcut toApplicationShortcutWithIdentifier:self.bundleIdentifier]];
        if (index > -1)
        {
            NSMutableArray *shortcutItems = [NSMutableArray arrayWithArray:application.shortcutItems];
            [shortcutItems removeObjectAtIndex:index];
            application.shortcutItems = shortcutItems;
        }
    }
}

- (void)clearShortcutItems:(UIApplication *)application
{
    application.shortcutItems = nil;
}

@end
