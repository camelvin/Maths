//
//  AdditionQuestion.h
//  Maths
//
//  Created by PHOENIXMAC on 2018-07-31.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CEQuestion : NSObject
@property (nonatomic)NSString *question;
@property(nonatomic)NSInteger answer;
@property (nonatomic)NSInteger leftNumber;
@property (nonatomic)NSInteger rightNumber;
@property (nonatomic)NSDate *startTime;
@property (nonatomic)NSDate *endTime;

-(NSTimeInterval)answerTime;
-(void)generateQuestion;
@end
