//
//  XFColor.h
//  xf-设置颜色
//
//  Created by 朱晓峰 on 16/8/15.
//  Copyright © 2016年 朱晓峰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface XFColor : NSObject
@property(nonatomic,strong)UIColor * xfcolor;
+(instancetype)shared;
@end
