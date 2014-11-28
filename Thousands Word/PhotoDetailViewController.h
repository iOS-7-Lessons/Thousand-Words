//
//  PhotoDetailViewController.h
//  Thousand Words
//
//  Created by macbook on 28/11/14.
//  Copyright (c) 2014 Eray Diler. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Photo;

@interface PhotoDetailViewController : UIViewController

- (IBAction)editButtonPressed:(UIButton *)sender;
- (IBAction)deleteButtonPressed:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) Photo *photo;

@end
