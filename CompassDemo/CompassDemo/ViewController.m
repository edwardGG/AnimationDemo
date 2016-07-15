//
//  ViewController.m
//  CompassDemo
//
//  Created by Edward on 16/6/7.
//  Copyright © 2016年 Edward. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) UIImageView *imageView;
@property (nonatomic) UIImageView *bgImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self imageView];
    [self bgImageView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)viewDidLayoutSubviews{
//    [super viewDidLayoutSubviews];
//    self.imageView.center = self.view.center;
//    self.bgImageView.center = self.view.center;
//}

- (UIImageView *)imageView {
	if(_imageView == nil) {
		_imageView = [[UIImageView alloc] initWithFrame:CGRectMake(97, 98, 200, 200)];

        [self.bgImageView addSubview:_imageView];

        _imageView.contentMode = UIViewContentModeScaleAspectFill;
//        _imageView.backgroundColor = [UIColor yellowColor];
        CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
        animation.toValue = @( - M_PI * 2);
        animation.duration = 3;
        animation.repeatCount = MAXFLOAT;
        _imageView.image = [UIImage imageNamed:@"413fde60c63d218986f38338866b6861"];
        [_imageView.layer addAnimation:animation forKey:@"rotationZ"];
	}
	return _imageView;
}

- (UIImageView *)bgImageView {
	if(_bgImageView == nil) {
		_bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 130, 400, 400)];
        [self.view addSubview:_bgImageView];
//        _bgImageView.backgroundColor = [UIColor redColor];
//        _bgImageView.clipsToBounds = YES;
        _bgImageView.image = [UIImage imageNamed:@"bg_compasspointer"];
	}
	return _bgImageView;
}

@end
