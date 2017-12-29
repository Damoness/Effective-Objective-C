//
//  EOCNetworkFetcher.h
//  Item39
//
//  Created by Damoness on 2017/12/29.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import <Foundation/Foundation.h>



//传统的代理方式

@class EOCNetworkFetcher;

@protocol EOCNetworkFetcherDelegate<NSObject>

-(void)networkFetcher:(EOCNetworkFetcher *)fetcher didFinshWithData:(NSData *)data;

@end



typedef void (^EOCNetworkFetcherCompletionHandler) (NSData *data,NSError *error);

@interface EOCNetworkFetcher : NSObject

-(id)initWithURL:(NSURL *)url;

-(void)start;
@property (nonatomic,weak)id<EOCNetworkFetcherDelegate>delegate;



-(void)startWithCompletionHandler:(EOCNetworkFetcherCompletionHandler)handler;

@end
