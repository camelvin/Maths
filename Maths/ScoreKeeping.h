//
//  ScoreKeeping.h
//  Maths
//
//  Created by PHOENIXMAC on 2018-07-31.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeping : NSObject
@property(nonatomic)int rightAnswersCount;
@property(nonatomic)int wrongAnswersCount;
-(NSString*)outputScore;



@end
