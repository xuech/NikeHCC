//
//  LoginViewController.m
//  NextCode
//
//  Created by xuech on 16/3/17.
//  Copyright © 2016年 obizsoft. All rights reserved.
//

#import "LoginViewController.h"
#import "HomePageViewController.h"

@interface LoginViewController ()<UITextFieldDelegate>

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"登录";


}

- (IBAction)evetn:(id)sender {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"HomePage" bundle:[NSBundle mainBundle]];
    HomePageViewController *home = [storyboard instantiateViewControllerWithIdentifier:@"HomePageViewController"];
    [self presentViewController:home animated:YES completion:nil];
}

@end
