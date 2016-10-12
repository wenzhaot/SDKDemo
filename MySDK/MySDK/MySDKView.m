//
//  MySDKView.m
//  MySDK
//
//  Created by wenzhaot on 10/12/16.
//  Copyright © 2016 cocoaman. All rights reserved.
//

#import "MySDKView.h"

@interface MySDKView()
@property (strong, nonatomic) UIImageView *imageView;
@end

@implementation MySDKView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageView = [[UIImageView alloc] initWithFrame:self.bounds];
        self.imageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        self.imageView.image = [UIImage imageNamed:@"MySDK.bundle/test.png"];
        [self addSubview:self.imageView];
    }
    return self;
}

@end
