//
//  AdditionQuestion.m
//  Maths
//
//  Created by PHOENIXMAC on 2018-07-31.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion



- (instancetype)init
{
    self = [super init];
    if (self) {
        _leftNumber = arc4random_uniform(90)+10;
        _rightNumber = arc4random_uniform(90)+10;
        _answer = _leftNumber+_rightNumber;
       
    }
    return self;
}
@end
