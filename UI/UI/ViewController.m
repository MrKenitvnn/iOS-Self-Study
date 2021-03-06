//
//  ViewController.m
//  UI
//
//  Created by ken on 5/28/16.
//  Copyright © 2016 ken. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>

@interface ViewController ()

@end

@implementation ViewController

@synthesize controller;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    labelSex.text = [segmentSex
                     titleForSegmentAtIndex:segmentSex.selectedSegmentIndex];
    
    sliderArray = @[ @(10), @(20), @(50), @(100), @(200), @(500)];
    stepValue = 1;
    sliderPrice.minimumValue = 1;
    sliderPrice.maximumValue = 5;
    
    [mImageView setImage:[UIImage imageNamed:@"ngamy.jpg"]];
    
    
    #pragma JSON sample
    NSDictionary *person = @{@"first_name":@"Ken", @"age":@23};
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:person options:NSJSONWritingPrettyPrinted error:nil];
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    NSLog(@"json: %@", jsonString);
    
    // convert json to nsdictionary
    NSDictionary *jsonObject = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
    [jsonObject valueForKey:@"first_name"];
    
    #pragma file .plist
    NSString *pathPlist = [[NSBundle mainBundle] pathForResource:@"mygconfig" ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:pathPlist];
    
    NSMutableArray *listLanguages = [dict objectForKey:@"languages"];
    NSString *client_id = [dict objectForKey:@"client_id"];
    NSLog(@"client id: %@", client_id);
    for (int i=0; i<[listLanguages count]; i++) {
        NSLog(@"%@", listLanguages[i]);
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma SegmentedControl
- (IBAction)onSexChanged:(id)sender {
    NSLog(@"Đã chọn giới tính thứ: %ld", (long)segmentSex.selectedSegmentIndex);
    labelSex.text = [segmentSex
                     titleForSegmentAtIndex:segmentSex.selectedSegmentIndex];
}


#pragma Switch - giống cái ToggleButton trong Android
- (IBAction)onSwitchChanged:(id)sender {
    if (mSwitch.on) {
        labelSex.text = @"ON";
    } else {
        labelSex.text = @"OFF";
    }
}


#pragma Slider - giống cái Seekbar trong Android
- (IBAction) onSliderPriceChanged: (id)sender {
    float newStep = roundf((sliderPrice.value) / stepValue);
    sliderPrice.value = newStep * stepValue;
    NSLog(@"number: %@", sliderArray[ (int)sliderPrice.value]);

}

- (IBAction) onButtonNightClick: (id)sender {
    mTextView.backgroundColor = [UIColor blackColor];
    mTextView.textColor = [UIColor yellowColor];
}

- (IBAction) onButtonDayClick: (id)sender {
    mTextView.backgroundColor = [UIColor whiteColor];
    mTextView.textColor = [UIColor blackColor];
}

- (IBAction)onButtonNextClick:(id)sender {
    self.controller =[[View2ViewController alloc] init];
   [self presentViewController:controller animated:YES completion:nil];
    
}

- (IBAction)onButtonTableViewClick:(id)sender {
    TableViewController *tbController = [[TableViewController alloc] init];
    [self presentViewController:tbController animated:YES completion:nil];
}

- (IBAction)onButtonTabViewClick:(id)sender {
    SampleTabbarViewController *tvController = [[SampleTabbarViewController alloc] init];
    [self presentViewController:tvController animated:YES completion: nil];
}






@end
