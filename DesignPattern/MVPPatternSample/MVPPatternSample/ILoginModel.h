//
//  ILoginModel.h
//  MVPPatternSample
//
//  Created by myG on 02/06/2016.
//  Copyright © 2016 myG. All rights reserved.
//
#import "OnLoginListener.h"

@protocol ILoginModel <NSObject>

- (void) loginWithUserName:(NSString *)username
               AndPassword:(NSString *) password
               AndListener:(id<OnLoginListener>)onLoginListener;



@end