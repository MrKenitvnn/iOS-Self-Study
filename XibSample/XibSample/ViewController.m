//
//  ViewController.m
//  XibSample
//
//  Created by ken on 5/29/16.
//  Copyright © 2016 ken. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onButtonNextViewClick:(id)sender {
    
    SecondViewController *controller=[[SecondViewController alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
}

- (IBAction)onButtonNextFullClicked:(id)sender {
    
    SecondViewController *controller=[[SecondViewController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];
}





@end
