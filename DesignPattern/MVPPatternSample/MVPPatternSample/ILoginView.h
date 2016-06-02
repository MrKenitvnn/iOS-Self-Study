//
//  ILoginView.h
//  MVPPatternSample
//
//  Created by myG on 02/06/2016.
//  Copyright © 2016 myG. All rights reserved.
//

@protocol ILoginView <NSObject>

- (void) onLoginSuccess : (NSString *) data ;

- (void) onLoginFailure : (NSString *) message;


@end
