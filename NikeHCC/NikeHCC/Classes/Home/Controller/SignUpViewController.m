//
//  SignUpViewController.m
//  NextCode
//
//  Created by xuech on 16/3/17.
//  Copyright © 2016年 obizsoft. All rights reserved.
//

#define reg_y_space 120.0f
#define reg_input_height 40.0f
#define reg_input_icon 24.0f
#define reg_input_space 20.f

#define reg_no_iphone               @"请输入手机号码"
#define reg_no_iphone_code          @"请输入手机验证码"
#define reg_no_pass                 @"请输入密码"
#define reg_no_pass_again           @"请输入确认密码"
#define reg_no_verify_code          @"请先验证您的手机"
#define reg_verify_succ             @"成功发送验证码,请查看"
#define reg_verify_error            @"发送验证码失败"
#define reg_input_error_phone       @"您输入的手机号有误"
#define reg_input_error_verify      @"您输入的验证码有误"
#define reg_input_error_double      @"您输入的两次密码有误"
#define reg_input_error_change_code @"已验证手机号被修改!请确认你的手机号码!"

#import "SignUpViewController.h"
//#import "GQRequest.h"
//#import "WXUserDefault.h"

@interface SignUpViewController ()<UITextFieldDelegate, UIScrollViewDelegate, UIActionSheetDelegate>
//@property (weak, nonatomic) IBOutlet UITextField *phoneNumber;
/////第一次输入密码
//@property (weak, nonatomic) IBOutlet UITextField *password;
/////第二次确定密码
//@property (weak, nonatomic) IBOutlet UITextField *verifyPassWord;
//
/////验证码
//@property (weak, nonatomic) IBOutlet UITextField *verifyTextfield;
//
//@property (weak, nonatomic) IBOutlet UIButton *getMessageBtn;
//@property (nonatomic, copy) NSString *useVerifyPhone;           //  用于验证的手机号码, 防止手机验证后修改
//
//
//@property (nonatomic, strong) NSTimer *timer;
//@property (nonatomic, assign) NSInteger verifyStartSecond;              //  计时开始秒数
//
//@property (nonatomic, assign) BOOL isOnlyNeedVerify;            //  只需要验证码的情况
//@property (nonatomic,strong)ValidatorHelper* helper;
@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
}


@end
