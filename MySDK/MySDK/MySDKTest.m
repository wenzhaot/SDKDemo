//
//  MySDKTest.m
//  MySDK
//
//  Created by wenzhaot on 8/10/16.
//  Copyright © 2016 cocoaman. All rights reserved.
//

#import "MySDKTest.h"
#import "AFNetworking.h"

@implementation MySDKTest

+ (void)printTest {
    NSLog(@"MySDK Test");
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    
    NSURL *URL = [NSURL URLWithString:@"https://www.baidu.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        } else {
            NSLog(@"%@ %@", response, responseObject);
        }
    }];
    [dataTask resume];
}

@end
