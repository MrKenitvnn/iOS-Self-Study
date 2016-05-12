Ngôn ngữ Objective C được sử dụng để phát triển ứng dụng iOS. Nó là một ngôn ngữ lập trình hướng đối tượng, nó có thể rất dễ năm bắt với ai đã có nền tảng về Lập trình hướng đối tượng.

<br/>
###Interface and Implementation

Trong Objective C, file khai báo một lớp gọi là interface file và file mà định nghĩa một lớp gọi là implementation file.
Ví dụ về interface file ```MyClass.h``` trông như sau:
```php
@interface MyClass:NSObject {
    // class variable declared here
}
// class properties declared here
// class methods and instance methods declared here
@end
```

File implementation ```MyClass.vn``` sẽ như sau:
```Objective-C
@implementation MyClass
	// class methods defined here
@end
```
#### Khởi tạo đối tượng
```Objective-C
MyClass *objectName = [[MyClass alloc]init];
```

<br/>
### Phương thức
Phương thức được khai báo trong Objective C như sau:
```Objective-C
-(returnType)methodName : (typeName) variable1 : (typeName) variable2;
```
Ví dụ:
```Objective-C
-(void)calculateAreaForRectangleWithLength : (GCfloat) lengthAndBreadth : (GCfloat) breadth;
```
Bạn cũng có thể sửa lại kiểu float ở trên sang String.
Để gọi phương thức trên trong cùng một class, chúng ta làm như sau:
```Objective-C
[self calculateAreaForRectangleWithLength:30 andBreadth:20]
```
```self``` được sử dụng như từ khóa ```this```.

<br/>
###Class Methods
Các phương thức cũng có thể truy cập trực tiếp mà không cần khởi tạo đối tượng. Chúng không có bất kỳ variables và đối tượng liên quan với nó.
Một ví dụ:
```Objective-C
+(void)simpleClassMethod;
```
Nó có thể được truy cập bằng cách sử dụng class name:
```Objective-C
[MyClass simpleClassMethod];
```

<br/>
###Instance Methods

Instance methods chỉ có thể được truy cập sau khi khởi tạo một đối tượng cho lớp đó. Bộ nhớ được cấp phát cho các instance variable.

```Objective-C
-(void) simpleInstanceMethod;
```

Nó có thể được truy cập sau khi khởi tạo một đối tượng cho class như sau:
```Objective-C
MyClass *objectName = [[MyClass alloc]init];
[objectname simpleInstanceMethod];
```

<br/>
###Các kiểu dữ liệu quan trọng trong Objective C
- NSString 
- NSfloat
- NSInteger
- BOOL

<br/>
### Hiển thị Logs
NSLog - sử dụng để in log. ví dụ,
```Objective-C
NSLog(@"trước một chuỗi phải có @");
```

<br/>
### Control Structures
Hầu hết control structures cũng tương tự như trong C và C++.

<br/>
### Properties

For an external class to access the class, variable properties are used. For example,
```Objective-C
@property(nonatomic, strong) NSString *myString;
```

<br/>
### Accessing Properties
Bạn cũng có thể dùng dấu ```.``` để truy cập các thuộc tính:
```Objective-C
self.myString = @"chuỗi test";
```
Bạn cũng có thể sử dụng cách sau:
```Objective-C
[self setMyString:@"Test"];
```

<br/>
### Categories
Categories được sử dụng để add các methods vào class có sẵn. Bằng cách này, chúng ta có thể thêm phương thức tới các class mà thậm chí chúng ta không có file implementation.

```Objective-C
@interface MyClass(cútomAdditions)
- (void) sampleCategoryMethod;
@end

@implementation MyClass (categoryAdditions)

- (void) sampleCategoryMethod {
	NSLog(@"Dòng này chỉ là để test category");	
};
```
<br/>
### Arrays
NSMutableArray và NSArray là các class mảng được sử dụng trong objective C. Đúng như tên gọi của nó, NSMutableArray là mảng động, với NSArray, NSSet bạn không thể dynamically add hoặc remove các item.
```Objective-C
NSMutableArray *aMutableArray = [[NSMutableArray alloc]init];
[anArray addObject : @"first object"];

NSArray * aImmutableArray = [[NSArray] initWithObjects : @"first object", nil];
```
<br/>
###Dictionary

NSMutableDictionary và NSDictionary là các lớp dictionary được sử dụng trong objective C. 
```java
NSMutableDictionary *aMutableDictionary = [[NSMutableArray alloc]init];
[aMutableDiction setObject : @"fist object" forKey : @"thisKey"];

NSDictionary *aImmutableDictionary = [
	[NSDictionary alloc] initWithObjects : 
	[NSArray arrayWithObjects : @"value", nil] forKeys : [NSArray arrayWithObjects : @"aKey"]
];
```

