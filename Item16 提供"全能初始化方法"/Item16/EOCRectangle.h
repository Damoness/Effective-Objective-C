//
//  EOCRectangle.h
//  Item16
//
//  Created by Damoness on 2017/12/16.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import <Foundation/Foundation.h>


//

@interface EOCRectangle : NSObject


@property (nonatomic,assign,readonly)float width;
@property (nonatomic,assign,readonly)float height;


-(instancetype)initWithWidth:(float)width height:(float)height NS_DESIGNATED_INITIALIZER; 

@end
