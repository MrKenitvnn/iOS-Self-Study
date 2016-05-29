//
//  View2ViewController.h
//  UI
//
//  Created by ken on 5/29/16.
//  Copyright © 2016 ken. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface View2ViewController : UIViewController

{
    IBOutlet UIButton *mButtonBack;
    IBOutlet UIButton *mButtonGo;
    IBOutlet UITextField *mTextFieldAddress;
    IBOutlet UIWebView *mWebView;
}

- (IBAction)onButtonBackClicked:(id)sender;
- (IBAction)onButtonGoClicked:(id)sender;

@end
