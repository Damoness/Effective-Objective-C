//
//  ViewController.m
//  Item15
//
//  Created by Damoness on 2017/12/16.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import "ViewController.h"
#import "EOCSoundPlayer.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    EOCSoundPlayer *soundPlayer = [[EOCSoundPlayer alloc]initWithURL: [NSURL URLWithString:@"http://up.mcyt.net/md5/53/NDAyNzQ2Mg_Qq4329912.mp3"]];
    
    [soundPlayer playSound];
    
    
}


//会产生编译错误
//void completion(){
//    
//    
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
