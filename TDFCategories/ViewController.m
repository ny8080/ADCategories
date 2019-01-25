//
//  ViewController.m
//  TDFCategories
//
//  Created by tripleCC on 2/20/17.
//  Copyright © 2017 tripleCC. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+tdf_blur.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIImage *image = [UIImage tdf_blurImage:[UIImage imageNamed:@""] withBlurNumber:0.1];
}

- (void)viewControllerDidTriggerLeftClick:(UIViewController *)viewController {
    NSLog(@"%s", __FUNCTION__);
    
}

- (void)viewControllerDidTriggerRightClick:(UIViewController *)viewController {
    NSLog(@"%s", __FUNCTION__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
