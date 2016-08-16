//
//  XFTabBarVC.m
//  xf-设置颜色
//
//  Created by 朱晓峰 on 16/8/15.
//  Copyright © 2016年 朱晓峰. All rights reserved.
//
//颜色是黑色？？     UIWindow的问题
#import "XFTabBarVC.h"

#import "XFFirstTableVC.h"
#import "XFSecondTableVC.h"
#import "XFThirdTableVC.h"

@interface XFTabBarVC ()

@end

@implementation XFTabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title=@"朱晓峰";
    self.view.backgroundColor=[UIColor darkGrayColor];
    
    XFFirstTableVC *firstVC=[[XFFirstTableVC alloc]init];
    UINavigationController *nav1=[[UINavigationController alloc]initWithRootViewController:firstVC];
    firstVC.title=@"1";
    
    XFSecondTableVC *secondVC=[[XFSecondTableVC alloc]init];
    UINavigationController *nav2=[[UINavigationController alloc]initWithRootViewController:secondVC];
    secondVC.title=@"2";
    
    XFThirdTableVC *thirdVC=[[XFThirdTableVC alloc]init];
    
    UINavigationController *nav3=[[UINavigationController alloc]initWithRootViewController:thirdVC];
    thirdVC.title=@"3";
    
    self.viewControllers=@[nav1,nav2,nav3];
    NSLog(@"%@",self.viewControllers);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
