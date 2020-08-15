//
//  EOCPerson.m
//  Item02 在类的头文件中尽量少引入其它头文件
//
//  Created by Damoness on 2020/8/15.
//  Copyright © 2020 damoness. All rights reserved.
//

#import "EOCPerson.h"
#import "EOCEmployer.h" //只在真正需要使用的实现文件中引入


@implementation EOCPerson

-(void)eat{
    NSLog(@"eating");
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        self.employer = [EOCEmployer new];
        
    }
    return self;
}


@end
