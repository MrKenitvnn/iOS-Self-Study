### Tạo ứng dụng đầu tiên
Bây giờ, chúng ta sẽ tạo một ứng dụng đơn giản (blank app) nó sẽ chạy trên máy ảo iOS.
Các bước thực hiện như sau.

#####Bước 1 - Mở Xcode và chọn Create a new Xcode project
<p align="center">
 <img src="http://www.tutorialspoint.com/ios/images/xcodewelcomepage.jpg" />
</p>

#####Bước 2 - Chọn Single View Application
<p align="center">
 <img src="http://www.tutorialspoint.com/ios/images/createproject.jpg" />
</p>

#####Bước 3 - Nhập vào Product Name, Organization Name, Company Identifier.
<p align="center">
 <img src="http://www.tutorialspoint.com/ios/images/newprojectcreateoptions.jpg" />
</p>

#####Bước 4 - Chắc chắn rằng đã chọn User Automatic Reference Counting . nhấn Next.

#####Bước 5 - Chọn thư mục cho project và chọn Create.
<p align="center">
 <img src="http://www.tutorialspoint.com/ios/images/createprojectselectfolder.jpg" />
</p>

#####Bước 6 - Ban sẽ nhìn thấy màn hình hiển thị như sau:
<p align="center">
 <img src="http://www.tutorialspoint.com/ios/images/xcodeprojectpage.jpg" />
</p>

Bạn chọn supported orientations, build and release settings. Trường deployment target, device version chọn 4.3, đó là deployment target tối thiểu được cho phép ở thời điểm hiện tại.

#####Bước 7 - Bây giờ, chọn iPhome simulator trong drop down cạnh nút Run và chọn
<p align="center">
 <img src="http://www.tutorialspoint.com/ios/images/runproject.jpg" />
</p>

#####Bước 8 - Chỉ thế thôi, bạn đã chạy thành công ứng dụng đầu tiên của mình. Bạn sẽ nhìn thấy màn hình như sau
<p align="center">
 <img src="http://www.tutorialspoint.com/ios/images/iphonesimulator.jpg" />
</p>

Bây giờ, thử thay đổi background color, chỉ cần mở interface builder. Chọn ViewController.xib. chọn background option phía bên phải, thay đổi color và chạy.

Trong project trên, mặc định, deployment target nên set là iOS 6.0 và auto-layout là enabled. Để đảm bảo rằng ứng dụng của bạn chạy được trên iOS 4.3 trở lên, chúng ta đã modified the deployment target, nhưng chúng ta không disable auto-layout.

Để disable auto-layout, chúng ta cần bỏ chọn autolayout trong các file xib. Các thành phần khác của Xcode được trình bày trong hình sau
<p align="center">
 <img src="http://www.tutorialspoint.com/ios/images/xcode4workspace.jpg" />
</p>

File inspector is found in the inspector selector bar as shown above and auto layout can be unchecked there. Auto layout can be used when you want to target only iOS 6 devices. Also, you'll be able to use many new features like passbook if you raise the deployment target to iOS 6. For now, let's stick to iOS 4.3 as the deployment target.

###Code of the First iOS Application
Bạn sẽ thấy 5 tập tin khác nhau được generate cho ứng dụng của bạn.
- AppDelegate.h
- AppDelegate.m
- ViewController.h
- ViewController.m
- ViewController.xib

####AppDelegate.h

```Objective-C
// Header File that provides all UI related items.
#import <UIKit/UIKit.h>

// Forward declaration (Used when class will be defined/imported in future)
@class ViewController;

// Interface for Appdelegate
@interface AppDelegate : UIResponder <UIApplicationDelegate>

// Property window
@property (strong, nonatomic) UIWindow *window;

// Property ViewController
@property (strong, nonatomic) ViewController *viewController;

// this marks end of interface
@end
```
<b>Important items in code </b>
- AppDelegate kế thừa từ UIResponder để điều khiển các sự kiện iOS.
- Implements phương thức delegate của UIApplicationDelegate, which provides key application events like finished launching, about to terminate and so on.
- Đối tượng UIWindow để quản lý và phối hợp các view trên màn hình thiết bị iOS. It's like the base view over which all other views are loaded. Generally there is only one window for an application.
- UIViewController to handle the screen flow.

####AppDelegate.m
```Objective-C
// Imports the class Appdelegate's interface
#import "AppDelegate.h"

// Imports the viewcontroller to be loaded
#import "ViewController.h"

// Định nghĩa lớp khởi chạy đầu tiên ở đây
@implementation AppDelegate

// method to intimate us that the application launched successfully
- (BOOL) application : (UIApplication *)applicationDidFinishLaunchingWithOptions : (NSDictionary *) launchOptions {
    self.window = [[UIWindow alloc] initWithFrame : [[UIScreen mainScreen] bounds]];
    
    // Override point for customization after application launch.
    self.viewController = [[ViewController alloc]
    initWithNibName : @"ViewController" bundle:nil];
    self.window.rootViewControoler = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void) applicationWillResignActive:(UIApplication *) application {
   /* Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. If your application supports background excution, this method is called instead of applicationWillTerminater : when the user quits. */
}

- (void) applicationWillEnterForeground:(UIApplication *) application {
   /* Called as part of the transition from the background to the inactive state.Here you can undo many of the changes made on entering the background. */
}

- (void) applicationDidBecomActive:(UIApplication *) application {
   /* Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface. */
}

- (void) applicationWillTerminate:(UIApplication *) application {
   /* Called when the application is about to terminate. Save data if appropiate. See alse applicationDidEnterBackground. */
}

- (void) applicationWillTerminate:(UIApplication *) application {
   /* Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground.*/
}

@end
```

<b>Important items in code</b>
- UIApplication delegate được định nghĩa ở đây. Tất cả các phương thức được định nghĩa ở trên là UI application delegate và không có các phương thức của người tự định nghĩa.
- UIWindow object is allocated to hold the application allocated.
- UIViewController is allocated as the window's initial view controlelr.
- To make the window visible, makeKeyAndVisible method is called.

####ViewController.h
```Objective-C
#import <UIKit/UIKit.h>

//Interface for class ViewController
@interface ViewController : UIViewController

@end
```
<b>Important items in code -</b>
- Lớp ViewController kế thừa từ UIViewController, cung cấp các view cơ bản cho ứng dụng iOS.

####ViewController.m
```Objective-C
#import "ViewController.h"

// Category, an extension of ViewController class
@interface ViewController ()

@end

@implementation ViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any rouse that can be recreated.
}
@end
```
<b>Important itemds in code</b>
- Hai phương thức đã implement ở đây đã được định nghĩa trong lớp cơ sở UIViewController.
- Thực hiện các cài đặt ban đầu trong viewDidLoad, nó sẽ được gọi sau khi các view tải xong.
- Phương thức didReceiveMemoryWarning được gọi trong trường hợp memory warning.







