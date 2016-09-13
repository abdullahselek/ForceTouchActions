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
                    subtitle:(NSString *)subtitle
                        icon:(UIApplicationShortcutIcon *)icon
{
    self = [super init];
    if (self)
    {
        self.type = type;
        self.title = title;
        self.subtitle = subtitle;
        self.icon = icon;
    }
    return self;
}

- (UIApplicationShortcutItem *)toApplicationShortcutWithIdentifier:(NSString *)bundleIdentifier
{
    return [[UIMutableApplicationShortcutItem alloc] initWithType:[NSString stringWithFormat:@"%@.%ld", bundleIdentifier, (long) self.type] localizedTitle:self.title localizedSubtitle:self.subtitle icon:self.icon userInfo:nil];
}

@end
