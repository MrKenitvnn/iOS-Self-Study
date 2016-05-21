

Actions and outlets trong iOS là ibActions và ibOutlets, ```ib``` ở đây là interface builder.


<b>Bước 1</b> - Let's use our First iPhone Application.


<b>Bước 2</b> - Mở file ViewController.xib.


<b>Bước 3</b> - Bây giờ, bạn có thể chọn các phần tử UI từ cửa sổ bên phải.
<p align="center">
  <img src="http://www.tutorialspoint.com/ios/images/objectlibrary.jpg" />
</p>

<b>Bước 4</b> - Bạn có thể kéo và thả phần tử UI vào màn hình xây dựng giao diện.

<b>Bước 5</b> - Chúng ta thêm 1 Label và 1 Round Rect Button vào view.
<p align="center">
  <img src="http://www.tutorialspoint.com/ios/images/interfaceaction.jpg" />
</p>

<b>Bước 6</b> - Từ Editor Selector button ở góc trên bên phải toolbar
<p align="center">
  <img src="http://www.tutorialspoint.com/ios/images/standardeditor.jpg" />
</p>

Nhấp vào nút Assistant editor
<p align="center">
  <img src="http://www.tutorialspoint.com/ios/images/assistanteditor.jpg" />
</p>

<b>Bước 7</b> - Chúng ta sẽ nhìn thấy 2 cửa sổ là ViewController.xib và ViewController.h

<b>Bước 8</b> - Bây giờ, click chuột phải vào label và chọn, giữ và kéo new referencing outlet như hình
<p align="center">
  <img src="http://www.tutorialspoint.com/ios/images/iboutletdrag.jpg" />
</p>


<b>Bước 9</b> - Thả vào phần trong cặp ngoặc nhọn của ViewController.h. Trong trường hợp không có cặp ngoặc nhọn, thêm nó vào trước khi kéo thả. Bạn sẽ thấy một pop-up như sau:
<p align="center">
  <img src="http://www.tutorialspoint.com/ios/images/iboutletdrop.jpg" />
</p>


<b>Bước 10</b> - đặt tên label cho outlet, ở đây chúng ta đã đạt là myTitleLabel. Nhấp Connect để hoàn thành ibOutlet.


<b>Bước 11</b> - Tương tự, để thêm 1 action, click chuột phải vào Round rect button, chọn touch up inside và kéo nó vào file ViewController.m


<b>Bước 12</b> - Thả nó và đặt tên

<p align="center">
  <img src="http://www.tutorialspoint.com/ios/images/actiondrop.jpg" />
</p>


<b>Bước 13</b> - Mở file ViewController.m lên, bạn tìm thấy phương thức:
```Objective-C
- (IBAction) setTitleLabel : (id) sender {
}
```

<b>Bước 14</b> - Thêm đoạn code sau vào
```Objective-C
[myTitleLabel setText : @"Hello iOS"];
```

<b>Bước 15</b> - Chạy chương trình
<p align="center">
  <img src="http://www.tutorialspoint.com/ios/images/ibactiontutorial.simulator_start.jpg" />
</p>

<b>Bước 16</b> - Nhấp vào button
<p align="center">
  <img src="http://www.tutorialspoint.com/ios/images/ibactiontutorial.simulator_end.jpg" />
</p>








