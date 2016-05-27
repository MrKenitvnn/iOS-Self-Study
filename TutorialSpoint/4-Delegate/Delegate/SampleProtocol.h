//
//  SampleProtocol.h
//  Delegate
//
//  Created by myG on 27/05/2016.
//  Copyright © 2016 myG. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SampleProtocol <NSObject>

- (void) processCompleted;

@end


@interface SampleProtocol : NSObject

{
    id <SampleProtocol> _delegate;
}

@property (nonatomic, strong) id delete;

- (void) startSampleProcess;

@end