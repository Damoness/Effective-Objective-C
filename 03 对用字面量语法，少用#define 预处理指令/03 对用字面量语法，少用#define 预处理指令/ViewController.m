//
//  ViewController.m
//  03 对用字面量语法，少用#define 预处理指令
//
//  Created by Damoness on 2020/8/15.
//  Copyright © 2020 damoness. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    //数值
    NSNumber *number1 = [NSNumber numberWithInt:1];
    
    NSNumber *number2 = @2;
    
    NSNumber *floatNumber = @2.1;
    
    //数组
    NSArray *animals = [NSArray arrayWithObjects:@"dog",@"cat",@"mouse", nil];
    
    NSArray *animals2 = @[@"dog",@"cat",@"mouse"];
    
    
    //字典
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"Damon",@"firstName",@"Wu",@"lastName", nil];
    
    NSDictionary *dic2 = @{@"firstName":@"Damon",@"lastName":@"Wu"};
    
}


@end
