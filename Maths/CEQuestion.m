//
//  AdditionQuestion.m
//  Maths
//
//  Created by PHOENIXMAC on 2018-07-31.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "CEQuestion.h"

@implementation CEQuestion
-(void)generateQuestion{
    
}

-(NSTimeInterval)answerTime;{
 float answerTime = [_endTime timeIntervalSinceDate:_startTime];
   return answerTime;
  
    
}
// overriding getter

//this overides the answer in the method to also include date


- (instancetype)init
{
    self = [super init];
    if (self) {
        _leftNumber = arc4random_uniform(90)+10;
        _rightNumber = arc4random_uniform(90)+10;
        
        _startTime = [NSDate date];
    }
    return self;
}

- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}


@end
