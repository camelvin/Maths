//
//  MultipyQuestion.m
//  Maths
//
//  Created by PHOENIXMAC on 2018-08-01.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "MultipyQuestion.h"

@implementation MultipyQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
        
        
    }
    return self;
}
- (void)generateQuestion {
    self.answer = self.leftNumber*self.rightNumber;
    
    self.question = [NSString stringWithFormat:@"%ld * %ld",self.leftNumber,self.rightNumber];
}

@end
