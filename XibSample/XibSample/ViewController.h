//
//  ViewController.h
//  XibSample
//
//  Created by ken on 5/29/16.
//  Copyright © 2016 ken. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{

    IBOutlet UIButton *mButtonNextView;
    
    IBOutlet UIButton *mButtonNextFull;
    
}
- (IBAction)onButtonNextViewClick:(id)sender;
- (IBAction)onButtonNextFullClicked:(id)sender;

@end

