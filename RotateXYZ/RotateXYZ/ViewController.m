//
//  ViewController.m
//  RotateXYZ
//
//  Created by Edward on 16/5/26.
//  Copyright © 2016年 Edward. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//@property (weak, nonatomic) IBOutlet UIButton *autoClickButton;

@end

@implementation ViewController
- (IBAction)rotateXSliderValueChanged:(id)sender {
    UISlider * slider = (UISlider *)sender;
    float currentValue = [slider value];
    _openGLView.rotateX = currentValue;
    NSLog(@" >> current x rotation is %f", currentValue);
    
}

- (IBAction)rotateYSliderValueChanged:(id)sender {
    UISlider * slider = (UISlider *)sender;
    float currentValue = [slider value];
    _openGLView.rotateY = currentValue;
    NSLog(@" >> current y rotation is %f", currentValue);
}

- (IBAction)rotateZSliderValueChanged:(id)sender {
    UISlider * slider = (UISlider *)sender;
    float currentValue = [slider value];
    _openGLView.rotateZ = currentValue;
    NSLog(@" >> current z rotation is %f", currentValue);
}

//- (IBAction)autoButtonClick:(UIButton *)sender {
////    [_openGLView toggleDisplayLink];
////    UIButton *button = (UIButton *)sender;
////    NSString * text = button.titleLabel.text;
////    if ([text isEqualToString:@"Auto"]) {
////        [button setTitle: @"Stop" forState: UIControlStateNormal];
////    }
////    else {
////        [button setTitle: @"Auto" forState: UIControlStateNormal];
////    }
//    if (sender.selected == 0) {
//        [_openGLView toggleDisplayLink];
//        sender.selected = 1;
//        [self.autoClickButton setTitle:@"Stop" forState:UIControlStateNormal];
//    }else{
//        [_openGLView resetTransform];
//        sender.selected = 0;
//    }
//}


- (IBAction)controlScroll:(UISwitch *)sender {
    if (sender.on) {
        [_openGLView toggleDisplayLink];
    }else{
        [_openGLView resetTransform];
    }
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
