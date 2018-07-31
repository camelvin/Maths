//
//  main.m
//  Maths
//
//  Created by PHOENIXMAC on 2018-07-31.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeping.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 255 unit long array of characters
       
        InputHandler *inputHandler = [[InputHandler alloc]init];
        ScoreKeeping *scorekeeper =[[ScoreKeeping alloc]init];
        BOOL gameOn = YES;
        
       
        
        while (gameOn == YES) {
            // repeat forever
            AdditionQuestion *q1 =[[AdditionQuestion alloc]init];
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
            
            
            
            
        }
        return 0;
    }
}
