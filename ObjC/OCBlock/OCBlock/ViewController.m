//
//  ViewController.m
//  OCBlock
//
//  Created by Willing Guo on 17/1/15.
//  Copyright © 2017年 SR. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    {
        // Block  链式编程
        Student *student = [[Student alloc] init];
        student.study(@"xx宝典").run().study(@"xx秘籍");
    }
}


int num = 10;
void test5()
{
    void (^block)() = ^{
        // block 内部能够跟踪全局变量的改变
        NSLog(@"num = %d", num); // age = 20
    };
    num = 20;
    block();
}

void test4()
{
    static int age = 10;
    void (^block)() = ^{
        // block 内部能够跟踪 static 修饰的局部变量的改变
        NSLog(@"age = %d", age); // age = 20
    };
    age = 20;
    block();
}

void test2()
{
    __block int age = 10;
    void (^block)() = ^{
        // block 内部能够跟踪 __block 修饰的局部变量的改变
        NSLog(@"age = %d", age); // age = 20
    };
    age = 20;
    block();
}

void test1()
{
    int age = 10;
    void (^block)() = ^{
        // block 内部不能跟踪普通局部变量的改变
        NSLog(@"age = %d", age); // age = 10
    };
    age = 20;
    block();
}

@end