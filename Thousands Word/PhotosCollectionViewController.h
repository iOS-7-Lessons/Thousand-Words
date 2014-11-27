//
//  PhotosCollectionViewController.h
//  Thousands Word
//
//  Created by macbook on 24/11/14.
//  Copyright (c) 2014 Eray Diler. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Album.h"

@interface PhotosCollectionViewController : UICollectionViewController

@property (strong, nonatomic) Album *album;
- (IBAction)cameraBarButtonPressed:(UIBarButtonItem *)sender;

@end
