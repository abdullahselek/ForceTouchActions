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

/**
  * Shortcut Icon
 */
@interface FTShortcutIcon : UIApplicationShortcutIcon

/**
  * Returns application shortcut icon with given type
  *
  * @param iconType Icon Type
  * @param device Device
  *
  * @return UIApplicationShortcutIcon
 */
+ (UIApplicationShortcutIcon *)getApplicationShortcutIconWithType:(UIApplicationShortcutIconType)iconType
                                                           device:(UIDevice *)device;

/**
  * Returns application shortcut icon with given image name
  *
  * @param imageName Image name
  * @param device Device
  *
  * @return UIApplicationShortcutIcon
 */
+ (UIApplicationShortcutIcon *)getApplicationShortIconWithName:(NSString *)imageName
                                                        device:(UIDevice *)device;

@end

NS_ASSUME_NONNULL_END
