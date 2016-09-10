//
//  FTActionsIconTests.m
//  ForceTouchActions
//
//  Created by Abdullah Selek on 10/09/16.
//  Copyright © 2016 Abdullah Selek. All rights reserved.
//

#import <Quick/Quick.h>
#import <Expecta/Expecta.h>
#import "FTActionsIcon.h"
#import "FTConstants.h"

@interface FTActionsIconTests : QuickSpec

@end

@implementation FTActionsIconTests

- (void)spec
{
    describe(@"Custom icon type", ^{
       context(@"Convert to ui application icon type", ^{
           it(@"Should be valid icon type", ^{
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeCompose]).equal(UIApplicationShortcutIconTypeCompose);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypePlay]).equal(UIApplicationShortcutIconTypePlay);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypePause]).equal(UIApplicationShortcutIconTypePause);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeAdd]).equal(UIApplicationShortcutIconTypeAdd);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeLocation]).equal(UIApplicationShortcutIconTypeLocation);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeSearch]).equal(UIApplicationShortcutIconTypeSearch);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeShare]).equal(UIApplicationShortcutIconTypeShare);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeProhibit]).equal(UIApplicationShortcutIconTypeProhibit);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeContact]).equal(UIApplicationShortcutIconTypeContact);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeHome]).equal(UIApplicationShortcutIconTypeHome);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeMarkLocation]).equal(UIApplicationShortcutIconTypeMarkLocation);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeFavorite]).equal(UIApplicationShortcutIconTypeFavorite);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeLove]).equal(UIApplicationShortcutIconTypeLove);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeCloud]).equal(UIApplicationShortcutIconTypeCloud);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeInvitation]).equal(UIApplicationShortcutIconTypeInvitation);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeConfirmation]).equal(UIApplicationShortcutIconTypeConfirmation);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeMail]).equal(UIApplicationShortcutIconTypeMail);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeMessage]).equal(UIApplicationShortcutIconTypeMessage);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeDate]).equal(UIApplicationShortcutIconTypeDate);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeTime]).equal(UIApplicationShortcutIconTypeTime);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeCapturePhoto]).equal(UIApplicationShortcutIconTypeCapturePhoto);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeCaptureVideo]).equal(UIApplicationShortcutIconTypeCaptureVideo);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeTask]).equal(UIApplicationShortcutIconTypeTask);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeTaskCompleted]).equal(UIApplicationShortcutIconTypeTaskCompleted);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeAlarm]).equal(UIApplicationShortcutIconTypeAlarm);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeBookmark]).equal(UIApplicationShortcutIconTypeBookmark);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeShuffle]).equal(UIApplicationShortcutIconTypeShuffle);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeAudio]).equal(UIApplicationShortcutIconTypeAudio);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeUpdate]).equal(UIApplicationShortcutIconTypeUpdate);
               expect([FTActionsIcon toShortcutIconType:FTActionsIconTypeCustom]).equal(FTActionsIconTypeCustomValue);
           });
       });
    });
}

@end
