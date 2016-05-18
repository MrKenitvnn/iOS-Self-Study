
###Protocol
giống với Interface của Java. Protocol khai báo các method nhưng không thực hiện, các method này sẽ được thực hiện trong một class khác.



Vị trí định nghĩa protocol: 

- Định nghĩa protocol ở đầu file header.

- Nếu protocol này được sử dụng ở nhiều class khác nhau, nên định nghĩa protocol này trong một file riêng.
###### Chú ý: khi định nghĩa protocol ở đầu file header ta nên sử dụng ```@class current_class_name``` trước @protocol.

```Objective-C
//Khai báo protocol LuatDuongBo.h

@protocol LuatDuongBo <NSObject>

@required // các method này bắt buộc phải thực hiện
- (void) tinHieuDung : (int) thoi_gian;
- (void) tinHieuReTrai;

@optional // các method dưới này thì tùy ý.
- (void) tinHieuDiTiep;

@end
```

Một class thực hiện một protocol:
```Objective-C
//file XeDap.h

#import "LuatDuongBo.h"
@interface XeDap : NSObject <LuatDuongBo>

@end
```

```Objective-C
//file XeDap.m

#import "XeDap.h"

@implementation XeDap

- (void) tinHieuDung : (int) thoi_gian {
    NSLog(@"tin hieu dung, time = %d", thoi_gian);
}

- (void) tinHieuReTrai {
    NSLog(@"tin hieu re trai");
}
@end
```

Có thể kiểm tra một lớp có sử dụng protocol hay không, bằng phương thức conformsToProtocol
```Objective-C
id xeDap = [[XeDap alloc] init];

if ([xeDap conformsToProtocol : @protocol(LuatDuongBo)]) {
    [xeDap tinHieuReTrai];
}
```


###Delegate
Dùng để thực hiện callback. Delegate tuân theo một Protocol sẽ thực hiện các method được khai báo trong Protocol đó.


```Objective-C
//Khai báo delegate, có kiểu id và tuân theo LuatDuongBo
@property (nonatomic, assign) id <LuatDuongBo> delegate;
```










