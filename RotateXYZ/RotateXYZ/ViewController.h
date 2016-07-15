//
//  ViewController.h
//  RotateXYZ
//
//  Created by Edward on 16/5/26.
//  Copyright © 2016年 Edward. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OpenGLView.h"

@interface ViewController : UIViewController

//@property (weak, nonatomic) IBOutlet UISlider *rotateSliderX;
@property (weak, nonatomic) IBOutlet UIView *controlView;

@property (weak, nonatomic) IBOutlet OpenGLView *openGLView;


@end

