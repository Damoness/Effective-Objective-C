//
//  Person.h
//  Item24
//
//  Created by Damoness on 2018/1/2.
//  Copyright © 2018年 damoness. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject



@property (nonatomic,copy,readonly)NSString *firstName;
@property (nonatomic,copy,readonly)NSString *lastName;
@property (nonatomic,strong,readonly) NSArray *friends;



- (instancetype)initWithFirstName:(NSString *)firstName
                         lastName:(NSString *)lastName;

@end





@interface Person (EOC_Friendship) //关系分类

/*friendship method */

-(void)addFriend:(Person *)person;

-(void)removeFriend:(Person *)person;

-(BOOL)isFriendsWith:(Person *)person;


@end


@interface Person (EOC_Work) //工作分类

/*work method */
-(void)performDaysWork;
-(void)takeVacationFromWork;


@end

@interface Person (EOC_Play) //玩分类

/*play method */
-(void)goToTheCinema;
-(void)goToSportsGame;


@end










