//
//  FTShortcut.h
//  ForceTouchActions
//
//  Created by Abdullah Selek on 20/08/16.
//  Copyright © 2016 Abdullah Selek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FTShortcutIcon.h"

NS_ASSUME_NONNULL_BEGIN

@interface FTShortcut : NSObject

@property (nonatomic) UIApplicationShortcutIconType type;
@property (nonatomic) NSString *title;
@property (nonatomic, nullable) NSString *subtitle;
@property (nonatomic, nullable) UIApplicationShortcutIcon *icon;

/**
  * Initializes a new shortcut item
  *
  * @param type shortcut type
  * @param title shortcut title
  * @param subtitle shortcut subtitle
  * @param icon Icon
  *
  * @return FTShortcut
 */
- (instancetype)initWithType:(UIApplicationShortcutIconType)type
                       title:(NSString *)title
                    subtitle:(nullable NSString *)subtitle
                        icon:(nullable UIApplicationShortcutIcon *)icon;

/**
  * Returns a shortcut application shortcut with identifier
  *
  * @param bundleIdentifier
  *
  * @return UIApplicationShortcutItem
 */
- (UIApplicationShortcutItem *)toApplicationShortcutWithIdentifier:(NSString *)bundleIdentifier;

@end

NS_ASSUME_NONNULL_END