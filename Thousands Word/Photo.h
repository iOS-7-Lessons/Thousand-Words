//
//  Photo.h
//  Thousands Word
//
//  Created by macbook on 27/11/14.
//  Copyright (c) 2014 Eray Diler. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Album;

@interface Photo : NSManagedObject

@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) id image;
@property (nonatomic, retain) Album *albumBook;

@end
