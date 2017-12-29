//
//  ViewController.m
//  Item39
//
//  Created by Damoness on 2017/12/29.
//  Copyright © 2017年 damoness. All rights reserved.
//

#import "ViewController.h"
#import "EOCNetworkFetcher.h"
@interface ViewController ()<EOCNetworkFetcherDelegate>

@property (nonatomic,strong) EOCNetworkFetcher *fetcher;

@property (nonatomic,strong) NSData *fetchedFooData;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}



-(void)fetchFooData{

    self.fetcher = [[EOCNetworkFetcher alloc]initWithURL:[NSURL URLWithString:@"http://damoness.cn"]];
    
    //使用代理
    self.fetcher.delegate = self;
    [self.fetcher start];
    

    
    //使用block
    
    [self.fetcher startWithCompletionHandler:^(NSData *data, NSError *error) {
       
        _fetchedFooData = data;
        
    }];
    
}


//
-(void)fetchBarData{
    
    EOCNetworkFetcher *fetcher = [[EOCNetworkFetcher alloc]initWithURL:[NSURL URLWithString:@""]];
    
    fetcher.delegate = self;
    
    [fetcher startWithCompletionHandler:^(NSData *data, NSError *error) {
       
        
    }];
    

    
}


-(void)networkFetcher:(EOCNetworkFetcher *)fetcher didFinshWithData:(NSData *)data{
    
    
    //获取到数据;
    _fetchedFooData = data;
    
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
