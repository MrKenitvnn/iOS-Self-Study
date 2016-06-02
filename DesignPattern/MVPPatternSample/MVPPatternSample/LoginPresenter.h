//
//  LoginPresenter.h
//  MVPPatternSample
//
//  Created by myG on 02/06/2016.
//  Copyright © 2016 myG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OnLoginListener.h"

@protocol ILoginModel;
@protocol ILoginView;

@interface LoginPresenter : NSObject <OnLoginListener>

@property (nonatomic, strong) id <ILoginModel> model;
@property (nonatomic, strong) id <ILoginView> view;


- (LoginPresenter *) initWithView : (id<ILoginView>)loginView;

- (void) requestLoginWithUsername : (NSString *)username
                      AndPassword : (NSString *)password;

@end
