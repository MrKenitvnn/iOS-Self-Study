//
//  SampleTabbarViewController.m
//  UI
//
//  Created by myG on 31/05/2016.
//  Copyright © 2016 ken. All rights reserved.
//

#import "SampleTabbarViewController.h"

@interface SampleTabbarViewController ()

@end

@implementation SampleTabbarViewController


@synthesize mTabbar ;
@synthesize mTabView1;
@synthesize mTabView2;


- (void)viewDidLoad {
    [super viewDidLoad];
    mTabbar.delegate = self;
    
    #pragma xoá đi một tab item theo cấu hình trên server.
//    NSMutableArray *listNewTabs = [NSMutableArray arrayWithArray:mTabbar.items];
//    [listNewTabs removeObjectAtIndex:1];
//    mTabbar.items = listNewTabs;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (IBAction)onButtonBackClick:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

#pragma phương thức này để bắt sự kiện click vào tabbar item
- (void) tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    NSLog(@"selected item tag = %ld", (long)item.tag);
    
//    UIView *view;
//    CGRect frm = self.view.frame;
//    frm.size.width = self.view.frame.size.width;
    
    switch (item.tag) {
        case 0:
            if (mTabView1 == nil) {
                self.mTabView1 = [[SampleTabbar1ViewController alloc]
                                  initWithNibName:@"SampleTabbar1ViewController" bundle:nil];
            }
            self.mTabView1.view.frame = self.view.frame;
            [self.view insertSubview:mTabView1.view belowSubview:mButtonBackClick];
            break;
            
        case 1:
            if (mTabView1 == nil) {
                self.mTabView1 = [[SampleTabbar1ViewController alloc]
                                  initWithNibName:@"SampleTabbar1ViewController" bundle:nil];
            }
            self.mTabView1.view.frame = self.view.frame;
            [self.view insertSubview:mTabView1.view belowSubview:mTabbar];
            break;
            
        case 2:
            if (mTabView2 == nil) {
                self.mTabView2 = [[SamplerTabber2ViewController alloc]
                                  initWithNibName:@"SamplerTabber2ViewController" bundle:nil];
            }
            self.mTabView2.view.frame = self.view.frame;
            [self.view insertSubview:mTabView2.view belowSubview:mButtonBackClick];
            break;
            
            
    }
    
}


@end
