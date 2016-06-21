//
//  FISHellaMasterTableViewController.m
//  HellaCells
//
//  Created by Cenker Demir on 6/20/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISHellaMasterTableViewController.h"


@implementation FISHellaMasterTableViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *tempArray = [[NSMutableArray alloc] initWithCapacity:100];
    for (NSUInteger i=0; i< 100; i++) {
        tempArray[i] = [NSString stringWithFormat:@"%lu", i+1];
    }
    self.numbers = [tempArray copy];
    self.view.accessibilityIdentifier = @"Table";
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.numbers count];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier =@"Table";
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text=[self.numbers objectAtIndex:indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.rowNumberToSend =  [self.numbers objectAtIndex:indexPath.row];
    [self performSegueWithIdentifier:@"rowSegue" sender:self];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    FISHellaDetailViewController *rowShowTVC = (FISHellaDetailViewController *)segue.destinationViewController;
    rowShowTVC.rowNumberInfo = self.rowNumberToSend;
}

@end
