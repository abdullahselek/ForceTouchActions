//
//  UIApplicationShortcutItem+FTApplicationShortcutItem.m
//  ForceTouchActions
//
//  Created by Abdullah Selek on 10/09/16.
//  Copyright © 2016 Abdullah Selek. All rights reserved.
//

#import "UIApplicationShortcutItem+FTApplicationShortcutItem.h"

@implementation UIApplicationShortcutItem (FTApplicationShortcutItem)

- (FTShortcut *)toShortcutWithIconType:(FTActionsIconType)iconType
{
    return [[FTShortcut alloc] initWithType:[FTActionsIcon toShortcutIconType:iconType]
                                      title:self.localizedTitle
                                   subtitle:self.localizedSubtitle];
}

@end
