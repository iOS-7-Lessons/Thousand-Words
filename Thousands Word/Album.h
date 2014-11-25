//
//  Album.h
//  Thousands Word
//
//  Created by macbook on 22/11/14.
//  Copyright (c) 2014 Eray Diler. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Album : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSDate * date;

@end
