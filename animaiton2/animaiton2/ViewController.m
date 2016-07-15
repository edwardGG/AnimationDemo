//
//  ViewController.m
//  animaiton2
//
//  Created by Edward on 16/6/21.
//  Copyright © 2016年 Edward. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (IBAction)action:(id)sender {
//    [UIView beginAnimations:@"Hide Button" context:nil];
    [[self button] setAlpha:0.0];//透明度为0，隐藏button
//    [UIView commitAnimations];
    
    [UIView beginAnimations:@"Slide Around" context:nil];
    
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(viewAnimationDone:)];
    [UIView setAnimationRepeatCount:3];
    [UIView setAnimationRepeatAutoreverses:YES];
    
    CGPoint center = [[self imageView] center];
    center.y += 100;
    [[self imageView] setCenter:center];
    [UIView commitAnimations];
}

- (void)viewAnimationDone:(NSString *)name{
    [UIView beginAnimations:@"Show Button" context:nil];
    [[self button] setAlpha:1.0];
    [UIView commitAnimations];
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
