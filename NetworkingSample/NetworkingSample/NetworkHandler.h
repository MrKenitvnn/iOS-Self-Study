//
//  NetworkHandler.h
//  NetworkingSample
//
//  Created by myG on 02/06/2016.
//  Copyright © 2016 myG. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^OnComplete) (NSData *data, NSURLResponse *response, NSError *error);

static NSString *HTTP_POST = @"POST";
static NSString *HTTP_GET  = @"GET";

@interface NetworkHandler : NSObject


@property (nonatomic, retain) NSError *error;
@property (nonatomic, strong) OnComplete CallOnComplete;


+ (id) shareInstance;

- (void) doRequest: (NSString *) HTTP_REQUEST
               url: (NSString *) url
              body: (NSDictionary *) body
        onComplete: (OnComplete) onComplete
             error: (NSError *) error;

@end
