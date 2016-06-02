//
//  UrlHelper.m
//  NetworkingSample
//
//  Created by myG on 02/06/2016.
//  Copyright © 2016 myG. All rights reserved.
//

#import "UrlHelper.h"

@implementation UrlHelper


NSString *const MyThingNotificationKey = @"MyThingNotificationKey";
NSString *xxx = @"MyThingNotificationKey";

+ (id) shareInstance {
    static UrlHelper *mInstance = nil;
    @synchronized (self) {
        if (!mInstance)
            mInstance = [[self alloc] init];
    }
    return mInstance;
}

+ (void) setX:(NSString *)x {
    xxx = x;
}



@end
