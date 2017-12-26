//
//  ViewController.m
//  Item35
//
//  Created by Damoness on 2017/12/26.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>

@interface EOCClass:NSObject

@end

@implementation EOCClass

@end


@interface ViewController ()

@end

@implementation ViewController


-(void)printClassInfo:(id)obj{
    
    Class cls = object_getClass(obj);
    Class superCls = class_getSuperclass(cls);
    NSLog(@"==== %s: %s ====",class_getName(cls),class_getName(superCls));
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    EOCClass *obj = [EOCClass new];
    
    NSLog(@"Before release");
    
    
    [self printClassInfo:obj];
    
    [obj release];
    
    NSLog(@"after release");
    
    [self printClassInfo:obj];
    
    
    [obj description];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
