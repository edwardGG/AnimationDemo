//
//  ViewController.m
//  animaiton1
//
//  Created by Edward on 16/6/21.
//  Copyright © 2016年 Edward. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *drawButton;

@end

@implementation ViewController
- (IBAction)drawStar:(id)sender {
    [_drawButton setEnabled:NO];
    CGMutablePathRef starPath = CGPathCreateMutable();
    CGPathMoveToPoint(starPath, NULL, 160.0f, 100.0f);
    CGPathAddLineToPoint(starPath, NULL, 100.0f, 280.0f);
    CGPathAddLineToPoint(starPath, NULL, 260.0f, 170.0f);
    CGPathAddLineToPoint(starPath, NULL, 60.0f, 170.0f);
    CGPathAddLineToPoint(starPath, NULL, 220.0f, 280.0f);
    CGPathCloseSubpath(starPath);
    
    CAKeyframeAnimation *animation = nil;
    animation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    [animation setDuration:10.f];
    [animation setDelegate:self];
    [animation setPath:starPath];
    CFRelease(starPath);
    starPath = nil;
    [[_imageView layer] addAnimation:animation forKey:@"position"];
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
    [_drawButton setEnabled:YES];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
