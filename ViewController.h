//
//  ViewController.h
//  Ask Jesus
//
//  Created by Josh Gwyther on 9/23/14.
//  Copyright (c) 2014 Josh Gwyther. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JGAskJesus;

@interface ViewController : UIViewController

@property (strong, nonatomic) JGAskJesus *crystalBall;

- (IBAction)buttonPressed;

@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;

@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;

@end

