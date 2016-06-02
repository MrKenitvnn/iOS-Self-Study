//
//  LoginModel.m
//  MVPPatternSample
//
//  Created by myG on 02/06/2016.
//  Copyright © 2016 myG. All rights reserved.
//

#import "LoginModel.h"

@implementation LoginModel

@synthesize listener = _listener;

- (void) loginWithUserName:(NSString *)username
               AndPassword:(NSString *)password
               AndListener:(id<OnLoginListener>)onLoginListener {
    NSLog(@"LoginModel : loginWithUserName");
    _listener = onLoginListener;
    [_listener onLoginSuccess:@"đăng nhập thành công rồi cưng ơi.."];
}

@end
