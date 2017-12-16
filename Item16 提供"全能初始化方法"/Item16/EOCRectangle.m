//
//  EOCRectangle.m
//  Item16
//
//  Created by Damoness on 2017/12/16.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import "EOCRectangle.h"

@implementation EOCRectangle

-(instancetype)initWithWidth:(float)width height:(float)height{
    
    if (self = [super init]) {
        
        _width = width;
        _height = height;
    }
    
    return self;
}


-(instancetype)init{
    
  return  [self initWithWidth:0 height:0];
    
}


@end
