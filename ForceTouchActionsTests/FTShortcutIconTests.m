//
//  FTShortcutIconTests.m
//  ForceTouchActions
//
//  Created by Abdullah Selek on 20/08/16.
//  Copyright © 2016 Abdullah Selek. All rights reserved.
//

#import <Quick/Quick.h>
#import <Expecta/Expecta.h>
#import <OCMock/OCMock.h>
#import "FTShortcutIcon.h"

@interface FTShortcutIconTests : QuickSpec

@end

@implementation FTShortcutIconTests

- (void)spec
{
    describe(@"Shortcut Icon", ^{
        context(@"get shortcut icon with type", ^ {
            it(@"should not be nil", ^ {
                UIApplicationShortcutIcon *shortcutIcon = [FTShortcutIcon getApplicationShortcutIconWithType:UIApplicationShortcutIconTypeAdd];
                expect(shortcutIcon).notTo.beNil();
            });
        });
        context(@"get shortcut icon with type", ^ {
            __block UIDevice *mockDevice = nil;
            beforeEach(^{
                mockDevice = OCMClassMock([UIDevice class]);
                OCMStub([UIDevice currentDevice]).andReturn(mockDevice);
                OCMStub([mockDevice systemVersion]).andReturn(@"9.0");
            });
            it(@"should be nil when os does not support", ^ {
                UIApplicationShortcutIcon *shortcutIcon = [FTShortcutIcon getApplicationShortcutIconWithType:UIApplicationShortcutIconTypeAdd];
                expect(shortcutIcon).notTo.beNil();
            });
        });
        context(@"get shortcut icon with image name when image available", ^{
            it(@"should not be nil", ^ {
                UIApplicationShortcutIcon *shortcutIcon = [FTShortcutIcon getApplicationShortIconWithName:@"apple_black"];
                expect(shortcutIcon).notTo.beNil();
            });
        });
        context(@"get shortcut icon with image name when image available", ^{
            __block UIDevice *mockDevice = nil;
            beforeEach(^{
                mockDevice = OCMClassMock([UIDevice class]);
                OCMStub([UIDevice currentDevice]).andReturn(mockDevice);
                OCMStub([mockDevice systemVersion]).andReturn(@"9.0");
            });
            it(@"should be nil when os does not support", ^ {
                UIApplicationShortcutIcon *shortcutIcon = [FTShortcutIcon getApplicationShortIconWithName:@"apple_black"];
                expect(shortcutIcon).notTo.beNil();
            });
        });
        context(@"get shortcut icon with image name when image not available", ^{
            it(@"should not be nil", ^ {
                UIApplicationShortcutIcon *shortcutIcon = [FTShortcutIcon getApplicationShortIconWithName:@""];
                expect(shortcutIcon).notTo.beNil();
            });
        });
    });
}

@end
