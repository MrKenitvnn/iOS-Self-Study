//
//  UrlHelper.h
//  NetworkingSample
//
//  Created by myG on 02/06/2016.
//  Copyright © 2016 myG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UrlHelper : NSObject

// extern thì là biến public, chỉ cần import header vào là có thể sử dụng trực tiếp tên biến.
extern NSString *const MyThingNotificationKey;
extern NSString *xxx;

+ (id) shareInstance;

+ (void) setX : (NSString *) x ;

@end
