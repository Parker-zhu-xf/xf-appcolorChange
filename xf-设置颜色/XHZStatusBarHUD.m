//
//  XHZStatusBarHUD.m
//  UIWindow
//
//  Created by 朱晓峰 on 2016/11/29.
//  Copyright © 2016年 朱晓峰. All rights reserved.
//

#import "XHZStatusBarHUD.h"

@implementation XHZStatusBarHUD
static UIWindow *window_;
+(void)showSuccess:(NSString *)msg{
    window_=[[UIWindow alloc]init];
    window_.frame=CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 20);
    window_.hidden=NO;
    UILabel *lable=[[UILabel alloc]initWithFrame:window_.bounds];
    window_.windowLevel=UIWindowLevelAlert;
    lable.text=msg;
    lable.backgroundColor=[UIColor yellowColor];
    [window_ addSubview:lable];
    UIActivityIndicatorView *ac=[[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    ac.frame=CGRectMake(150, 0, 20, 20);
    [ac startAnimating];
    ac.color=[UIColor redColor];
    [window_ addSubview:ac];
}

+(void)showError:(NSString *)msg{


}

+(void)showLoading:(NSString *)msg{

}

+(void)hide{
    window_=nil;
}
@end
