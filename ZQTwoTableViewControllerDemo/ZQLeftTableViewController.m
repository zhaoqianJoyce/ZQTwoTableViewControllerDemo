//
//  ZQLeftTableViewController.m
//  ZQTwoTableViewControllerDemo
//
//  Created by Joyce on 17/12/5.
//  Copyright © 2017年 Joyce. All rights reserved.
//

#import "ZQLeftTableViewController.h"

@interface ZQLeftTableViewController ()

@end

@implementation ZQLeftTableViewController {
    
    /** 左边的tableView显示的内容 */
    NSArray *_leftArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _leftArray = [[NSArray alloc] initWithObjects:@"第一类",@"第二类",@"第三类",@"第四类",@"第五类",@"第六类",@"第七类",@"第八类", nil];
}

#pragma mark ------------------
#pragma mark - DataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _leftArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.textLabel.text = [NSString stringWithFormat:@"第%zd行", indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    if (self.callBackBlock) {
        self.callBackBlock(indexPath, _leftArray[indexPath.row]);
    }
}

@end
