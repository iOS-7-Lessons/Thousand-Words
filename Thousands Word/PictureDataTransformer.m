//
//  PictureDataTransformer.m
//  Thousands Word
//
//  Created by macbook on 27/11/14.
//  Copyright (c) 2014 Eray Diler. All rights reserved.
//

#import "PictureDataTransformer.h"

@implementation PictureDataTransformer

+ (Class)transformedValueClass {
    return [NSData class];
}

+ (BOOL)allowsReverseTransformation {
    return YES;
}

- (id)transformedValue:(id)value {
    return UIImagePNGRepresentation(value);
}

- (id)reverseTransformedValue:(id)value {
    return (value == nil) ? nil : [UIImage imageWithData:value];
}

@end
