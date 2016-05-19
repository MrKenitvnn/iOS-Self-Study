###Property
Cho phép định nghĩa các bộ truy xuất (getter/setter)

- Định nghĩa trong file .h
```
@property (<attributes>) type propertyName;
```

- Thực thi trong file .m
```
@synthesize propertyName;
```

Các thuộc tính (attributes)
- readwrite (default): đọc và ghi (get/set)
- read-only: chỉ có thể đọc (get)
- assign(default): thường dùng  với các kiểu vô hướng như NSInteger, CGFloat, CGrect,...
- retain: thường được sử dụng cho đối tượng
- copy: tạo một bản sao của đối tượng sẽ được sử dụng cho đối tượng chỉ định
- atomic(default): thực hiện đồng bộ hóa (gọi synchronized).
- nonatomic: ngược với atomic (không thực hiện synchronized).


```Objective-C
-atomic

// @property (retain) UITextField *username;
// Generates roughly
- (UITextField *) username {
    UITextField *retval = nil;
    @synchronized (self) {
        retval = [[username retain] autorelease];
    }
    return retval;
}

- (void) setUsername :(UITextField *) _username {
    @synchronized (self) {
        [_username retain];
        [_username release];
        username = _username;
    }
}
```


```Objective-C
- nonatomic

// @property (retain, nonatomic) UITextField *username;
// Generates roughly

- (UITextField *) username {
    return username;
}

- (void) setUsername : (UITextField *) _username {
    [_username retain];
    [username release];
    username = _username;
}
```

