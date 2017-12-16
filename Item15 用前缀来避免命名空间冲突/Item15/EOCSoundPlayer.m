//
//  EOCSoundPlayer.m
//  Item15
//
//  Created by Damoness on 2017/12/16.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import "EOCSoundPlayer.h"
@import AudioToolbox;

@implementation EOCSoundPlayer{
    
    SystemSoundID _systemSoundID;
    
}




-(instancetype)initWithURL:(NSURL *)url{
    
    
    if (self = [super init]) {
     
        AudioServicesCreateSystemSoundID((__bridge CFURLRef _Nonnull)(url), &_systemSoundID);
        
    }
    return self;
    
}



// 最初为completion

void EOCSoundPlayerCompletion(SystemSoundID ssID,void *clientData){
    
    EOCSoundPlayer *soundPlayer = (__bridge EOCSoundPlayer *)clientData;
    
    if (soundPlayer.delegate && [soundPlayer.delegate respondsToSelector:@selector(soundPlayerDidFinish:)]) {
        
        
        [soundPlayer.delegate soundPlayerDidFinish:soundPlayer];
        
        
    }
}

-(void)playSound{
    

    AudioServicesAddSystemSoundCompletion(_systemSoundID, NULL, NULL, EOCSoundPlayerCompletion, (__bridge void * _Nullable)(self));
    
}


-(void)dealloc{
    
    
    AudioServicesDisposeSystemSoundID(_systemSoundID);
    
    
}




@end
