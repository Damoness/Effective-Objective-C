//
//  NSString+EOC_HTTP.h
//  Item25
//
//  Created by Damoness on 2018/1/2.
//  Copyright © 2018年 damoness. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (EOC_HTTP)


//增加前缀;
-(NSString *)eoc_urlEncodedString;
-(NSString *)eoc_urldecodedString;


@end
