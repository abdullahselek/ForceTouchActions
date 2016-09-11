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
        __block id mockApplication;
        beforeEach(^{
            mockDelegate = OCMProtocolMock(@protocol(FTActionsSupport));
            mockApplication = OCMClassMock([UIApplication class]);
            OCMStub([mockApplication sharedApplication]).andReturn(mockApplication);
            UIApplicationShortcutIcon *shortcutIconAdd = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeAdd];
            UIApplicationShortcutIcon *shortcutIconCompose = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeCompose];
            NSArray<UIApplicationShortcutItem *> *shortcutItems = @[[[UIApplicationShortcutItem alloc] initWithType:@"ADD" localizedTitle:@"ADD_SUBTITLE" localizedSubtitle:@"ADD_SUBTITLE" icon:shortcutIconAdd userInfo:@{}], [[UIApplicationShortcutItem alloc] initWithType:@"COMPOSE" localizedTitle:@"COMPOSE" localizedSubtitle:@"COMPOSE_SUBTITLE" icon:shortcutIconCompose userInfo:@{}]];
            [[[mockApplication stub] andReturn:shortcutItems] shortcutItems];
            UIApplicationShortcutIcon *shortcutIcon = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeUpdate];
            expect(shortcutIcon).notTo.beNil();
            NSArray<FTShortcut *> *shortcuts = @[[[FTShortcut alloc] initWithType:UIApplicationShortcutIconTypeUpdate title:@"TITLE" subtitle:@"SUBTITLE" icon:shortcutIcon]];
            expect(shortcuts).haveCountOf(1);
            actions = [[FTActions alloc] initWithApplication:[UIApplication sharedApplication] delegate:mockDelegate bundleIdentifier:@"bunleId" shortcuts:shortcuts launchOptions:@{}];
        });
        afterEach(^{
            [(id) mockApplication stopMocking];
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
        context(@"Add shortcuts", ^{
            it(@"Application should get these shortcuts", ^{
                expect(actions).notTo.beNil();
                UIApplicationShortcutIcon *shortcutIconAdd = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeAdd];
                expect(shortcutIconAdd).notTo.beNil();
                UIApplicationShortcutIcon *shortcutIconCompose = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeCompose];
                expect(shortcutIconCompose).notTo.beNil();
                FTShortcut *shortcutAdd = [[FTShortcut alloc] initWithType:UIApplicationShortcutIconTypeAdd title:@"ADD" subtitle:@"ADD_SUBTITLE" icon:shortcutIconAdd];
                FTShortcut *shortcutCompose = [[FTShortcut alloc] initWithType:UIApplicationShortcutIconTypeCompose title:@"COMPOSE" subtitle:@"COMPOSE_SUBTITLE" icon:shortcutIconCompose];
                [actions addShortcuts:@[shortcutAdd, shortcutCompose] application:mockApplication];
                expect([mockApplication shortcutItems]).haveCountOf(2);
            });
        });
        context(@"Add shortcut", ^{
            __block FTActions *actions;
            __block id mockDelegate;
            __block id mockApplication;
            beforeEach(^{
                mockDelegate = OCMProtocolMock(@protocol(FTActionsSupport));
                mockApplication = OCMClassMock([UIApplication class]);
                OCMStub([mockApplication sharedApplication]).andReturn(mockApplication);
                UIApplicationShortcutIcon *shortcutIconAdd = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeAdd];
                NSArray<UIApplicationShortcutItem *> *shortcutItems = @[[[UIApplicationShortcutItem alloc] initWithType:@"ADD" localizedTitle:@"ADD_SUBTITLE" localizedSubtitle:@"ADD_SUBTITLE" icon:shortcutIconAdd userInfo:@{}]];
                [[[mockApplication stub] andReturn:shortcutItems] shortcutItems];
                UIApplicationShortcutIcon *shortcutIcon = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeUpdate];
                expect(shortcutIcon).notTo.beNil();
                NSArray<FTShortcut *> *shortcuts = @[[[FTShortcut alloc] initWithType:UIApplicationShortcutIconTypeUpdate title:@"TITLE" subtitle:@"SUBTITLE" icon:shortcutIcon]];
                expect(shortcuts).haveCountOf(1);
                actions = [[FTActions alloc] initWithApplication:[UIApplication sharedApplication] delegate:mockDelegate bundleIdentifier:@"bunleId" shortcuts:shortcuts launchOptions:@{}];
            });
            afterEach(^{
                [(id) mockApplication stopMocking];
            });
            it(@"Application should get this shortcut", ^{
                expect(actions).notTo.beNil();
                UIApplicationShortcutIcon *shortcutIconAdd = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeAdd];
                expect(shortcutIconAdd).notTo.beNil();
                FTShortcut *shortcutAdd = [[FTShortcut alloc] initWithType:UIApplicationShortcutIconTypeAdd title:@"ADD" subtitle:@"ADD_SUBTITLE" icon:shortcutIconAdd];
                [actions addShortcut:shortcutAdd application:mockApplication];
                expect([mockApplication shortcutItems]).haveCountOf(1);
            });
        });
    });
}

@end
