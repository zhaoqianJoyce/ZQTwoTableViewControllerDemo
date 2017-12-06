//
//  ViewController.m
//  ZQTwoTableViewControllerDemo
//
//  Created by Joyce on 17/12/5.
//  Copyright © 2017年 Joyce. All rights reserved.
//

#import "ViewController.h"
#import "ZQLeftTableViewController.h"
#import "ZQRightTableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupSubviews];
}

- (void)setupSubviews{
    
    ZQLeftTableViewController *leftTbVc = [[ZQLeftTableViewController alloc] init];
    leftTbVc.view.frame = CGRectMake(0, 44, self.view.frame.size.width * 0.3, self.view.frame.size.height - 44);
    [self addChildViewController:leftTbVc];
    [self.view addSubview:leftTbVc.view];
    
    ZQRightTableViewController *rightTbVc = [[ZQRightTableViewController alloc] init];
    rightTbVc.view.frame = CGRectMake(leftTbVc.view.frame.size.width, 44, self.view.frame.size.width * 0.7 - 10, self.view.frame.size.height - 44);
    [self addChildViewController:rightTbVc];
    [self.view addSubview:rightTbVc.view];
    
    leftTbVc.callBackBlock = ^(NSIndexPath *selectIndex, NSString *category){
        if ([category isEqualToString:@"第一类"]) {
            rightTbVc.rightArray = [[NSArray alloc] initWithObjects:@"第一类",@"第二类",@"第三类",@"第四类",@"第五类",@"第六类",@"第七类",@"第八类", nil];
            [rightTbVc.tableView reloadData];
        } else if ([category isEqualToString:@"第二类"]) {
            rightTbVc.rightArray = [[NSArray alloc] initWithObjects:@"第一类", @"第二类", nil];
            [rightTbVc.tableView reloadData];
        } else if ([category isEqualToString:@"第三类"]) {
            rightTbVc.rightArray = [[NSArray alloc] initWithObjects:@"第一类", @"第二类", @"第三类", nil];
            [rightTbVc.tableView reloadData];
        } else if ([category isEqualToString:@"第四类"]) {
            rightTbVc.rightArray = [[NSArray alloc] initWithObjects:@"第一类", @"第二类", @"第三类", @"第四类", nil];
            [rightTbVc.tableView reloadData];
        } else if ([category isEqualToString:@"第五类"]) {
            rightTbVc.rightArray = [[NSArray alloc] initWithObjects:@"第一类", @"第二类", @"第三类", @"第四类", @"第五类", nil];
            [rightTbVc.tableView reloadData];
        } else {
            rightTbVc.rightArray = [[NSArray alloc] initWithObjects:@"第一类", @"第二类", @"第三类", @"第四类", @"第五类", @"第六类", nil];
            [rightTbVc.tableView reloadData];
        }
    };
}

@end
