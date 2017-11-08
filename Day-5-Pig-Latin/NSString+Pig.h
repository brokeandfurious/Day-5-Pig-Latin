//
//  NSString+Pig.h
//  Day-5-Pig-Latin
//
//  Created by Murat Ekrem Kolcalar on 11/7/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString ()

@property (nonatomic) NSArray* consonants;
@property (nonatomic) NSArray* vowels;

- (NSString*) pigLatinize;

@end
