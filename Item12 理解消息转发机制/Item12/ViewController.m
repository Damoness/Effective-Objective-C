//
//  ViewController.m
//  Item12
//
//  Created by Damoness on 2017/12/15.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import "ViewController.h"
#import "EOCAutoDictionary.h"
@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    EOCAutoDictionary *autoDic = [EOCAutoDictionary new];
    
    autoDic.string = @"string";
    
    
    autoDic.date = [NSDate dateWithTimeIntervalSince1970:475372800];
    
    NSLog(@"str:%@,date:%@",autoDic.string,autoDic.date);
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
