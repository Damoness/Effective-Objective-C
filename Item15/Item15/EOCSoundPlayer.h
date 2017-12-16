//
//  EOCSoundPlayer.h
//  Item15
//
//  Created by Damoness on 2017/12/16.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EOCSoundPlayer;
@protocol EOCSoundPlayerDelegate<NSObject>

-(void)soundPlayerDidFinish:(EOCSoundPlayer *)player;


@end

@interface EOCSoundPlayer : NSObject


-(instancetype)initWithURL:(NSURL *)url;

-(void)playSound;

@property (nonatomic,weak) id <EOCSoundPlayerDelegate> delegate;

@end
