//
//  QuestionManager.m
//  Maths
//
//  Created by PHOENIXMAC on 2018-08-01.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "QuestionManager.h"
#import "CEQuestion.h"

@implementation QuestionManager

-(NSString*)timeOutput{
    float totalTime = 0 ;
    
    for (CEQuestion * q in self.questions ) {
        totalTime += q.answerTime;
        
    }
    float averageTime = totalTime /self.questions.count;
    return [NSString stringWithFormat:@"total time is %f seconds and %f average",totalTime,averageTime];
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc]init];
    }
    return self;
}
@end
