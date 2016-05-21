

Actions and outlets trong iOS là ibActions và ibOutlets, ```ib``` ở đây là interface builder.

Bước 1 - Let's use our First iPhone Application.
Bước 2 - Mở file ViewController.xib.
Bước 3 - Bây giờ, bạn có thể chọn các phần tử UI từ cửa sổ bên phải.
<p align="center">
  <img src="http://www.tutorialspoint.com/ios/images/objectlibrary.jpg" />
</p>

Bước 4 - Bạn có thể kéo và thả phần tử UI vào màn hình xây dựng giao diện.

Bước 5 - Chúng ta thêm 1 Label và 1 Round Rect Button vào view.
<p align="center">
  <img src="http://www.tutorialspoint.com/ios/images/interfaceaction.jpg" />
</p>

Bước 6 - Từ Editor Selector button ở góc trên bên phải toolbar
<p align="center">
  <img src="http://www.tutorialspoint.com/ios/images/standardeditor.jpg" />
</p>

Nhấp vào nút Assistant editor
<p align="center">
  <img src="http://www.tutorialspoint.com/ios/images/assistanteditor.jpg" />
</p>

Bước 7 - Chúng ta sẽ nhìn thấy 2 cửa sổ là ViewController.xib và ViewController.h

Bước 8 - Bây giờ, click chuột phải vào label và chọn, giữ và kéo new referencing outlet như hình
<p align="center">
  <img src="http://www.tutorialspoint.com/ios/images/iboutletdrag.jpg" />
</p>


Bước 9 - Thả vào phần trong cặp ngoặc nhọn của ViewController.h. Trong trường hợp không có cặp ngoặc nhọn, thêm nó vào trước khi kéo thả. Bạn sẽ thấy một pop-up như sau:
<p align="center">
  <img src="http://www.tutorialspoint.com/ios/images/iboutletdrop.jpg" />
</p>


Bước 10 - đặt tên label cho outlet, ở đây chúng ta đã đạt là myTitleLabel. Nhấp Connect để hoàn thành ibOutlet.


Bước 11 - Tương tự, để thêm 1 action, click chuột phải vào Round rect button, chọn touch up inside và kéo nó vào file ViewController.m


Bước 12 - Thả nó và đặt tên

<p align="center">
  <img src="http://www.tutorialspoint.com/ios/images/actiondrop.jpg" />
</p>


Bước 13 - Mở file ViewController.m lên, bạn tìm thấy phương thức:
```Objective-C
- (IBAction) setTitleLabel : (id) sender {
}
```

Bước 14 - Thêm đoạn code sau vào
```Objective-C
[myTitleLabel setText : @"Hello iOS"];
```

Bước 15 - Chạy chương trình
<p align="center">
  <img src="http://www.tutorialspoint.com/ios/images/ibactiontutorial.simulator_start.jpg" />
</p>

Bước 16 - Nhấp vào button
<p align="center">
  <img src="http://www.tutorialspoint.com/ios/images/ibactiontutorial.simulator_end.jpg" />
</p>








