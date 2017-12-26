//
//  ViewController.m
//  Item36
//
//  Created by Damoness on 2017/12/26.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSString *string = @"some string";
    
    NSLog(@"string retainCount = %lu",[string retainCount]);
    
    NSNumber *numberI = @1;
    NSLog(@"numberI retainCount = %lu",[numberI retainCount]);
    
    NSNumber *numberF = @3.14;
    NSLog(@"numberF retainCount = %lu",[numberF retainCount]);
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
