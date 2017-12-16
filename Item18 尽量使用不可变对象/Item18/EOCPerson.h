//
//  EOCPerson.h
//  Item18
//
//  Created by Damoness on 2017/12/16.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCPerson : NSObject



@property (nonatomic,copy,readonly) NSString *firstName;
@property (nonatomic,copy,readonly) NSString *lastName;
@property (nonatomic,strong,readonly) NSSet *friends;


-(instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName;

- (void)addFriend:(EOCPerson *)person;
- (void)removeFriend:(EOCPerson *)person;


@end
