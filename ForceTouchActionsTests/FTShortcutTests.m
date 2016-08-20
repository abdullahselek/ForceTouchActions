//
//  FTShortcutTests.m
//  ForceTouchActions
//
//  Created by Abdullah Selek on 20/08/16.
//  Copyright © 2016 Abdullah Selek. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <Quick/Quick.h>
#import <Expecta/Expecta.h>
#import "FTShortcut.h"
#import "FTShortcutIcon.h"

static NSString * const FTTitle = @"Title";
static NSString * const FTSubtitle = @"Subtitle";
static NSString * const FTIconName = @"apple_black";

@interface FTShortcutTests : QuickSpec

@end

@implementation FTShortcutTests

- (void)spec
{
    describe(@"Shortcut object", ^ {
        context(@"Init with all parameters", ^ {
            it(@"Should not be nil",  ^ {
                UIApplicationShortcutIcon *shortcutIcon = [FTShortcutIcon getApplicationShortIconWithName:FTIconName];
                expect(shortcutIcon).notTo.beNil();
                FTShortcut *shortcut = [[FTShortcut alloc] initWithType:UIApplicationShortcutIconTypeAdd
                                                                  title:FTTitle
                                                               subtitle:FTSubtitle
                                                                   icon:shortcutIcon];
                expect(shortcut).notTo.beNil();
                expect(shortcut.type).equal(UIApplicationShortcutIconTypeAdd);
                expect(shortcut.title).equal(FTTitle);
                expect(shortcut.subtitle).equal(FTSubtitle);
                expect(shortcut.icon).equal(shortcutIcon);
            });
        });
        context(@"Init with only required parameters", ^ {
            it(@"Should not be nil", ^ {
                FTShortcut *shortcut = [[FTShortcut alloc] initWithType:UIApplicationShortcutIconTypeAdd
                                                                  title:FTTitle
                                                               subtitle:nil
                                                                   icon:nil];
                expect(shortcut).notTo.beNil();
                expect(shortcut.type).equal(UIApplicationShortcutIconTypeAdd);
                expect(shortcut.title).equal(FTTitle);
                expect(shortcut.subtitle).beNil();
                expect(shortcut.icon).beNil();
            });
        });
    });
}

@end
