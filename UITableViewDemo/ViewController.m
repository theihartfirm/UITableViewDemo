//
//  ViewController.m
//  UITableViewDemo
//
//  Created by Hardik Trivedi on 22/05/2016.
//  Copyright © 2016 TheiHartFirm. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray *marrData;
}

@end

@implementation ViewController

#pragma mark - View Life Cycle Methods

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self loadData];
}

#pragma mark - UITableView Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return marrData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    ** Uncomment below code for Simple tableView
    /*
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [[marrData objectAtIndex:indexPath.row] valueForKey:@"name"];
    
    return cell;
    */
    
//  below code for Custom tableView
    
    CustomTableViewCell *customCell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    [customCell.lblColorName setText:[[marrData objectAtIndex:indexPath.row] valueForKey:@"name"]];
    [customCell.vwColor setBackgroundColor:[[marrData objectAtIndex:indexPath.row] valueForKey:@"color"]];
    
    return customCell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView setBackgroundColor:[[marrData objectAtIndex:indexPath.row] valueForKey:@"color"]];
}

#pragma mark - Other Methods

- (void)loadData
{
    marrData = [[NSMutableArray alloc] initWithObjects:@{@"name" : @"Red", @"color" : [UIColor redColor]}, @{@"name" : @"Blue", @"color" : [UIColor blueColor]}, @{@"name" : @"Green", @"color" : [UIColor greenColor]}, @{@"name" : @"Black", @"color" : [UIColor blackColor]}, @{@"name" : @"Yellow", @"color" : [UIColor yellowColor]}, nil];
}

@end
