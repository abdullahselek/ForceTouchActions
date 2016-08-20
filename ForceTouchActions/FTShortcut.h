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

- (instancetype)initWithType:(UIApplicationShortcutIconType)type
                       title:(NSString *)title
                    subtitle:(nullable NSString *)subtitle
                        icon:(nullable UIApplicationShortcutIcon *)icon;

@end

NS_ASSUME_NONNULL_END