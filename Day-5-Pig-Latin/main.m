//
//  main.m
//  Day-5-Pig-Latin
//
//  Created by Murat Ekrem Kolcalar on 11/7/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInput.h"
#import "NSString+Pig.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        UserInput* userInput = [[UserInput alloc]init];
        NSString* typedShit = [userInput input];

        // TYPED SHIT
        NSLog(@"Typed shit: %@", typedShit);
        
        // PIGLATINIZED SHIT
        NSLog(@"Pig shit: %@", [typedShit pigLatinize]);
        
    }
    
    return 0;
}
