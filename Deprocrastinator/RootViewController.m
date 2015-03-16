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
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UITableView *toDoTableView;

@property BOOL selectedCell;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.toDoRow = [NSMutableArray arrayWithObjects:@"Buy Bread", @"Take dog to groomers", @"Get oil change for car", nil];

    self.selectedCell = NO;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.toDoRow count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];

    cell.textLabel.text = [self.toDoRow objectAtIndex:indexPath.row];


    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];

    cell.textLabel.textColor = [UIColor greenColor];

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
//    cell.accessoryType = UITableViewCellAccessoryCheckmark;

}

#pragma mark - IBActions

- (IBAction)onAddButtonPressed:(UIButton *)button {
    [self.toDoRow addObject:self.textField.text];
    [self.toDoTableView reloadData];

    self.textField.text = @"";
    [self.textField resignFirstResponder];
    
}

- (IBAction)editBarButtonOnPressed:(UIBarButtonItem *)sender {

}





@end















