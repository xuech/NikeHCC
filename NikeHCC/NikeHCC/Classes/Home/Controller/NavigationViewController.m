//
//  NavigationViewController.m
//  xch-test
//
//  Created by xuech on 15/12/10.
//  Copyright © 2015年 obizsoft. All rights reserved.
//

#import "NavigationViewController.h"
#import "LoginViewController.h"
#import "HomePageViewController.h"

@interface NavigationViewController ()

@end

@implementation NavigationViewController

+ (void)initialize
{
    UINavigationBar *bar = [UINavigationBar appearance];
    [bar setBackgroundImage:[UIImage imageNamed:@"bg_navigationBar_normal"] forBarMetrics:UIBarMetricsDefault];
}

+ (instancetype)shareMainNavigationController
{
    return (NavigationViewController *)[[[UIApplication sharedApplication] keyWindow] rootViewController];
}

-(void)viewDidLoad
{
    //登录页面
    UIStoryboard *loginStoryBoard = [UIStoryboard storyboardWithName:@"Login" bundle:[NSBundle mainBundle]];
    UIViewController *viewController = [loginStoryBoard instantiateViewControllerWithIdentifier:@"LoginViewController"];
    [self setViewControllers:[NSArray arrayWithObject:viewController]];
    
    
    
    //homepage页面
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"HomePage" bundle:[NSBundle mainBundle]];
//    UIViewController *home = [storyboard instantiateViewControllerWithIdentifier:@"HomePageViewController"];
//    [self setViewControllers:[NSArray arrayWithObject:home]];
    
    
    
    
    
    
    
    
    //箭头
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    //        [[UINavigationBar appearance] setBackIndicatorImage:[UIImage imageNamed:@"back.png"]];
    //        [[UINavigationBar appearance] setBackIndicatorTransitionMaskImage:[UIImage imageNamed:@"back.png"]];

//    [self setNavigationBarHidden:YES];
}



@end
