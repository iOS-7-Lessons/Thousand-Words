//
//  AlbumTableViewController.h
//  Thousands Word
//
//  Created by macbook on 22/11/14.
//  Copyright (c) 2014 Eray Diler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlbumTableViewController : UITableViewController

@property (strong, nonatomic) NSMutableArray *albums;
- (IBAction)addBarButtonPressed:(UIBarButtonItem *)sender;

@end
