//
//  FTShortcutIcon.h
//  ForceTouchActions
//
//  Created by Abdullah Selek on 20/08/16.
//  Copyright © 2016 Abdullah Selek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FTShortcutIcon : NSObject

/**
  * Returns application shortcut icon with given type
  *
  * @param iconType Icon Type
 */
+ (UIApplicationShortcutIcon *)getApplicationShortcutIconWithType:(UIApplicationShortcutIconType)iconType;

/**
  * Returns application shortcut icon with given image name
  *
  * @param imageName Image name
 */
+ (UIApplicationShortcutIcon *)getApplicationShortIconWithName:(NSString *)imageName;

@end

NS_ASSUME_NONNULL_END
