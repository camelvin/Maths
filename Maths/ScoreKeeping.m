//
//  ScoreKeeping.m
//  Maths
//
//  Created by PHOENIXMAC on 2018-07-31.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "ScoreKeeping.h"

@implementation ScoreKeeping

-(NSString*)outputScore{
    int totalNumber = self.rightAnswersCount + self.wrongAnswersCount;
    if (totalNumber == 0) {
        return @"";
    }
    
    float rightAnswersCountFloat = (float) self.rightAnswersCount;
    float totalAnswerCount =(float)totalNumber;
    
    float percentage = ( rightAnswersCountFloat / totalAnswerCount) * 100.0;
    
    
    NSString *scoreString = [NSString stringWithFormat:@"%d right %d wrong-------- %f",self.rightAnswersCount,self.wrongAnswersCount,percentage ];
    return scoreString;
    
}

@end
