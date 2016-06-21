//
//  FISHellaMasterTableViewController.h
//  HellaCells
//
//  Created by Cenker Demir on 6/20/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISHellaDetailViewController.h"


@interface FISHellaMasterTableViewController : UITableViewController

@property (strong, nonatomic) NSArray *numbers;
@property (nonatomic) NSString *rowNumberToSend;

@end
