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

@protocol FTActionsSupport <NSObject>

- (void)prepareForTouchActionWithItem:(UIApplicationShortcutItem *)shortcutItem;

@end

@interface FTActions : NSObject

@property (nonatomic) NSString *bundleIdentifier;
@property (nonatomic) UIApplicationShortcutItem *shortcutItem;

- (instancetype)initWithApplication:(UIApplication *)application
                           delegate:(id)delegate
                   bundleIdentifier:(NSString *)bundleIdentifier
                          shortcuts:(NSArray<FTShortcut *> *)shortcuts
                      launchOptions:(NSDictionary *)launchOptions;

- (BOOL)handleWithDelegate:(nullable id)delegate shortcutItem:(UIApplicationShortcutItem *)shortcutItem;

@end

NS_ASSUME_NONNULL_END
