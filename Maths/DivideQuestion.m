//
//  DivideQuestion.m
//  Maths
//
//  Created by PHOENIXMAC on 2018-08-01.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "DivideQuestion.h"

@implementation DivideQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
        
    }
    return self;
}
- (void)generateQuestion {
      self.answer = self.leftNumber/self.rightNumber;
    
    self.question = [NSString stringWithFormat:@"%ld / %ld",self.leftNumber,self.rightNumber];
}

@end
