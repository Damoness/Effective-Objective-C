//
//  ViewController.h
//  Item38
//
//  Created by Damoness on 2017/12/29.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import <UIKit/UIKit.h>



typedef int (^EOCSomeBlock)(BOOL flag,int value);

typedef void (^completionHandler)(NSData *data,NSError *error);

@interface ViewController : UIViewController

-(void)startWithCompletionHandler:(completionHandler)handler;


@end

