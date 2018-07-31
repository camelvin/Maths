//
//  InputHandler.m
//  Maths
//
//  Created by PHOENIXMAC on 2018-07-31.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler
-(NSString *)userInput{
     char someCString[255];
    printf("Input a string: ");
    // limit input to max 255 characters
    fgets(someCString, 255, stdin);
    NSString *result = [NSString stringWithCString:someCString encoding:NSUTF8StringEncoding];
    NSString *newstring = [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return newstring;
    
}

@end
