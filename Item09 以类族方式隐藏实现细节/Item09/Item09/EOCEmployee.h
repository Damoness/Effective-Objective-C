//
//  EOCEmployee.h
//  Item09
//
//  Created by Damoness on 2017/12/18.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSUInteger,EOCEmployeeType){
    EOCEmployeeTypeDeveloper,
    EOCEmployeeTypeDesigner,
    EOCEmployeeTypeFinance,
    
};


@interface EOCEmployee : NSObject


@property (nonatomic,copy) NSString *name;

@property (nonatomic,assign)NSUInteger salary;

+(EOCEmployee *)employeeWithType:(EOCEmployeeType)type;
- (void)doADayWork;

@end
