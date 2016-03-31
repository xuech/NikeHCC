//
//  Commond.h
//  NikeHCC
//
//  Created by xuech on 16/3/31.
//  Copyright © 2016年 obizsoft. All rights reserved.
//

#ifndef Commond_h
#define Commond_h

#ifdef DEBUG
#define XLog(...) NSLog(__VA_ARGS__)
#else
#define XLog(...)
#endif


// 屏幕尺寸
#define SCREEN_SIZE [UIScreen mainScreen].bounds.size
// 手机屏幕
#define IPHONE5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
#define IPHONE6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? (CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) || CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size)) : NO)
#define IPHONE6P ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? (CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) || CGSizeEqualToSize(CGSizeMake(1125, 2001), [[UIScreen mainScreen] currentMode].size)) : NO)
//通知
#define XNotificationCenter [NSNotificationCenter defaultCenter]


#endif /* Commond_h */
