
###Vòng đời ứng dụng iOS

<p align="center">
<img src="https://i1.wp.com/www.mobileprogramming.pro.vn/wp-content/uploads/2014/09/high_level_flow_2x.png" />
</p>

Các phương thức được gọi ở mỗi trạng thái của ứng dụng:

```application:willFinishLaunchingWithOptions```: Method đầu tiên được gọi khi khởi động ứng dụng.

```application:didFinishLaunchingWithOptions```: Cho phép bạn thực hiện bất cứ khởi tạo nào trước khi ứng dụng hiển thị trên màn hình.

```applicationDidBecomeActive```: Được gọi trước khi ứng dụng chuẩn bị trở thành ứng dụng foreground.

```applicationWillResignActive```: Ứng dụng sẽ ra khởi foreground.

```applicationDidEnterBackground```: Ứng dụng sẽ ra khỏi foreground và có thể kết thúc bất cứ lúc nào.

```applicationWillEnterForeground```: Ứng dụng sẽ ra khỏi background và trở lại foreground nhưng vẫn chưa vào trạng thái active.

```applicationWillTerminate```: Được gọi khi ứng dụng bị đóng. Method này sẽ không được gọi khi ứng dụng vào trạng thái suspended.





