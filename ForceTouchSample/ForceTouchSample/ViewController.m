//
//  ViewController.m
//  ForceTouchSample
//
//  Created by Abdullah Selek on 13/09/16.
//  Copyright © 2016 Abdullah Selek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) UILabel *textLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}

#pragma mark - ForceTouchActions Delegate

- (void)prepareForTouchActionWithItem:(UIApplicationShortcutItem *)shortcutItem
{
    UIAlertController *alertController = [[UIAlertController alloc] init];
    [alertController setMessage:[NSString stringWithFormat:@"Shortcut type : %@", shortcutItem.type]];
    [self presentViewController:alertController animated:YES completion:nil];
}


@end
