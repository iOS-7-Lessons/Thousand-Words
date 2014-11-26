//
//  CoreDataHelper.m
//  Thousands Word
//
//  Created by macbook on 24/11/14.
//  Copyright (c) 2014 Eray Diler. All rights reserved.
//

#import "CoreDataHelper.h"
#import "Album.h"

@implementation CoreDataHelper

+ (NSManagedObjectContext *)managedObjectContext
{
    NSManagedObjectContext *context;
    id delegate = [[UIApplication sharedApplication] delegate];
    
    if ( [delegate performSelector:@selector(managedObjectContext) ]) {
        context = [delegate managedObjectContext];
    }
    
    return context;
}


+ (void) deleteAlbumData:(NSArray *)albums
{
    NSManagedObjectContext *context = [self managedObjectContext];
    for (Album *album in albums) {
        [context deleteObject:album];
    }
    
    NSError *error;
    if ([context save:&error]) {
        NSLog(@"Error occure when saving");
    }
}

@end
