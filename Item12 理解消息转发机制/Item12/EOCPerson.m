//
//  EOCPerson.m
//  Item12
//
//  Created by Damoness on 2017/12/15.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import "EOCPerson.h"
#import <objc/runtime.h>
@implementation EOCPerson



+(BOOL)resolveInstanceMethod:(SEL)sel{
    
    NSString *selectorString = NSStringFromSelector(sel);
    
    if ([selectorString hasPrefix:@"eat"]) {
        
        
        class_addMethod(self, sel, (IMP)run, "v@:");
        
        //method_setImplementation(<#Method  _Nonnull m#>, <#IMP  _Nonnull imp#>)
        
        return YES;
    }else{
        
        return [super resolveInstanceMethod:sel];
        
    }
    
}

void run(){
    
    NSLog(@"run");
}

@end
