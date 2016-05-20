

```Objective-C
// DataManager.h
@interface DataManager : NSObject

@property (nonatomic, strong) NSString *someProperty;
+ (id) getInstance;

@end
```

```Objective-C
// DataManager.m
@implementation Datamanger

#pragma mark Singleton method
// không gọi trực tiếp hàm này
- (id) init {
    if (self = [super init]) {
        _someProperty = @"Demo Singleton";
    }
    return self;
}

// sử dụng dispatch_once
+ (id) getInstance {
    static DataManager *shareDataManager = nil;
    static dispatch_once_t dispatchOnce;
    dispath_once ( &dispatchOnce, ^{
        shareDataManager = [self new];
    });
    return shareDataManager;
}

// hoặc sử dụng @synchronized
+ (id) getInstance {
    static DataManager mInstance = nil;
    @synchronized (self) {
        if (!mInstance)
            mInstance = [[self alloc] init];
    }
    return mInstance;
}

@end
```

###### Hàm dispatch_once là một hàm trong thư viện GCD (Grand Central Dispatch, chịu trách nhiệm điều phối hoạt động các thread đa nhiệm). Hàm này sẽ chỉ chạy đoạn mã block một lần duy nhất trong cả vòng đời của ứng dụng. <a href="https://developer.apple.com/library/mac/#documentation/Performance/Reference/GCD_libdispatch_Ref/Reference/reference.html">Xem thêm</a>




Sử dụng: không được gọi [[DataManager alloc] init] mà sử dụng ```[DataManager getInstance]```

```Objective-C
DataManager *dataManagerA = [DataManager getInstance];
NSLog(@"%p", dataManagerA);

// dataManagerB sẽ trỏ vào cùng địa chỉ với dataManagerA
DataManager *dataManagerB = [DataManager getInstance];
NSLog(@"%p", dataManagerB);
```



