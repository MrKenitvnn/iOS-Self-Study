###Các nguyên tắc quản lý bộ nhớ

#### Nguyên tắc căn bản

- Phải giải phóng quyền sở hữu đối tượng bằng ```release``` hoặc ```autorelease``` khi nắm quyền sở hữu đối tượng, khởi tạo bằng ```alloc```, ```new```, ```copy``` hoặc gửi một thông điệp ```retain```.
- Không được release đối tượng không phải do mình khởi tạo.


####1. alloc / new
######Cấp phát bộ nhớ cho đối tượng
Reference count : bằng 1

####2. copy
######Cấp phát bộ nhớ cho đối tượng thông qua một đối tượng khác
Reference count : bằng 1

####3. retain
######Gọi khi ta cần sử dụng một đối tượng, mà đối tượng đó đã được cấp phát ở đâu đó, ta không chắc chắn tại thời điểm sử dụng thì đối tượng đó có bị release hay không. Gọi retain giống như ta thông báo cho chủ sở hữu của nó là "Đừng xóa nó cho đến khi tôi sử dụng nó xong nhé". Khi nào sử dụng xong ta cần phải release nó.

- Property nào có thuộc tính retain hoặc copy đều cần phải giải phóng trong dealloc.

Reference count : tăng thêm 1


####4. release
######Báo cho hệ thống biết là ta đã sử dụng xong một đối tượng nào đó và cần giải phóng nó. Đối tượng sẽ thực sự được giải phóng chỉ không còn ai sở hữu nó nữa (reference count = 0).

Reference count : giảm đi 1 ngay lập tức.

- Chỉ được release khi khởi tạo đối tượng một cách thủ công.
- Không ```release``` thủ công một đối tượng ```autorelease``` --> Crash.


####5. autorelease
Sử dụng khi:
- Không muốn giải phóng một đối tượng nào đó ngay lập tức.
- Khi không muốn phải ghi nhớ lúc nào thì nên release những đối tượng mà ta đã cấp phát khi sử dụng xong.
- Đối tượng sẽ được thêm vào autorelease pool.

Reference count: giảm đi 1 nhưng không ngay lập tức.

###Cách quản lý bộ nhớ
#####Sử dụng các phương thức truy xuất làm cho việc quản lý bộ nhớ dễ dàng hơn.

#####Sử dụng các phương thức truy xuất để cài đặt giá trị cho thuộc tính.

#####Không sử dụng các phương thức truy xuất trong phương thức khởi tạo và dealloc.

#####Sử dụng tham chiếu yếu để tránh vòng chiếm giữ.

