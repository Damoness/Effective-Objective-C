//
//  EOCPerson.h
//  Item02 在类的头文件中尽量少引入其它头文件
//
//  Created by Damoness on 2020/8/15.
//  Copyright © 2020 damoness. All rights reserved.
//

#import <Foundation/Foundation.h>
@class EOCEmployer; //使用向前引用，因为在编译头文件时，不需要EOCEmployer的实现细节。这样能够减少需要引入头文件的数量。减少编译时间

NS_ASSUME_NONNULL_BEGIN

@interface EOCPerson : NSObject
@property (nonatomic,copy)NSString *firstName;
@property (nonatomic,copy)NSString *lastName;
@property (nonatomic,strong)EOCEmployer *employer;

-(void)eat;
@end

NS_ASSUME_NONNULL_END
