//
//  main.m
//  Maths
//
//  Created by PHOENIXMAC on 2018-07-31.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CEQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeping.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 255 unit long array of characters
       
        InputHandler *inputHandler = [[InputHandler alloc]init];
        ScoreKeeping *scorekeeper =[[ScoreKeeping alloc]init];
        BOOL gameOn = YES;
        
        QuestionManager *qm = [[QuestionManager alloc]init];
        
        while (gameOn == YES) {
            // repeat forever
            CEQuestion *q1 =[[CEQuestion alloc]init];
            
            //adding questions to array 
            [qm.questions addObject:q1];
            NSLog(@"%1ld + %1ld?",q1.leftNumber,q1.rightNumber);
            
            NSString *newstring = [inputHandler userInput];
            
            NSInteger userInput = [newstring integerValue];
            BOOL isCorrect = userInput == q1.answer;
            if (isCorrect) {
                scorekeeper.rightAnswersCount += 1;
                
            } else {
                scorekeeper.wrongAnswersCount =+1;
                
            }
            if ([newstring isEqualToString:@"quit"]) {
                gameOn = NO;
                continue;
            }
            
            NSLog(@"%@", isCorrect ? @"Right" : @"Wrong");
            
            NSString *finalPercentage = [scorekeeper outputScore];
            NSLog(@"%@",finalPercentage);
            double timedanswer = [q1 answerTime];
           NSLog(@"%@",[qm timeOutput]);
            NSLog(@"%f",timedanswer);
            
            
            
            
            
            
        }
        return 0;
    }
        }

