#### Khai báo lớp
- File header (file_name.h): khai báo tên, các thuộc tính và các hàm.

- File thực hiện (implementation, file_name.m): là nơi thực hiện các hàm được khai báo trong file header.


####Khởi tạo object từ class
```Objective-C
Car *carA = [[Car alloc] init];
Car *carB = [Car new];
Car *carC = [[Car alloc] init : @"Audi"]; // init có tham số
Car *carD = [Car initInstance]; //khởi tạo bằng class method
```

#### Method
- Class method: được gọi từ lớp, bắt đầu bằng dấu ```+```.
- Instance method: gọi từ đối tượng của lớp, bắt đầu bằng dấu ```-```.

Gọi hàm của một đối tượng, Objective-C hiểu là gửi một message đến đối tượng đó.

```Objective-C
@interface MyClass : NSObject

+ (void) aClassMethod;
- (void) anInstanceMethod;

@end

-------------------------------------------------------------
// gọi từ tên class
[MyClass aClassMethod];

// gọi từ đối tượng của class
MyClass *object= [[MyClass alloc] init];
[object anInstanceMethod];

```


####self, super
- ```self```: là con trỏ có kiểu của chính đối tượng có hàm bao lấy nó.
- ```super```: là con trỏ trỏ vào đối tượng có hàm bao lấy nó, nhưng lấy kiểu lớp cha của đối tượng này.








