//
//  ViewController.h
//  UI
//
//  Created by ken on 5/28/16.
//  Copyright © 2016 ken. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "View2ViewController.h"
#import "TableViewController.h"

@interface ViewController : UIViewController

{
    int stepValue;
    NSArray *sliderArray;
    View2ViewController *controller;
    
    
    IBOutlet UISegmentedControl *segmentSex;
    IBOutlet UILabel *labelSex;
    IBOutlet UISwitch *mSwitch;
    IBOutlet UISlider *sliderPrice;
    IBOutlet UIImageView *mImageView;
    IBOutlet UITextView *mTextView;
    IBOutlet UIButton *mButtonNight;
    IBOutlet UIButton *mButtonDay;
    IBOutlet UIButton *mButtonNext;
    
    IBOutlet UIButton *mButtonTable;
}

@property View2ViewController *controller;

- (IBAction)onSexChanged:(id)sender;
- (IBAction)onSwitchChanged:(id)sender;
- (IBAction)onSliderPriceChanged:(id)sender;
- (IBAction)onButtonNightClick:(id)sender;
- (IBAction)onButtonDayClick:(id)sender;
- (IBAction)onButtonNextClick:(id)sender;
- (IBAction)onButtonTableViewClick:(id)sender;

@end

