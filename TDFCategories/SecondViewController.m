//
//  SecondViewController.m
//  TDFCategories
//
//  Created by tripleCC on 3/16/17.
//  Copyright © 2017 tripleCC. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewControllerDidTriggerRightClick:(UIViewController *)viewController {
    NSLog(@"%s", __FUNCTION__);
}

//- (void)viewControllerDidTriggerLeftClick:(UIViewController *)viewController {
//    NSLog(@"%s", __FUNCTION__);
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)dealloc {
    NSLog(@"%@", self);
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
