//
//  ViewController.m
//  animation
//
//  Created by Edward on 16/6/21.
//  Copyright © 2016年 Edward. All rights reserved.
//

#import "ViewController.h"
#define kYOffset 30
@interface ViewController ()
@property (nonatomic) CALayer *scaleLayer;

@end

@implementation ViewController
- (IBAction)removeAnimation:(id)sender {
    
    [_scaleLayer removeAnimationForKey:@"scaleAnimation"];
}

- (void)initScaleLayer{
    _scaleLayer = [[CALayer alloc] init];
    _scaleLayer.backgroundColor = [UIColor blueColor].CGColor;
    _scaleLayer.frame = CGRectMake(60, 20 + kYOffset, 50, 50);
    _scaleLayer.cornerRadius = 10;
    [self.view.layer addSublayer:_scaleLayer];
    
    CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    scaleAnimation.fromValue = [NSNumber numberWithFloat:1.0];
    scaleAnimation.toValue = [NSNumber numberWithFloat:1.5];//放大多少倍
    scaleAnimation.autoreverses = YES; //旋转后再旋转到原来的位置
    scaleAnimation.fillMode = kCAFillModeRemoved;
    scaleAnimation.repeatCount = MAXFLOAT;
    scaleAnimation.duration = 0.8;
    
    [_scaleLayer addAnimation:scaleAnimation forKey:@"scaleAnimation"];
}

- (void)initGroupLayer{
    CALayer *groupLayer = [[CALayer alloc] init];
    groupLayer.frame = CGRectMake(60, 340 + 100 +kYOffset, 50, 50);
    groupLayer.cornerRadius = 10;
    groupLayer.backgroundColor = [UIColor purpleColor].CGColor;
    [self.view.layer addSublayer:groupLayer];

    CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    scaleAnimation.fromValue = [NSNumber numberWithFloat:1.0];
    scaleAnimation.toValue = [NSNumber numberWithFloat:1.5];
    scaleAnimation.autoreverses = YES;
    scaleAnimation.repeatCount = MAXFLOAT;
    scaleAnimation.duration = 0.8;
    
    CABasicAnimation *moveAnimation = [CABasicAnimation animationWithKeyPath:@"position"];
    moveAnimation.fromValue = [NSValue valueWithCGPoint:groupLayer.position];
    moveAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(320 - 80, groupLayer.position.y)];
    moveAnimation.autoreverses = YES;
    moveAnimation.repeatCount = MAXFLOAT;
    moveAnimation.duration = 2;
    
    CABasicAnimation *rotateAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.x"];
    rotateAnimation.fromValue = [NSNumber numberWithFloat:0.0];
    rotateAnimation.toValue = [NSNumber numberWithFloat:6.0 * M_PI];
    rotateAnimation.autoreverses = YES;
    rotateAnimation.repeatCount = MAXFLOAT;
    rotateAnimation.duration = 2;
    
    CAAnimationGroup *groupAnimation = [CAAnimationGroup animation];
    groupAnimation.duration = 2;
    groupAnimation.autoreverses = YES;
    groupAnimation.animations = @[moveAnimation, scaleAnimation, rotateAnimation];
    groupAnimation.repeatCount = MAXFLOAT;
    
    [groupLayer addAnimation:groupAnimation forKey:@"groupAnimation"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initScaleLayer];
//    [self initGroupLayer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
