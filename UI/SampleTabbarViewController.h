//
//  SampleTabbarViewController.h
//  UI
//
//  Created by myG on 31/05/2016.
//  Copyright © 2016 ken. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SampleTabbar1ViewController.h"
#import "SamplerTabber2ViewController.h"

@interface SampleTabbarViewController : UIViewController <UITabBarDelegate>

{

    IBOutlet UITabBar *mTabbar;
    IBOutlet UIButton *mButtonBackClick;
    UIViewController *mTabView1;
    UIViewController *mTabView2;
    
    IBOutlet UITabBarItem *mTabItemContact;
    IBOutlet UITabBarItem *mTabItemMostRecent;
    IBOutlet UITabBarItem *mTabItemMore;
}

@property (nonatomic, retain) IBOutlet UITabBar *mTabbar;
@property (nonatomic, retain) UIViewController *mTabView1;
@property (nonatomic, retain) UIViewController *mTabView2;

- (IBAction)onButtonBackClick:(id)sender;


@end
