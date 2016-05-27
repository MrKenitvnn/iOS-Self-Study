//
//  ViewController.m
//  Delegate
//
//  Created by myG on 27/05/2016.
//  Copyright © 2016 myG. All rights reserved.
//

#import "ViewController.h"
#import "SampleProtocol.h"


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SampleProtocol *sampleProtocol = [[SampleProtocol alloc] init];
    sampleProtocol.delete = self;
    [myLabel setText:@"Processing..."];
    [sampleProtocol startSampleProcess];
}


- (void) processCompleted {
    [myLabel setText:@"Completed"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
