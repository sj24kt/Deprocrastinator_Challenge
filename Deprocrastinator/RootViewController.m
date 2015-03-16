//
//  RootViewController.m
//  Deprocrastinator
//
//  Created by Sherrie Jones on 3/16/15.
//  Copyright (c) 2015 Sherrie Jones. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController () <UITableViewDelegate, UITableViewDataSource>
@property NSMutableArray *toDoRow;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.toDoRow = [NSMutableArray arrayWithObjects:@"Buy Bread", @"Take dog to groomers, Get oil change for car", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.toDoRow count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
    cell.textLabel.text = [NSString stringWithFormat:@"Row %li", (long)indexPath.row];
    

    return cell;
}
@end
