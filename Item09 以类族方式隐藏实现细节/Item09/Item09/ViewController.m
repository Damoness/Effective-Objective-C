//
//  ViewController.m
//  Item09
//
//  Created by Damoness on 2017/12/18.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import "ViewController.h"
#import "EOCEmployee.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
  
    UIButton *button1 =  [UIButton buttonWithType:UIButtonTypeCustom];
    
    UIButton *button2 =  [UIButton buttonWithType:UIButtonTypeSystem];
    
    UIButton *button3 =  [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    
    UIButton *button4 =  [UIButton buttonWithType:UIButtonTypeInfoLight];
    
    UIButton *button5 =  [UIButton buttonWithType:UIButtonTypeInfoDark];
    
    
    
    
    EOCEmployee *employeeDeveloper = [EOCEmployee employeeWithType:EOCEmployeeTypeDeveloper];
    
    EOCEmployee *employeeDesigner = [EOCEmployee employeeWithType:EOCEmployeeTypeDesigner];
    
    EOCEmployee *employeeFinace = [EOCEmployee employeeWithType:EOCEmployeeTypeFinance];
    
    
    
    
    //array1, array2,array3的实际类型为NSArray的子类
    
    NSArray *array1 = [NSArray array];
    
    NSArray *array2 = [NSArray arrayWithArray:@[@1]];
    
    NSArray *array3 = @[@1,@2,@3];
    
    
    if ([array1 isKindOfClass:[NSArray class]]) {
        NSLog(@"array1 是 一种 NSArray");
    }
    
    
 
    NSLog(@"%@,%@,%@",[array1 class],[array2 class],array3.class);
    
    
    NSString *string1 = @"";
    
    NSString *string2 = [NSString stringWithString:@"1"];
    
    NSString *string3 = @"1".mutableCopy;
    
    
    NSNumber *aChar = [NSNumber numberWithChar:'a'];
    NSNumber *anInt = [NSNumber numberWithInt:1];
    NSNumber *aFloat = [NSNumber numberWithFloat:1.0];
    NSNumber *aDouble = [NSNumber numberWithDouble:1.0];
    
    
    
    //类簇官方文档
   // https://developer.apple.com/library/content/documentation/General/Conceptual/CocoaEncyclopedia/ClassClusters/ClassClusters.html
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
