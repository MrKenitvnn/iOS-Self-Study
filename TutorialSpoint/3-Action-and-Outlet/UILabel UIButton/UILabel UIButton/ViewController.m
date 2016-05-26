//
//  ViewController.m
//  UILabel UIButton
//
//  Created by myG on 26/05/2016.
//  Copyright © 2016 myG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [label preferredMaxLayoutWidth];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnSetTextLabel:(id)sender {
    [label setText:@"Hello iOS"];
    //label.text = @"hello ios";
}
@end
