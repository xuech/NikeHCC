//
//  PopViewMenu.m
//  xch-test
//
//  Created by xuech on 16/2/2.
//  Copyright © 2016年 obizsoft. All rights reserved.
//

#import "PopViewMenu.h"
#import "UIView+Extension.h"

@interface PopViewMenu()
/**
 *  将来用来显示具体内容的容器
 */
@property (nonatomic, weak) UIView *containerView;
@end

@implementation PopViewMenu

-(UIView *)containerView
{
    if (!_containerView) {
        UIView *containerView = [[UIView alloc] init];
        [self addSubview:containerView];
        self.containerView = containerView;
    }
    return _containerView;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 清除颜色
        self.backgroundColor = [UIColor clearColor];
        UIView *blockView = [[UIView alloc] initWithFrame:frame];
        blockView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.7];
        [self addSubview:blockView];
        
        [blockView addSubview:_containerView];
    }
    return self;
}

+(instancetype)createMenu
{
    return [[self alloc]init];
}
- (void)setContent:(UIView *)content
{
    _content = content;
    
    // 调整内容的位置
    content.x = 100;
    content.y = 200;
//
//    // 设置灰色的高度
    self.containerView.height = CGRectGetMaxY(content.frame) + 11;
//    // 设置灰色的宽度
    self.containerView.width = CGRectGetMaxX(content.frame) + 10;
    
    // 添加内容到灰色图片中
    [self.containerView addSubview:content];
}

- (void)setContentController:(UIViewController *)contentController
{
    _contentController = contentController;
    
    self.content = contentController.view;
}

/**
 *  显示
 */
- (void)showFrom:(UIView *)from
{
    // 1.获得最上面的窗口
    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
    
    // 2.添加自己到窗口上
    [window addSubview:self];

    // 3.设置尺寸
    self.frame = window.frame;
//    self.containerView.frame = self.frame;
    NSLog(@"self.frame%@",NSStringFromCGRect(self.frame));

    CGRect frame = self.frame;
    [UIView animateWithDuration:0.4f animations:^{
        self.containerView.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
        NSLog(@"self.containerView.frame%@",NSStringFromCGRect(self.containerView.frame));
    } completion:^(BOOL finished) {
        
    }];
    
    
    // 4.调整灰色图片的位置
    // 默认情况下，frame是以父控件左上角为坐标原点
    // 转换坐标系
//    CGRect newFrame = [from convertRect:from.bounds toView:window];
//    //    CGRect newFrame = [from.superview convertRect:from.frame toView:window];
//    self.containerView.centerX = CGRectGetMidX(newFrame);
//    self.containerView.y = CGRectGetMaxY(newFrame);
    
    // 通知外界，自己显示了
    if ([self.delegate respondsToSelector:@selector(dropdownMenuDidShow:)]) {
        [self.delegate dropdownMenuDidShow:self];
    }
}

/**
 *  销毁
 */
- (void)dismiss
{
    CGRect frame = self.frame;
    [UIView animateWithDuration:0.3f animations:^{
        self.containerView.frame = CGRectMake(0, frame.size.height, frame.size.width, frame.size.height);
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
    
    // 通知外界，自己被销毁了
    if ([self.delegate respondsToSelector:@selector(dropdownMenuDidDismiss:)]) {
        [self.delegate dropdownMenuDidDismiss:self];
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self dismiss];
}
@end
