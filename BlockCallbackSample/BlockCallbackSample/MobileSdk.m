//
//  MobileSdk.m
//  BlockCallbackSample
//
//  Created by myG on 01/06/2016.
//  Copyright © 2016 myG. All rights reserved.
//

#import "MobileSdk.h"

@implementation MobileSdk

@synthesize CallOnComplete;
@synthesize CallOnError;

+ (id) shareInstance {
    static MobileSdk *mInstance = nil;
    @synchronized (self) {
        if (!mInstance)
            mInstance = [[self alloc] init];
    }
    return mInstance;
}

- (void) doLoginWithController:(id)controller AndOnComplete:(OnComplete)onComplete AndOnError:(OnError)onError {
    
    self.CallOnError = onError;
    self.CallOnError(@"on error");
    
    onComplete(@"on success", @"there are data");
}

@end
