//
//  ViewController.m
//  Item22
//
//  Created by Damoness on 2017/12/16.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSArray *array = @[@"1".mutableCopy,@"2",@"3"];
    
    [array performSelector:@selector(run)];
    
    NSArray *copyedArray = [array mutableCopy];
    
    
    NSArray *deepCopyedArray = [[NSArray alloc]initWithArray:array copyItems:YES];
    
    
    NSMutableString *mString0 =   array[0];
    [mString0 appendString:@"11"];
    

    NSLog(@"array:%@",array);
    
    NSLog(@"copyedArray:%@",copyedArray);
    
    NSLog(@"deepCopyedArray:%@",deepCopyedArray);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
