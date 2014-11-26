//
//  CoreDataHelper.h
//  Thousands Word
//
//  Created by macbook on 24/11/14.
//  Copyright (c) 2014 Eray Diler. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CoreDataHelper : NSObject

+ (NSManagedObjectContext *)managedObjectContext;
+ (void)deleteAlbumData:(NSArray *)album;
@end
