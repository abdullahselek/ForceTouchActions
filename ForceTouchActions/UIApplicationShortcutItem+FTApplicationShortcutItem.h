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

/**
  * Category class of application shortcut item
 */
@interface UIApplicationShortcutItem (FTApplicationShortcutItem)

/**
  * Returns FTShortcut object from UIApplicationShortcutItem
  *
  * @param iconType FTActionsIconType
  *
  * @return FTShortcut object
 */
- (FTShortcut *)toShortcutWithIconType:(FTActionsIconType)iconType;

@end
