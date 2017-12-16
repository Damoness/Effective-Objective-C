//
//  EOCSquare.m
//  Item16
//
//  Created by Damoness on 2017/12/16.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import "EOCSquare.h"



@implementation EOCSquare



-(instancetype)initWithWidth:(float)width height:(float)height{
    
    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Must use initWithDimension:instead" userInfo:nil];
}


-(instancetype)init{
    
   return  [self initWithDimension:5.0];
}

-(instancetype)initWithDimension:(float)dimension{
    if (self = [super initWithWidth:dimension height:dimension]) {

        
    }
    return self;
}




@end
