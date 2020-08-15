//
//  EOCLoginManager.m
//  04Item 多用类型常量，少用#define预处理指令
//
//  Created by Damoness on 2020/8/15.
//  Copyright © 2020 damoness. All rights reserved.
//

#import "EOCLoginManager.h"
@import UIKit;

const  NSString *EOCLoginManagerDidLoginNotifiation = @"EOCLoginManagerDidLoginNotifiation";



@implementation EOCLoginManager

-(void)login{
    
}

-(void)didLogin{
    
    
    //NSString *k = UITextFieldTextDidBeginEditingNotification;
    
    [[NSNotificationCenter defaultCenter]postNotificationName:EOCLoginManagerDidLoginNotifiation object:nil];
    
}


@end
