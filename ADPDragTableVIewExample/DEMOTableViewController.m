//
//  DEMOTableViewController.m
//  ADPDragTableVIewExample
//
//  Created by wxt on 16/7/13.
//  Copyright © 2016年 Adapter. All rights reserved.
//

#import "DEMOTableViewController.h"
#import "UITableView+ADPDragTV.h"
@interface DEMOTableViewController ()

@end

@implementation DEMOTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@",self.tableView);
    
    [self.tableView agreeLongPressDarg];
    [self.tableView finishExchange:^(NSIndexPath *fromIndexPath, NSIndexPath *toIndexpath) {
        NSLog(@"%@~~~%@",fromIndexPath,toIndexpath);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [UITableViewCell new];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
    
    return cell;
}


@end
