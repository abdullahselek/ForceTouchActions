//
//  UIApplicationShortcutItem+FTApplicationShortcutItemTests.m
//  ForceTouchActions
//
//  Created by Abdullah Selek on 10/09/16.
//  Copyright © 2016 Abdullah Selek. All rights reserved.
//

#import <Quick/Quick.h>
#import <Expecta/Expecta.h>
#import "UIApplicationShortcutItem+FTApplicationShortcutItem.h"
#import "FTShortcut.h"
#import "FTConstants.h"

@interface UIApplicationShortcutItem_FTApplicationShortcutItemTests : QuickSpec

@end

@implementation UIApplicationShortcutItem_FTApplicationShortcutItemTests

- (void)spec
{
    describe(@"Shortcut category", ^{
        context(@"Init with valid parameters", ^{
            it(@"Should not be nil", ^{
                UIApplicationShortcutIcon *shortcutIcon = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeAdd];
                expect(shortcutIcon).notTo.beNil();
                UIApplicationShortcutItem *shortcutItem = [[UIApplicationShortcutItem alloc] initWithType:@"TYPE" localizedTitle:@"TITLE" localizedSubtitle:@"SUBTITLE" icon:shortcutIcon userInfo:@{}];
                expect(shortcutItem).notTo.beNil();
                FTShortcut *shortcut = [shortcutItem toShortcutWithIconType:FTActionsIconTypeCustom];
                expect(shortcut).notTo.beNil();
                expect(shortcut.type).equal(FTActionsIconTypeCustomValue);
            });
        });
    });
}

@end
