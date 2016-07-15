//
//  ViewController.m
//  CoreAnimation
//
//  Created by Edward on 16/6/21.
//  Copyright © 2016年 Edward. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *planeView;



@end

@implementation ViewController
- (IBAction)movePlane:(id)sender {
//    [UIView beginAnimations:nil context:NULL];
//    CGAffineTransform moveTransform = CGAffineTransformMakeTranslation(180, 200);
//    _planeView.layer.affineTransform = moveTransform;
//    _planeView.layer.opacity = 0.25;
//    [UIView commitAnimations];//隐式动画
   
//    CABasicAnimation *opAnim = [CABasicAnimation animationWithKeyPath:@"opacity"];
//    opAnim.duration = 3.0;
//    opAnim.fromValue = [NSNumber numberWithFloat:.25];
//    opAnim.toValue = [NSNumber numberWithFloat:1.0];
//    opAnim.cumulative = NO;//不累积
//    opAnim.repeatCount = MAXFLOAT;
//    [_planeView.layer addAnimation:opAnim forKey:@"animateOpacity"];
//    
//        CGAffineTransform moveTransform = CGAffineTransformMakeTranslation(10, 200);
//    CABasicAnimation *moveAnim = [CABasicAnimation animationWithKeyPath:@"transform"];
//    moveAnim.duration = 2.0;
//    moveAnim.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeAffineTransform(moveTransform)];
//    moveAnim.removedOnCompletion = NO;//必须要设置为no，用CAAnimation必须这样设置。
//    moveAnim.cumulative = YES;
//    
//    moveAnim.fillMode = kCAFillModeBoth;
//    [_planeView.layer addAnimation:moveAnim forKey:@"animateTransform"];
    
    CAKeyframeAnimation *opAnim = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
    opAnim.duration = 6.0;
    opAnim.values = [NSArray arrayWithObjects:[NSNumber numberWithFloat:0.25], [NSNumber numberWithFloat:0.75], [NSNumber numberWithFloat:1.0], nil];
    opAnim.keyTimes = [NSArray arrayWithObjects:[NSNumber numberWithFloat:0.0], [NSNumber numberWithFloat:0.5], [NSNumber numberWithFloat:1.0], nil];
    [_planeView.layer addAnimation:opAnim forKey:@"animateOpacity"];
    
    CGAffineTransform moveTransform = CGAffineTransformMakeTranslation(180, 200);
    CABasicAnimation *moveAnim = [CABasicAnimation animationWithKeyPath:@"transform"];
    moveAnim.duration = 6.0;
    moveAnim.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeAffineTransform(moveTransform)];
    [_planeView.layer addAnimation:moveAnim forKey:@"animateTransform"];
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
