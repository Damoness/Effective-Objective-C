//
//  EOCPerson.m
//  Item18
//
//  Created by Damoness on 2017/12/16.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import "EOCPerson.h"

@interface EOCPerson()

@property (nonatomic,copy,readwrite) NSString *firstName;
@property (nonatomic,copy,readwrite) NSString *lastName;

@end


@implementation EOCPerson{
    
    NSMutableSet *_internalFriends;
}


-(instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName{
    
    if (self = [super init]) {
        _lastName = [lastName copy];
        _firstName = [firstName copy];
        _internalFriends = [NSMutableSet set];
    }
    return self;
}

-(NSSet *)friends{
    
    return [_internalFriends copy];
    
}


- (void)addFriend:(EOCPerson *)person{
    
    [_internalFriends addObject:person];
    
}
- (void)removeFriend:(EOCPerson *)person{
    
    [_internalFriends removeObject:person];
    
}


@end
