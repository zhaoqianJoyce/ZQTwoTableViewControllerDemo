//
//  ZQLeftTableViewController.h
//  ZQTwoTableViewControllerDemo
//
//  Created by Joyce on 17/12/5.
//  Copyright © 2017年 Joyce. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^CellDidClick)(NSIndexPath *selectIndex, NSString *category);

@interface ZQLeftTableViewController : UITableViewController

/** callBackBlock */
@property(nonatomic, copy)CellDidClick callBackBlock;
@end
