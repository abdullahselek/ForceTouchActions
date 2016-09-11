//
//  FTActions.h
//  ForceTouchActions
//
//  Created by Abdullah Selek on 20/08/16.
//  Copyright © 2016 Abdullah Selek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FTShortcut.h"
#import "FTActionsIcon.h"

NS_ASSUME_NONNULL_BEGIN

/**
  * Delegate for handling action
 */
@protocol FTActionsSupport <NSObject>

/**
  * Handle action with shortcut item
  *
  * @param shortcutItem
 */
- (void)prepareForTouchActionWithItem:(UIApplicationShortcutItem *)shortcutItem;

@end

/**
  * Actions handler
 */
@interface FTActions : NSObject

/**
  * Application bundle identifier
 */
@property (nonatomic) NSString *bundleIdentifier;

/**
  * Application shortcut item
 */
@property (nonatomic) UIApplicationShortcutItem *shortcutItem;

/**
  * Initiate actions handler with parameters
  *
  * @param application UIApplication
  * @param delegate Delegate to handle action
  * @param bundleIdentifier Application bundle id
  * @param shortcuts FTShortcuts
  * @param launchOptions Application launchOptions
 */
- (instancetype)initWithApplication:(UIApplication *)application
                           delegate:(id)delegate
                   bundleIdentifier:(NSString *)bundleIdentifier
                          shortcuts:(NSArray<FTShortcut *> *)shortcuts
                      launchOptions:(NSDictionary *)launchOptions;

/**
  * Handle action with delegate
  *
  * @param delegate Delegate to handle action
  * @param shortcutItem UIApplicationShortcutItem
 */
- (BOOL)handleWithDelegate:(nullable id)delegate shortcutItem:(UIApplicationShortcutItem *)shortcutItem;

/**
  * Add shortcuts to application
  *
  * @param shortcuts Array of custom shortcuts
  * @param application UIApplication
 */
- (void)addShortcuts:(NSArray<FTShortcut *> *)shortcuts application:(UIApplication *)application;

/**
  * Add shortcut to application
  *
  * @param shortcut Shortcut
  * @param application UIApplication
 */
- (void)addShortcut:(FTShortcut *)shortcut application:(UIApplication *)application;

@end

NS_ASSUME_NONNULL_END
