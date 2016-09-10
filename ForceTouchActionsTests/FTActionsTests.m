//
//  FTActionsTests.m
//  ForceTouchActions
//
//  Created by Abdullah Selek on 10/09/16.
//  Copyright © 2016 Abdullah Selek. All rights reserved.
//

#import <Quick/Quick.h>
#import <Expecta/Expecta.h>
#import <OCMock/OCMock.h>
#import "FTActions.h"
#import "FTShortcut.h"

@interface FTActionsTests : QuickSpec

@end

@implementation FTActionsTests

- (void)spec
{
    describe(@"Touch actions", ^{
        __block FTActions *actions;
        __block id mockDelegate;
        beforeEach(^{
            mockDelegate = OCMProtocolMock(@protocol(FTActionsSupport));
            UIApplicationShortcutIcon *shortcutIcon = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeUpdate];
            expect(shortcutIcon).notTo.beNil();
            NSArray<FTShortcut *> *shortcuts = @[[[FTShortcut alloc] initWithType:UIApplicationShortcutIconTypeUpdate title:@"TITLE" subtitle:@"SUBTITLE" icon:shortcutIcon]];
            expect(shortcuts).haveCountOf(1);
            actions = [[FTActions alloc] initWithApplication:[UIApplication sharedApplication] delegate:mockDelegate bundleIdentifier:@"bunleId" shortcuts:shortcuts launchOptions:@{}];
        });
        context(@"Init with valid parameters", ^{
            it(@"Should initiate successfully", ^{
                expect(actions).notTo.beNil();
            });
        });
        context(@"Handle with delegate and shortcutItem", ^{
            it(@"Should return true", ^{
                expect(actions).notTo.beNil();
                expect([actions handleWithDelegate:mockDelegate shortcutItem:actions.shortcutItem]).beTruthy();
            });
        });
        context(@"Handle with nil delegate", ^{
            it(@"Should return false", ^{
                expect(actions).notTo.beNil();
                expect([actions handleWithDelegate:nil shortcutItem:actions.shortcutItem]).beFalsy();
            });
        });
    });
}

@end
