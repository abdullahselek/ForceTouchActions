//
//  FTShortcutIcon.m
//  ForceTouchActions
//
//  Created by Abdullah Selek on 20/08/16.
//  Copyright © 2016 Abdullah Selek. All rights reserved.
//

#import "FTShortcutIcon.h"

@implementation FTShortcutIcon

+ (UIApplicationShortcutIcon *)getApplicationShortcutIconWithType:(UIApplicationShortcutIconType)iconType
{
    return [UIApplicationShortcutIcon iconWithType:iconType];
}

+ (UIApplicationShortcutIcon *)getApplicationShortIconWithName:(NSString *)imageName
{
    return [UIApplicationShortcutIcon iconWithTemplateImageName:imageName];
}

@end
