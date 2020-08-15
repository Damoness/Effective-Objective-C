//
//  EOCAnimatedView.m
//  04Item 多用类型常量，少用#define预处理指令
//
//  Created by Damoness on 2020/8/15.
//  Copyright © 2020 damoness. All rights reserved.
//

#import "EOCAnimatedView.h"

static  NSTimeInterval const kAnimationDuration = 0.3;


@implementation EOCAnimatedView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)animate{
        
    [UIView animateWithDuration:kAnimationDuration animations:^{
        
    }];
    
}

@end
