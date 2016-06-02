//
//  LoginModel.h
//  MVPPatternSample
//
//  Created by myG on 02/06/2016.
//  Copyright © 2016 myG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ILoginModel.h"

@protocol OnLoginListener;

@interface LoginModel : NSObject <ILoginModel>

@property (nonatomic, strong) id <OnLoginListener> listener;

@end
