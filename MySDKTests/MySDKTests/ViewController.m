//
//  ViewController.m
//  MySDKTests
//
//  Created by wenzhaot on 8/8/16.
//  Copyright © 2016 cocoaman. All rights reserved.
//

#import "ViewController.h"
#import <MySDK/MySDK.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [MySDKTest printTest];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
