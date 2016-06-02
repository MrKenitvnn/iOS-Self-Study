//
//  NetworkHandler.m
//  NetworkingSample
//
//  Created by myG on 02/06/2016.
//  Copyright © 2016 myG. All rights reserved.
//

#import "NetworkHandler.h"

const float REQUEST_TIMEOUT = 5.0;

@implementation NetworkHandler

+ (id) shareInstance {
    static NetworkHandler *mInstance = nil;
    @synchronized (self) {
        if (!mInstance)
            mInstance = [[self alloc] init];
    }
    return mInstance;
}

- (void) doRequest: (NSString *)HTTP_REQUEST
               url: (NSString *)url
              body: (NSDictionary *)body
        onComplete: (OnComplete)onComplete
             error: (NSError *)error {

    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *defaultSession = [NSURLSession sessionWithConfiguration: configuration
                                                                 delegate: nil
                                                            delegateQueue: [NSOperationQueue mainQueue]];
    
    NSURL *nsUrl = [NSURL URLWithString:url];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:nsUrl
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:REQUEST_TIMEOUT];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setHTTPMethod:HTTP_REQUEST];
    if (nil != body) {
        NSData *postData = [NSJSONSerialization dataWithJSONObject:body options:0 error:&error];
        [request setHTTPBody:postData];
    }
    
    NSURLSessionDataTask *postDataTask = [defaultSession
                                          dataTaskWithRequest:request completionHandler:onComplete];
    
    [postDataTask resume];
}

@end