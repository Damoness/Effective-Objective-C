//
//  EOCPerson.m
//  Item07
//
//  Created by Damoness on 2017/12/15.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import "EOCPerson.h"

@implementation EOCPerson


-(instancetype)init{
    if (self =[super init]) {
        
        _firstName = @"";
        _lastName = @"";
        
    }
    return self;
    
}

-(NSString *)fullName{
    
    return [NSString stringWithFormat:@"%@ %@",self.firstName,self.lastName];
}


-(void)setFullName:(NSString *)fullName{
    
    NSArray *array =  [fullName componentsSeparatedByString:@" "];

    self.firstName = array.firstObject;
    self.lastName = array.lastObject;
    
}


@end



@implementation EOCSmithPerson:EOCPerson


- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}


-(void)setLastName:(NSString *)lastName{
    
    if (![lastName isEqualToString:@"Smith"]) {
        [NSException raise:NSInvalidArgumentException format:@"Last name must be Smith"];
    }
    
    self.lastName = lastName;
    
}



@end
