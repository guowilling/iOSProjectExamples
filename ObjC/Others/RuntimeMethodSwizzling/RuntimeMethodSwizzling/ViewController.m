//
//  ViewController.m
//  RuntimeMethodSwizzling
//
//  Created by 郭伟林 on 17/1/20.
//  Copyright © 2017年 SR. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Swizzling.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // UIButton+Swizzling and UILabel+Swizzling
    UIButton *testBtn = [[UIButton alloc] init];
    testBtn.frame = CGRectMake(0, 0, 200, 50);
    testBtn.center = CGPointMake(self.view.center.x, 100);
    [testBtn setTitle:@"Rapid Clicks" forState:UIControlStateNormal]; // UIFont+Swizzling will influence the title's font style and size.
    [testBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [testBtn addTarget:self action:@selector(testBtnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testBtn];
    testBtn.acceptEventTimeInterval = 5.0; // The interval between two click events is five seconds.
    
    // UIImageView+Swizzling
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 300, 200)];
    imageView.center = self.view.center;
    [self.view addSubview:imageView];
    imageView.image = [UIImage imageNamed:@"hello.jpg"];
}

- (void)testBtnAction {
    
    NSLog(@"%s The interval between two click events is five seconds.", __func__);
}

@end
