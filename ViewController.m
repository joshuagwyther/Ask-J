//
//  ViewController.m
//  Ask Jesus
//
//  Created by Josh Gwyther on 9/23/14.
//  Copyright (c) 2014 Josh Gwyther. All rights reserved.
//

#import "ViewController.h"
#import "JGAskJesus.h"
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController ()

@end

@implementation ViewController{
    
    SystemSoundID soundEffect;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"crystal_ball" ofType:@"mp3"];
    NSURL *soundURL = [NSURL fileURLWithPath:soundPath];
    AudioServicesCreateSystemSoundID(CFBridgingRetain(soundURL), &soundEffect);
    
    self.crystalBall = [[JGAskJesus alloc] init];
    
    
    
    self.predictionLabel.text = nil;
    self.predictionLabel.alpha = 0.0f;
    
    self.backgroundImageView.animationImages = [[NSArray alloc] initWithObjects:
                                                [UIImage imageNamed:@"AJ0001"],
                                                [UIImage imageNamed:@"AJ0006"],
                                                [UIImage imageNamed:@"AJ0007"],
                                                [UIImage imageNamed:@"AJ0008"],
                                                [UIImage imageNamed:@"AJ0009"],
                                                [UIImage imageNamed:@"AJ0010"],
                                                [UIImage imageNamed:@"AJ0060"],nil];
    
    self.backgroundImageView.animationDuration = 2.0f;
    self.backgroundImageView.animationRepeatCount = 1;

    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    self.predictionLabel.alpha = 0.0f;
    
    [self.backgroundImageView startAnimating];
    
    AudioServicesPlaySystemSound(soundEffect);
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
    
    self.predictionLabel.text = [self.crystalBall randomPrediction];
    
    [UIView animateWithDuration:5 animations:^{
        self.predictionLabel.alpha = 1.0f;
    }];
    
    
}
@end
