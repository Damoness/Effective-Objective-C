//
//  NSArray+Print.m
//  Item22
//
//  Created by Damoness on 2017/12/16.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import "NSArray+Print.h"

@implementation NSArray (Print)


-(void)run{
    
    NSLog(@"run");
}


-(NSString *)description{
    
    
    NSMutableArray *array = [NSMutableArray array];
    
    for (id obj in self) {
        
        NSString *key = [NSString stringWithFormat:@"<%@,%p> : %@",[obj class],obj,obj];
        [array addObject:key];
    }
    
    return [NSString stringWithFormat:@"<%@,%p>,%@",[self class],self,array];
    
    
}

@end
