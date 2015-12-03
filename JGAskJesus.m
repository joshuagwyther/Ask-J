//
//  JGAskJesus.m
//  Ask Jesus
//
//  Created by Josh Gwyther on 9/23/14.
//  Copyright (c) 2014 Josh Gwyther. All rights reserved.
//

#import "JGAskJesus.h"

@implementation JGAskJesus

- (NSArray *) predictions {
    if (_predictions == nil) {
        _predictions = [[NSArray alloc] initWithObjects:
                      @"It is certain my child",
                      @"It is so",
                      @"No",
                      @"Yes",
                      @"That would not be wise",
                      @"Look to your heart",
                      @"Maybe in time",
                      @"Pray then ask again",
                      @"In good time",
                      @"Yes my child",
                      @"Not right now",
                      @"Do on to others..",
                      @"Only with love",
                      @"No my child",
                      @"When the time is right",
                      @"Don't throw the stone",
                      @"Love is your answer",
                      @"If you believe in me",
                      @"Truth is your answer",
                      @"By all means",
                      @"Definetly",
                      @"There is no reason not to",
                      @"Yes my sweet child",
                      @"Indeed my child",
                      @"Ask again soon",
                      @"Ask tomorrow",
                      @"It shall not be",
                      @"It shall be",
                      @"Very likely",
                      @"Most unlikely",
                      @"Of course",
                      @"For sure my child",
                      @"Most Definetly",
                      @"Not at this time",
                      @"Unfortunately not",
                      @"Not possible my child",
                      @"At another time",
                      @"Of course my child",
                      @"I love that you asked",
                      @"Yes my child",
                      @"Soon my child",
                      @"With love it will",
                      @"Maybe in the future",
                      @"It will come to pass",
                        
                      
                      nil];
    }
    return _predictions;
}

- (NSString*) randomPrediction; {
    int random = arc4random_uniform(self.predictions.count);
    return [self.predictions objectAtIndex:random];
    
}

@end
