//
//  PopViewMenu.h
//  xch-test
//
//  Created by xuech on 16/2/2.
//  Copyright © 2016年 obizsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PopViewMenu;

@protocol PopViewMenuDelegate <NSObject>
@optional
- (void)dropdownMenuDidDismiss:(PopViewMenu *)menu;
- (void)dropdownMenuDidShow:(PopViewMenu *)menu;
@end

@interface PopViewMenu : UIView
@property (nonatomic, weak) id<PopViewMenuDelegate> delegate;


+ (instancetype)createMenu;

/**
 *  显示
 */
- (void)showFrom:(UIView *)from;
/**
 *  销毁
 */
- (void)dismiss;

/**
 *  内容
 */
@property (nonatomic, strong) UIView *content;

/**
 *  内容控制器
 */
@property (nonatomic, strong) UIViewController *contentController;

@end
