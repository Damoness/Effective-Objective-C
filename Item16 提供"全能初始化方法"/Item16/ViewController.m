//
//  ViewController.m
//  Item16
//
//  Created by Damoness on 2017/12/16.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import "ViewController.h"
#import "EOCSquare.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSDate *date = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:1];
    
    NSLog(@"%@",date);
    
    EOCSquare *square = [[EOCSquare alloc]init];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
