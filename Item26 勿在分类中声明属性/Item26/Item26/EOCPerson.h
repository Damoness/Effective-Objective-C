//
//  EOCPerson.h
//  Item26
//
//  Created by Damoness on 2018/1/2.
//  Copyright © 2018年 damoness. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCPerson : NSObject

@property (nonatomic,copy) NSString *firstName;
@property (nonatomic,copy) NSString *lastName;

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName;



@property (nonatomic,strong) NSArray *friends; //要将属性定义在主接口里面


@end


@interface EOCPerson (EOC_FriendShip)


-(BOOL)isFriendsWith:(EOCPerson *)person;

@end


