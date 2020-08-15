//
//  ViewController.m
//  Item05 用枚举表示状态、选项、状态码
//
//  Created by Damoness on 2020/8/15.
//  Copyright © 2020 damoness. All rights reserved.
//

#import "ViewController.h"


enum EOCConnectionState{
    EOCConnectionStateDisconnected = 1,
    EOCConnectionStateConnecting = 2,
    EOCConnectionStateConnected = 3,
};

typedef enum EOCConnectionState EOCConnectionState;


typedef NS_ENUM(NSUInteger,EOCConnectionState1){
    EOCConnectionStateDisconnected1 = 1,
    EOCConnectionStateConnecting1 = 2,
    EOCConnectionStateConnected1 = 3,
};

typedef NS_OPTIONS(NSUInteger, EOCPermittedDirection){
    EOCPermittedDirectionUp = 1 << 0,
    EOCPermittedDirectionDown = 1 << 1,
    EOCPermittedDirectionLeft = 1 << 2,
    EOCPermittedDirectionRight = 1 << 3,
};


EOCConnectionState state  = EOCConnectionStateConnected;
EOCConnectionState1 state1  = EOCConnectionStateConnected1;

EOCPermittedDirection direction = EOCPermittedDirectionUp;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
