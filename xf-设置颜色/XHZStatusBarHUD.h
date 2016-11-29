//
//  XHZStatusBarHUD.h
//  UIWindow
//
//  Created by 朱晓峰 on 2016/11/29.
//  Copyright © 2016年 朱晓峰. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface XHZStatusBarHUD : NSObject
+(void)showSuccess:(NSString *)msg;

+(void)showError:(NSString *)msg;

+(void)showLoading:(NSString *)msg;

+(void)hide;
@end
