//
//  EOCPerson.h
//  Item07
//
//  Created by Damoness on 2017/12/15.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCPerson : NSObject


@property (nonatomic,copy) NSString *firstName;
@property (nonatomic,copy) NSString *lastName;


//方便的方法

-(NSString *)fullName;
-(void)setFullName:(NSString *)fullName;


@end



@interface EOCSmithPerson:EOCPerson





@end
