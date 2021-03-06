//
//  EOCEmployer.h
//  Item02 在类的头文件中尽量少引入其它头文件
//
//  Created by Damoness on 2020/8/15.
//  Copyright © 2020 damoness. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EOCPerson;


NS_ASSUME_NONNULL_BEGIN

@interface EOCEmployer : NSObject
-(void)addEmployee:(EOCPerson *)person;
-(void)removeEmployee:(EOCPerson *)person;
@end

NS_ASSUME_NONNULL_END
