//
//  ViewController.m
//  animationText
//
//  Created by Edward on 16/6/22.
//  Copyright © 2016年 Edward. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController
- (IBAction)click:(id)sender {
    CATransition *transition = [CATransition animation];
    transition.duration = 3;
    [transition setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
    transition.fillMode = kCAFillModeForwards;
    [transition setType:@"cube"];
    [transition setDelegate:self];
    [transition setSubtype:kCATransitionFromLeft];
   
    [_imageView.layer addAnimation:transition forKey:@"transtionKey"];
    
    
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
    _imageView.image = [UIImage imageNamed:@"1"];
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
