//
//  EOCAutoDictionary.m
//  Item12
//
//  Created by Damoness on 2017/12/15.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import "EOCAutoDictionary.h"
#import <objc/runtime.h>


@interface EOCAutoDictionary()

@property (nonatomic,strong) NSMutableDictionary *backingStore;

@end


@implementation EOCAutoDictionary


@dynamic string,date,number,opaqueObject;


- (instancetype)init
{
    self = [super init];
    if (self) {
        _backingStore = [NSMutableDictionary dictionary];
    }
    return self;
}




id autoDictionaryGetter(id self, SEL _cmd){
    
    
    EOCAutoDictionary *autoDic = (EOCAutoDictionary *)self;
    
    NSString *key = NSStringFromSelector(_cmd);
    
    id value = [autoDic.backingStore objectForKey:key];
    
    return value;
    
}

void autoDictionarySetter(id self,SEL _cmd,id value){
    
    EOCAutoDictionary *autoDic = (EOCAutoDictionary *)self;
    
    NSString *selectorString = NSStringFromSelector(_cmd);
    
    NSMutableString *key = [selectorString mutableCopy];
    
    
    //去除set
    [key deleteCharactersInRange:NSMakeRange(0, 3)];
    
    //去除:
    [key deleteCharactersInRange:NSMakeRange(key.length - 1, 1)];
    
    //获取第一个字符变成小写
    NSString *lowercaseFirstChar = [key substringWithRange:NSMakeRange(0, 1)].lowercaseString;
    
    //替换第一个字符
    [key replaceCharactersInRange:NSMakeRange(0, 1) withString:lowercaseFirstChar];
    
    
    //保持
    [autoDic.backingStore setValue:value forKey:key];

}


+(BOOL)resolveInstanceMethod:(SEL)sel{
    
    NSString *method =  NSStringFromSelector(sel);
    
    if ([method hasPrefix:@"set"]) {
        
        
        class_addMethod(self, sel, (IMP)(autoDictionarySetter), "v@:@");
        
        
    }else{
        
        class_addMethod(self, sel, (IMP)(autoDictionaryGetter), "v@:");
        
    }
    
    return YES;
    
}

//-(void)setString:(NSString *)string{
//
//
//    //const char *key =
//
//
//    objc_setAssociatedObject(self, "string", string, OBJC_ASSOCIATION_COPY_NONATOMIC);
//
//}
//
//-(NSString *)string{
//
//
//    id object  =   objc_getAssociatedObject(self, "string");
//
//    return object;
//}

@end
                                                                          
