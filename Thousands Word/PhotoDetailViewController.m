//
//  PhotoDetailViewController.m
//  Thousand Words
//
//  Created by macbook on 28/11/14.
//  Copyright (c) 2014 Eray Diler. All rights reserved.
//

#import "PhotoDetailViewController.h"
#import "Photo.h"
#import "FiltersCollectionViewController.h"

@interface PhotoDetailViewController ()

@end

@implementation PhotoDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    self.imageView.image = self.photo.image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([segue.identifier isEqualToString:@"toFiltersCollectionViewController"]) {
        if ([segue.destinationViewController isKindOfClass:[FiltersCollectionViewController class]]) {
            FiltersCollectionViewController *targetVC = segue.destinationViewController;
            targetVC.photo = self.photo;
        }
    }
}

#pragma mark - IBActions

- (IBAction)editButtonPressed:(UIButton *)sender {
}

- (IBAction)deleteButtonPressed:(UIButton *)sender {
    
    NSManagedObjectContext *context = [self.photo managedObjectContext];
    [context deleteObject:self.photo];
    
    NSError *error;
    if ( ![context save:&error] ) {
        NSLog(@"Error occured when deleting photo %@", error);
    }

    [self.navigationController popViewControllerAnimated:YES];
}

@end
