//
//  JGAskJesus.h
//  Ask Jesus
//
//  Created by Josh Gwyther on 9/23/14.
//  Copyright (c) 2014 Josh Gwyther. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JGAskJesus : NSObject {
    NSArray *_predictions;
}
@property (strong, nonatomic, readonly) NSArray *predictions;

- (NSString*) randomPrediction;

@end
