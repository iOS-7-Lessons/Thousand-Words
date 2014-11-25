//
//  CoreDataHelper.m
//  Thousands Word
//
//  Created by macbook on 24/11/14.
//  Copyright (c) 2014 Eray Diler. All rights reserved.
//

#import "CoreDataHelper.h"

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

@end
