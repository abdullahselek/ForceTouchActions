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

- (void)initWithApplication:(UIApplication *)application
                   delegate:(id)delegate
           bundleIdentifier:(NSString *)bundleIdentifier
                  shortcuts:(NSArray<FTShortcut *> *)shortcuts
              launchOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
