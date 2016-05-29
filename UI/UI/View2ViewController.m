//
//  View2ViewController.m
//  UI
//
//  Created by ken on 5/29/16.
//  Copyright © 2016 ken. All rights reserved.
//

#import "View2ViewController.h"

@interface View2ViewController ()

@end

@implementation View2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSString *strHtml = @"<html><head></head><body> <div style=\"background:#e0e0e0; width:100%; height:100%;\"><p style=\"font-size:40pt;color:#FF0000; width:100%; text-align:center; \">Đây là webview từ code Html. okE</p></div></body></html>";
    
    [mWebView loadHTMLString:strHtml baseURL:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onButtonBackClicked:(id)sender {
    if (self.navigationController) {
        [self.navigationController popViewControllerAnimated:YES];
    } else {
        [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    }
}

- (IBAction)onButtonGoClicked:(id)sender {
    NSString *strAddress = [mTextFieldAddress text];
    NSURL *address;
    if ([strAddress rangeOfString:@"https://"].location != NSNotFound
        || [strAddress rangeOfString:@"https://"].location != NSNotFound) {
        address = [NSURL URLWithString:strAddress];
    } else {
        address = [NSURL URLWithString:[NSString stringWithFormat:@"https://%@", strAddress ]];
    }
    
    
    NSURLRequest *request = [NSURLRequest requestWithURL:address];
    [mWebView loadRequest:request];
}


@end
