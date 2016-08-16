//
//  XFColor.m
//  xf-设置颜色
//
//  Created by 朱晓峰 on 16/8/15.
//  Copyright © 2016年 朱晓峰. All rights reserved.
//

#import "XFColor.h"

@implementation XFColor
+(instancetype)shared{
    static XFColor *co;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        co=[[XFColor alloc]init];
    });
    return co;
}
@end
