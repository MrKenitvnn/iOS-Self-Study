//
//  ViewController.m
//  NetworkingSample
//
//  Created by myG on 01/06/2016.
//  Copyright © 2016 myG. All rights reserved.
//

#import "ViewController.h"
#import "UrlHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [UrlHelper setX:@"day la xxx"];
    NSLog(@"%@", xxx);
    
    NSLog(@"%@", MyThingNotificationKey );
    
    
    NetworkHandler *networkInstance = [NetworkHandler shareInstance];
    [networkInstance doRequest:@"GET" url:@"https://itunes.apple.com/search?term=apple&media=software" body:nil onComplete:onCompleteSampleGet error:nil];
}


void (^onCompleteSampleGet)(NSData *data, NSURLResponse *response, NSError *error) = ^(NSData *data, NSURLResponse *response, NSError *error) {
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    NSLog(@"%@\non complete with block", dict);
};



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






@end
