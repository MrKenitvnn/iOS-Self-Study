//
//  ViewController.m
//  MVPPatternSample
//
//  Created by myG on 02/06/2016.
//  Copyright © 2016 myG. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginPresenter.h"
#import "ILoginModel.h"

@interface LoginViewController ()

@end


@implementation LoginViewController

{
    LoginPresenter *presenter;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    presenter = [[LoginPresenter alloc] initWithView:self];
    
    [presenter requestLoginWithUsername:@"the username" AndPassword:@"the password"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


- (void) onLoginSuccess:(NSString *)data {
    NSLog(@"%@", data);
}

- (void) onLoginFailure:(NSString *)message {
    NSLog(@"%@", message);
}





@end
