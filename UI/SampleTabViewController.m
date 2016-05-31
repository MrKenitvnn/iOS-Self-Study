//
//  SampleTabViewController.m
//  UI
//
//  Created by myG on 31/05/2016.
//  Copyright © 2016 ken. All rights reserved.
//

#import "SampleTabViewController.h"

@interface SampleTabViewController ()

@end

@implementation SampleTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


- (IBAction)onButtonBackClick:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}
@end
