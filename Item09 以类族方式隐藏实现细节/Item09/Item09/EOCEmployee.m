//
//  EOCEmployee.m
//  Item09
//
//  Created by Damoness on 2017/12/18.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import "EOCEmployee.h"


@interface EOCEmployeeDeveloper:EOCEmployee

@end

@implementation EOCEmployeeDeveloper
@end

@interface EOCEmployeeDesigner:EOCEmployee
@end

@implementation EOCEmployeeDesigner

@end


@interface EOCEmployeeFiance:EOCEmployee

@end

@implementation EOCEmployeeFiance

@end


@implementation EOCEmployee

+(EOCEmployee *)employeeWithType:(EOCEmployeeType)type{
    
    
    switch (type) {
        case EOCEmployeeTypeDeveloper:
            return [EOCEmployeeDeveloper new];
            break;
        case EOCEmployeeTypeDesigner:
            return [EOCEmployeeDesigner new];
            break;
        case EOCEmployeeTypeFinance:
            return [EOCEmployeeFiance new];
            break;
    }
    
}


- (void)doADayWork {
    
    
}

@end






