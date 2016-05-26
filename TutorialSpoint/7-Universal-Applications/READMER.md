
A universal application is an application that is designed for both iPhone and iPad in a single binary. A universal application allows code reuse and fast updates.

<b>Step 1</b>: Create a simple ```View based application```.
<b>Step 2</b>: Đổi tên file ```ViewController.xib``` thành ```ViewController_iPhone.xib``` 

<p align="center">
    <img src="http://www.tutorialspoint.com/ios/images/universalappinterfacerename.jpg" />
</p>


<b>Step 3</b>: Chọn File -> New -> File.. chọn ```User Interface``` chọn ```View```. Nhấn Next.

<p align="center">
    <img src="http://www.tutorialspoint.com/ios/images/newipadxib.jpg" />
</p>
 
<b>Step 4</b>: Chọn Device Family: iPad và Next.

<p align="center">
    <img src="http://www.tutorialspoint.com/ios/images/universalappselectdevicetype.jpg" />
</p>

<b>Step 5</b>: Lưu file là ```ViewController_iPad.xib``` và chọn Create.

<b>Step 6</b>: Thêm một label vào giữa màn hình, ở cả ```ViewController_iPhone.xib``` và ```ViewController_iPad.xib```


<b>Step 7</b>: Trong ```ViewController_iPad.xib```, chọn ```identity inspector``` và thiết lập custom class là ```ViewController```.

<p align="center">
    <img src="http://www.tutorialspoint.com/ios/images/universalappsetclass.jpg" />
</p>

<b>Step 8</b>: Update phương thức ```application:DiDFinishLaunching:withOptions``` trong ```AppDelegate.m``` như sau:

```Objective-C
- (BOOL) application : (UIApplication *) application
didFinishLaunchingWithOptions:(NSDictionary *) launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame : [[UIScreen 
    mainScreen] bounds]];
    // Override point for customization after application launch.
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        self.viewController = [[ViewController alloc]
        initWithNibName:@"ViewController_iPhone" bundle:nil];
    } else {
        self.viewController = [[ViewController alloc] initWithNibName:
        @"ViewController_iPad" bundle : nil];
    }
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

```


<b>Step 9</b>: Update the devices in project summary to Universal as shown below

<p align="center">
   <img src="http://www.tutorialspoint.com/ios/images/universalappsetdevices.jpg" />
</p>

#####Output
When we run the application, we'll get the following output

<p align="center">
   <img src="http://www.tutorialspoint.com/ios/images/universalappiphone_output.jpg" />
</p>

When we run the application in iPad simulator, we'll get the following output

<p align="center">
   <img src="http://www.tutorialspoint.com/ios/images/universalappipad_output.jpg" />
</p>













