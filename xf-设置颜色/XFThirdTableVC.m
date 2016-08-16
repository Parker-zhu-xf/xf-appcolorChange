//
//  XFThirdTableVC.m
//  xf-设置颜色
//
//  Created by 朱晓峰 on 16/8/15.
//  Copyright © 2016年 朱晓峰. All rights reserved.
//

#import "XFThirdTableVC.h"
#import "XFColor.h"
@interface XFThirdTableVC ()<UITableViewDelegate,UITableViewDataSource>
{
    UISwitch *sw;
}
@end
static NSString *ID=@"cell";
@implementation XFThirdTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    self.tableView.dataSource=self;
    self.tableView.separatorStyle=UITableViewCellSeparatorStyleNone;
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (!cell) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    sw=[[UISwitch alloc]initWithFrame:CGRectMake(300, 5, 20, 20)];
    [sw addTarget:self action:@selector(swClick) forControlEvents:UIControlEventValueChanged];
    [cell.contentView addSubview:sw];
    return cell;
}
-(void)swClick{
    if ([sw isOn]) {
        [XFColor shared].xfcolor=[UIColor grayColor];
        
    }
    else{
        [XFColor shared].xfcolor=[UIColor whiteColor];

    }
}

/*
 Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
     Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
 Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
         Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
         Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
 Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
 Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
     Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

 In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     Get the new view controller using [segue destinationViewController].
     Pass the selected object to the new view controller.
}
*/

@end
