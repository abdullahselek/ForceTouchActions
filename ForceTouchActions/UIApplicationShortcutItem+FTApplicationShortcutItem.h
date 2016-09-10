//
//  UIApplicationShortcutItem+FTApplicationShortcutItem.h
//  ForceTouchActions
//
//  Created by Abdullah Selek on 10/09/16.
//  Copyright © 2016 Abdullah Selek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FTShortcut.h"
#import "FTActionsIcon.h"

@interface UIApplicationShortcutItem (FTApplicationShortcutItem)

- (FTShortcut *)toShortcutWithIconType:(FTActionsIconType)iconType;

@end
