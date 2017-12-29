//
//  EOCNetworkFetcher.m
//  Item39
//
//  Created by Damoness on 2017/12/29.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import "EOCNetworkFetcher.h"

@implementation EOCNetworkFetcher

-(id)initWithURL:(NSURL *)url{
    
    if (self = [super init]) {
        
        
    }
    return self;
    
}
-(void)start{
    
    
    if ([_delegate respondsToSelector:@selector(networkFetcher:didFinshWithData:)]) {
        
        [_delegate networkFetcher:self didFinshWithData:nil];
    }
    
}





-(void)startWithCompletionHandler:(EOCNetworkFetcherCompletionHandler)handler{
    
    //执行网络操作
    
    
    if (handler) {
        handler([NSData new],nil);
    }
    
    
}


@end
