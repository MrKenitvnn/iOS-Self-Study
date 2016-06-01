//
//  MobileSdk.h
//  BlockCallbackSample
//
//  Created by myG on 01/06/2016.
//  Copyright © 2016 myG. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^OnComplete) (NSString *message, NSString *data);
typedef void (^OnError) (NSString *message);

@interface MobileSdk : NSObject

@property (nonatomic, strong) OnComplete CallOnComplete;
@property (nonatomic, strong) OnError CallOnError;


+ (id) shareInstance;

- (void) doLoginWithController:(id) controller
                 AndOnComplete:(OnComplete)onComplete
                    AndOnError:(OnError)onError;

@end
