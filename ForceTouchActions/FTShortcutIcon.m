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
                                                           device:(UIDevice *)device
{
    if ([[device systemVersion] compare:FTAvailableVersion options:NSNumericSearch] != NSOrderedAscending)
    {
        return [UIApplicationShortcutIcon iconWithType:iconType];
    }
    else
    {
        NSLog(@"%@", FTNotAvailableError);
        return nil;
    }
}

+ (UIApplicationShortcutIcon *)getApplicationShortIconWithName:(NSString *)imageName
                                                        device:(UIDevice *)device
{
    if ([[device systemVersion] compare:FTAvailableVersion options:NSNumericSearch] != NSOrderedAscending)
    {
        return [UIApplicationShortcutIcon iconWithTemplateImageName:imageName];
    }
    else
    {
        NSLog(@"%@", FTNotAvailableError);
        return nil;
    }
}

@end
