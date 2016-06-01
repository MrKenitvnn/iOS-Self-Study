//
//  ViewController.m
//  BlockCallbackSample
//
//  Created by myG on 01/06/2016.
//  Copyright © 2016 myG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)onButtonLoginClick:(id)sender {

    MobileSdk *mobileSdk = [MobileSdk shareInstance];
    NSLog(@"address: %@", mobileSdk);
    
    [mobileSdk doLoginWithController:self AndOnComplete:^(NSString *message, NSString *data){
        NSLog(@"callback data: %@", data);
    }
    AndOnError:^(NSString *message){
        NSLog(@"callback gui ve: %@", message);
    }];
    
}

@end
