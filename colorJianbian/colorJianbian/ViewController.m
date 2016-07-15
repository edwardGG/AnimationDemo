//
//  ViewController.m
//  colorJianbian
//
//  Created by Edward on 16/6/22.
//  Copyright © 2016年 Edward. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CAGradientLayer *gradient = [CAGradientLayer layer];
    CGRect rect = CGRectMake(200, 100, 100, 100);
    gradient.frame = rect;
    gradient.colors = [NSArray arrayWithObjects:(id)[UIColor blueColor].CGColor,
                       (id)[UIColor whiteColor].CGColor,
                       nil];
    [self.view.layer insertSublayer:gradient atIndex:0];
    
    
//    CGRect barRect=CGRectMake(xPosition, self.bounds.size.height - 180 - 13, 30, 180);
//    CGColorRef upColor = [UIColor colorWithRed:254/255.0 green:186/255.0 blue:187/255.0 alpha:1.0].CGColor;
//    CGColorRef downColor = [UIColor colorWithRed:255/255.0 green:91/255.0 blue:92/255.0 alpha:1.0].CGColor;
//    drawLinearGradient(context, barRect, upColor, downColor);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
