//
//  LaunchViewController.m
//  NextCode
//
//  Created by xuech on 16/3/17.
//  Copyright © 2016年 obizsoft. All rights reserved.
//

#import "LaunchViewController.h"
#import "MainViewController.h"

//#import "IntroViewController.h"
//#import "WXUserDefault.h"
//#import "WXUserModel.h"
//#import "GQRequest.h"

@interface LaunchViewController ()

@end

@implementation LaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    

}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    [self loginWithToken];

}


-(void)loginWithToken
{
    [self turnToMain];

}




-(void)turnToMain
{


}

-(void)showWelcome
{

}
@end
