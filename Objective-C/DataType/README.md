
<b>Kiểu dữ liệu nguyên thủy</b>: trong Objective-C, hầu hết các kiểu dữ liệu cơ bản và các từ khóa trong ngôn ngữ lập trình C đều sử dụng được một cách trực tiếp: int, float, char, enum, etc. Các đối tượng trong C++ cũng có thể sử dụng được (string, vector, etc) tuy nhiên phải tạo ra một file trung gian (có phần mở rộng .mm) chứ không dùng trực tiếp được như C.

<b>Kiểu dữ liệu đặc trưng của Objective-C</b>: hầu như các đối tượng được xây dựng sẵn trong Objective-C có prefix là NS (Next Step). Một số kiểu thường dùng:

- ```id```: Là kiểu đối tượng khái quát của Objective C. Nếu một đối tượng có kiểu id, nó có thể nhận được giá trị của bất kỳ kiểu đối tượng nào.

- ```NSObject```: là một trong các root object. Các kiểu đối tượng trong Objective-C thường kế thừa class này.

- ```NSData```: dùng để chứa dữ liệu binary. Nó là một loại wrapper cho các bộ đệm byte. Có thể sử dụng NSData để chứa dữ liệu binary của File, Image, String,... Cũng thường dùng NSData khi thực hiện request tới các web service. Dùng ```NSMutableData``` khi muốn thay đổi dữ liệu chứa trong đối tượng kiểu NSData.

- ```NSString```: để thao tác với chuỗi. Một khi đã được set giá trị, đối tượng NSString không thêm bớt ký tự được. Dùng ```NSMutableString``` để có thể thay đổi, tùy biến chuỗi.

- ```NSArray```: tạo ra một mảng tĩnh. Duyệt mảng có thể for loop hoặc kiểu đặc trưng của Objective-C (fast enumeration). Dùng ```NSMutableArray``` để có thể thay đổi được các phần từ trong mảng.

- ```NSSet```: cũng để chứa một tập các đối tượng, nhưng không được sắp xếp. Không thể dùng index để truy cập trực tiếp đối tượng trong NSSet mà phải duyệt qua toàn bộ tập đối tượng. Có thể convert sang NSArray để sử dụng dễ dàng hơn.

- ```NSDictionary```: là tập của các entry. Mỗi entry gồm một key và một value. Key thường là String, tuy nhiên có thể dùng một số kiểu đối tượng làm key, như NSIndexPath. Dùng ```NSMutableDictionary``` để có thể thêm bớt entry.

- ```NSInteger```: để thao tác với số nguyên có dấu. NSInteger chính là int trong C. Dùng ```NSUInteger``` để thao tác với số nguyên không dấu.

- ```BOOL```: có 2 giá trị là YES và NO. kiểu này tương tự bool (true/false) trong C.

- ```CGFloat```: tương ứng với float trong C, được định nghĩa trong framework CoreGraphics.



###Một số framework phổ biến

<b>UIKit</b>: cung cấp tất c ả các UI control cơ bản(UITextView, UIView, UILabel, etc..). Khi tạo một project là iOS application, framework này được tự động thêm vào. Tất nhiên, sẽ không cần dùng framework này khi tạo dự án kiểu thư viện(library) hoặc command line (với Mac OS).

<b>Foundation</b>: cung cấp các kiểu dữ liệu cơ bản của Objective-C (NSArray, NSError, NSDate, NSObject,..). Tự link khi tạo project, mở file xx-Prefix.pch sẽ thấy: ```#ifdef__OBJC__ #import <UIKit/UIKit.h> #import <Foundation/Foundation.h> #endif```. Do vậy trong bất cứ file source nào, cũng có thể sử dụng ngay các đối tượng cơ bản mà không phải import khai báo nó. Cũng có thể thêm file header vào đây để sử dụng đối tượng của bạn trong toàn dự án mà không phải import ở nơi dùng đối tượng đó.

<b>Core Graphics (CG)</b>: định nghĩa các đối tượng lớp dưới của framework UIKit. Mặc định framework này cũng được add vào project. Một số struct phổ biến: CGSize, CGFrame, CGPoint.








