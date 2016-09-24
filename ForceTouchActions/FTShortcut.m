//
//  FTShortcut.m
//  ForceTouchActions
//
//  Created by Abdullah Selek on 20/08/16.
//  Copyright © 2016 Abdullah Selek. All rights reserved.
//

#import "FTShortcut.h"

@implementation FTShortcut

- (instancetype)initWithType:(UIApplicationShortcutIconType)type
                       title:(NSString *)title
                    subtitle:(nullable NSString *)subtitle
{
    self = [super init];
    if (self)
    {
        self.type = type;
        self.title = title;
        self.subtitle = subtitle;
        self.icon = [FTShortcutIcon getApplicationShortcutIconWithType:self.type];
    }
    return self;
}

- (instancetype)initWithType:(UIApplicationShortcutIconType)type
                       title:(NSString *)title
                    subtitle:(nullable NSString *)subtitle
                    iconName:(nullable NSString *)iconName
{
    self = [super init];
    if (self)
    {
        self.type = type;
        self.title = title;
        self.subtitle = subtitle;
        if (iconName)
        {
            self.icon = [FTShortcutIcon getApplicationShortIconWithName:iconName];
        }
    }
    return self;
}

- (UIApplicationShortcutItem *)toApplicationShortcutWithIdentifier:(NSString *)bundleIdentifier
{
    return [[UIApplicationShortcutItem alloc] initWithType:[NSString stringWithFormat:@"%@.%ld", bundleIdentifier, (long) self.type] localizedTitle:self.title localizedSubtitle:self.subtitle icon:self.icon userInfo:nil];
}

@end
