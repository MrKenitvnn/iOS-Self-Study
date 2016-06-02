//
//  LoginPresenter.m
//  MVPPatternSample
//
//  Created by myG on 02/06/2016.
//  Copyright © 2016 myG. All rights reserved.
//

#import "LoginPresenter.h"
#import "ILoginModel.h"
#import "LoginModel.h"
#import "ILoginView.h"

@implementation LoginPresenter
{
    @private
    id <ILoginModel> _model;
}

@synthesize model = _model;
@synthesize view = _view;


- (LoginPresenter *) initWithView:(id<ILoginView>)loginView {
    if (self = [super init]) {
        _model = [[LoginModel alloc] init];
        _view = loginView;
    }
    return self;
}

- (void) requestLoginWithUsername:(NSString *)username
                      AndPassword:(NSString *)password {
    NSLog(@"LoginPresenter : requestLoginWithUsername");
    [_model loginWithUserName:username AndPassword:password AndListener:self];
}


/**
 * onListener implement
 */

- (void) onLoginSuccess:(NSString *)data {
    NSLog(@"LoginPresenter : onLoginSuccess");
    [_view onLoginSuccess:data];
}


- (void) onLoginFailure:(NSString *)message {
    NSLog(@"LoginPresenter : onLoginFailure");
    [_view onLoginFailure:message];
}


@end