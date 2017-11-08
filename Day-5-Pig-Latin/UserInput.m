//
//  UserInput.m
//  Day-5-Pig-Latin
//
//  Created by Murat Ekrem Kolcalar on 11/7/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import "UserInput.h"

@implementation UserInput

- (NSString*) input {
    
    char inputChars[15];
    printf("Input: (One word only) ");
    fgets(inputChars, 15, stdin);
    NSString *result = [[NSString stringWithCString:inputChars encoding: NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return result;
    
}

@end
