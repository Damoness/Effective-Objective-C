//
//  ViewController.m
//  Item19
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
    
   NSString *str = [NSString stringWithString:@"11"];
    
   int intValue =  [str intValue];
    
    
    [self performSelector:@selector(_resetViewController)];
    
    
}

//- (void)_resetViewController{
//
//
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
