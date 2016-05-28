//
//  ViewController.h
//  UI
//
//  Created by ken on 5/28/16.
//  Copyright © 2016 ken. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    int stepValue;
    NSArray *sliderArray;
    
    IBOutlet UISegmentedControl *segmentSex;
    IBOutlet UILabel *labelSex;
    IBOutlet UISwitch *mSwitch;
    IBOutlet UISlider *sliderPrice;
    IBOutlet UIImageView *mImageView;
    
    
}


- (IBAction)onSexChanged:(id)sender;
- (IBAction)onSwitchChanged:(id)sender;
- (IBAction)onSliderPriceChanged:(id)sender;

@end

