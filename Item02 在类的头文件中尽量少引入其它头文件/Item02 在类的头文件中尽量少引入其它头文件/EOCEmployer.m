//
//  EOCEmployer.m
//  Item02 在类的头文件中尽量少引入其它头文件
//
//  Created by Damoness on 2020/8/15.
//  Copyright © 2020 damoness. All rights reserved.
//

#import "EOCEmployer.h"
#import "EOCPerson.h"

@implementation EOCEmployer

-(void)addEmployee:(EOCPerson *)person{
    
    [person eat];
    
}
-(void)removeEmployee:(EOCPerson *)person{
    
}

@end

