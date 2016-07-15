//
//  ViewController.m
//  animation3
//
//  Created by Edward on 16/6/21.
//  Copyright © 2016年 Edward. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic) CATransition *transition;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

//- (void)animationDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context{
//    if ([animationID isEqualToString:@"animationID"]) {
//        
//        self.imageView.backgroundColor = [UIColor yellowColor];
//        
//    }
//}

- (IBAction)clickone:(id)sender {
    [UIView beginAnimations:@"animationID" context:nil];
    [UIView setAnimationDuration:4];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    [UIWindow setAnimationsEnabled:YES];
    //[UIView setAnimationRepeatAutoreverses:YES]; //自动恢复
    [UIView setAnimationDidStopSelector:@selector(fasd)];  //动画结束完成的事件
#pragma 4个方向的翻页
//    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:_imageView cache:YES];//向上翻页
//    [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:_imageView cache:YES];//向下翻页
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:_imageView cache:YES];//向左翻页
//    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:_imageView cache:YES];//向右翻页
    [UIView setAnimationDelegate:self]; //设置代理后，执行-(void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
    [UIView commitAnimations];
}

#pragma 代理方法
- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
self.imageView.image = [UIImage imageNamed:@"仪表盘2"];
}

- (IBAction)clicktwo:(id)sender {
#pragma 正方体效果向上翻转
//    CATransition *transtion = [CATransition animation];
//    //            [transtion setStartProgress:0.5];
//    //            [transtion setEndProgress:0.6];
//    transtion.duration = 5;
//    [transtion setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
//    [transtion setType:@"cube"];
//    [transtion setSubtype:kCATransitionFromTop];
//    [_imageView.layer addAnimation:transtion forKey:@"transtionKey"];
//    transtion.delegate = self; //代理
    
//       _transition = [CATransition animation];
//        //            [transtion setStartProgress:0.5];
//        //            [transtion setEndProgress:0.6];
//        _transition.duration = 2;
//        [_transition setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
//        [_transition setType:@"cube"];
//     [_transition setDelegate:self];//代理写在前面，写在最后面不会调用代理方法！！
//        [_transition setSubtype:kCATransitionFromTop];
//        [_imageView.layer addAnimation:_transition forKey:@"transtionKey"];

#pragma 从下向上推出
//    CATransition *transtion = [CATransition animation];
//    //            [transtion setStartProgress:0.5];
//    //            [transtion setEndProgress:0.6];
//    transtion.duration = 5;
//    [transtion setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
//    [transtion setType:kCATransitionPush];
//    [transtion setSubtype:kCATransitionFromTop];
//    [_imageView.layer addAnimation:transtion forKey:@"animationKey"];
    
#pragma 从小向上揭走
//    CATransition *transtion = [CATransition animation];
//    //            [transtion setStartProgress:0.5];
//    //            [transtion setEndProgress:0.6];
//    transtion.duration = 5;
//    [transtion setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
//    [transtion setType:kCATransitionReveal];
//    [transtion setSubtype:kCATransitionFromTop];
//    [_imageView.layer addAnimation:transtion forKey:@"transtionKey"];
  
#pragma 从下向上覆盖
//    CATransition *transtion = [CATransition animation];
//    //            [transtion setStartProgress:0.5];
//    //            [transtion setEndProgress:0.6];
//    transtion.duration = 5;
//    [transtion setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
//    [transtion setType:kCATransitionMoveIn];
//    [transtion setSubtype:kCATransitionFromTop];
//    [_imageView.layer addAnimation:transtion forKey:@"transtionKey"];
    
#pragma 一张图片覆盖另一张图片
//    CATransition *transtion = [CATransition animation];
//    //            [transtion setStartProgress:0.5];
//    //            [transtion setEndProgress:0.6];
//    transtion.duration = 5;
//    [transtion setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
//                                  [transtion setType:kCATransitionFade];
//                                  [transtion setSubtype:kCATransitionFromTop];
//                                  [_imageView setImage:[UIImage imageNamed:@"仪表盘2"]];
//                                  [_imageView.layer addAnimation:transtion forKey:@"animationkey"];
    
#pragma 抽走
//    CATransition *transtion = [CATransition animation];
//    //            [transtion setStartProgress:0.5];
//    //            [transtion setEndProgress:0.6];
//    transtion.duration = 5;
//    [transtion setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
//    [transtion setType:@"suckEffect"];
//    [transtion setSubtype:kCATransitionFromTop];
//    [_imageView.layer addAnimation:transtion forKey:@"transtionKey"];

#pragma 绕x轴翻转
//    CATransition *transtion = [CATransition animation];
//    //            [transtion setStartProgress:0.5];
//    //            [transtion setEndProgress:0.6];
//    transtion.duration = 5;
//    [transtion setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
//    [transtion setType:@"oglFlip"];
//    [transtion setSubtype:kCATransitionFromTop];
//    [_imageView.layer addAnimation:transtion forKey:@"transtionKey"];
    
#pragma 波纹效果
//    CATransition *transtion = [CATransition animation];
//    //            [transtion setStartProgress:0.5];
//    //            [transtion setEndProgress:0.6];
//    transtion.duration = 5;
//    [transtion setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
//    [transtion setType:@"rippleEffect"];
//    [transtion setSubtype:kCATransitionFromTop];
//    [_imageView.layer addAnimation:transtion forKey:@"transtionKey"];
    
#pragma 开镜头
//    CATransition *transtion = [CATransition animation];
//    //            [transtion setStartProgress:0.5];
//    //            [transtion setEndProgress:0.6];
//    transtion.duration = 5;
//    [transtion setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
//    [transtion setType:@"cameraIrisHollowOpen"];
//    [transtion setSubtype:kCATransitionFromTop];
//    [_imageView.layer addAnimation:transtion forKey:@"transtionKey"];
    
#pragma 关镜头
//    CATransition *transtion = [CATransition animation];
//    //            [transtion setStartProgress:0.5];
//    //            [transtion setEndProgress:0.6];
//    transtion.duration = 5;
//    [transtion setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
//    [transtion setType:@"cameraIrisHollowClose"];
//    [transtion setSubtype:kCATransitionFromTop];
//    [_imageView.layer addAnimation:transtion forKey:@"transtionKey"];
    
#pragma 缩放
//    CABasicAnimation *basic = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
//    [basic setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
//    [basic setFromValue:[NSNumber numberWithFloat:1]];
//    [basic setToValue:[NSNumber numberWithFloat:.3]];
//    [basic setDuration:2];
//    //[basic setDelegate:self];
//    [_imageView.layer addAnimation:basic forKey:@"animationKey"];
    
    
#pragma 透明
//    CABasicAnimation *basic1 = [CABasicAnimation animationWithKeyPath:@"opacity"];
//    [basic1 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
//    [basic1 setFromValue:[NSNumber numberWithFloat:1]];
//    [basic1 setToValue:[NSNumber numberWithFloat:.3]];
//    [basic1 setDuration:2];
//    [_imageView.layer addAnimation:basic1 forKey:@"animationKey"];
    
#pragma 边框效果
    CAKeyframeAnimation *keyframe = [CAKeyframeAnimation animationWithKeyPath:@"borderWidth"];
    keyframe.values = [NSArray arrayWithObjects:[NSNumber numberWithFloat:0],
                       [NSNumber numberWithFloat:5],
                       [NSNumber numberWithFloat:10],
                       [NSNumber numberWithFloat:15],nil];
    keyframe.repeatCount = MAXFLOAT;
    keyframe.autoreverses = YES;
    keyframe.duration = 2;
    [_imageView.layer addAnimation:keyframe forKey:@"animationKey"];
    
#pragma 移动位置
//    UIBezierPath *path = [UIBezierPath bezierPath];
//    //[path moveToPoint:image.frame.origin];
//    [path moveToPoint:CGPointMake(_imageView.frame.origin.x + _imageView.frame.size.width/2, _imageView.frame.origin.y + _imageView.frame.size.height/2)];
//    [path addLineToPoint:CGPointMake(_imageView.frame.origin.x + _imageView.frame.size.width/2,400)];
//    [path addLineToPoint:CGPointMake(20, 400)];
//    CAKeyframeAnimation *keyframe1 = [CAKeyframeAnimation animationWithKeyPath:@"position"];
//    keyframe1.path = path.CGPath;
//    keyframe1.duration = 2;
//    [_imageView.layer addAnimation:keyframe1 forKey:@"animationKey"];
    
#pragma 动画组
//    CAAnimationGroup *group = [CAAnimationGroup animation];
//    CABasicAnimation *basic2 = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
//    [basic2 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
//    [basic2 setFromValue:[NSNumber numberWithFloat:1]];
//    [basic2 setToValue:[NSNumber numberWithFloat:.3]];
//    CAKeyframeAnimation *keyframe2 = [CAKeyframeAnimation animationWithKeyPath:@"transform.rotation.x"];
//    keyframe2.values = [NSArray arrayWithObjects:[NSNumber numberWithFloat:0],[NSNumber numberWithFloat:M_PI], nil];
//    [group setDuration:2];
//    [group setAnimations:[NSArray arrayWithObjects:basic2,keyframe2, nil]];
//    [_imageView.layer addAnimation:group forKey:@"animationKey"];
}


- (IBAction)clickthree:(id)sender {


}


- (void)fasd{
    _imageView.image = [UIImage imageNamed:@"仪表盘2"];
    _imageView.backgroundColor = [UIColor yellowColor];
//    [self.imageView removeFromSuperview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
