//
//  SampleProtocol.m
//  Delegate
//
//  Created by myG on 27/05/2016.
//  Copyright © 2016 myG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SampleProtocol.h"

@implementation SampleProtocol

#pragma chỗ này gọi
- (void) startSampleProcess {
    [NSTimer scheduledTimerWithTimeInterval:3.0 target:self.delete selector:@selector(processCompleted) userInfo:nil repeats:NO];

}



@end
