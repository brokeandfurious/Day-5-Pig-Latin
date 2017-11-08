//
//  NSString+Pig.m
//  Day-5-Pig-Latin
//
//  Created by Murat Ekrem Kolcalar on 11/7/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import "NSString+Pig.h"

@implementation NSString (Pig);

- (NSString*) pigLatinize {
    
    NSMutableArray* letters = [[NSMutableArray alloc]initWithCapacity:[self length]];
    for (int i=0; i<[self length]; i++) {
        NSString* iChar = [NSString stringWithFormat:@"%c", [self characterAtIndex:i]];
        [letters addObject:iChar];
    }
    
    NSCharacterSet* consonants = [NSCharacterSet characterSetWithCharactersInString:@"AEIOUYaeiouy"];
    NSMutableArray* consonantGroup = [[self componentsSeparatedByCharactersInSet:consonants] mutableCopy];
    NSString* firstGroup = [consonantGroup objectAtIndex:0];
    
    NSMutableArray* groupRange = [[NSMutableArray alloc]initWithCapacity:[firstGroup length]];
    for (int i=0; i<[firstGroup length]; i++) {
        NSString* iChar = [NSString stringWithFormat:@"%c", [firstGroup characterAtIndex:i]];
        [groupRange addObject:iChar];
    }
    
    NSRange range = NSMakeRange(0, [firstGroup length]);
    [letters removeObjectsInRange:range];
    [letters addObject:firstGroup];
    [letters addObject:@"ay"];
    
    NSString* result = [letters componentsJoinedByString:@""];
    
    return result;
}

@end
