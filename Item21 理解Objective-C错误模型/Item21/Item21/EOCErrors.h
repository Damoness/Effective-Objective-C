//
//  EOCErrors.h
//  Item21
//
//  Created by Damoness on 2017/12/16.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import <Foundation/Foundation.h>


extern NSString *const EOCErrorDomain;

typedef NS_ENUM(NSInteger,EOCError){
    EOCErrorUnknown = -1,
    EOCErrorInternalInconsistency = 100,
    EOCErrorGeneralFault = 105,
    EOCErrorBadInput = 500,
};


@interface EOCErrors : NSObject


@end
