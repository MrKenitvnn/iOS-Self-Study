


<b>Bước 1</b>: create a single view application.


<b>Bước 2</b>: File -> New -> File...

<p align="center"> 
    <img src= "http://www.tutorialspoint.com/ios/images/addnewfile.jpg" />
</p>


<b>Bước 3</b>. Chọn Objective C Class và click Next.

<b>Bước 4</b>: Đặt tên class: SampleProtocol với lớp cha là NSObject

<p align="center"> 
    <img src= "http://www.tutorialspoint.com/ios/images/setprotocolname.jpg" />
</p>

<b>Bước 5</b>: select create.

<b>Bước 6</b>: viết code cho SampleProtocol.h
```Objective-C
#import <Foundation/Foundation.h>

// Protocol definitaion starts here
@protocol SampleProtocolDelegate <NSObject>
    @required
    - (void) processCompleted;
@end
// Protocol definition ends here


@interface SampleProtocol : NSObject 

{
    // delegate to respond back
    id <SampleProtocolDelegate> _delegate;
}

@property (nonatomic, strong) id delegate;

- (void) startSampleProcess; // instance method

@end
```


<b>Bước 7</b>: Implement trong ```SampleProtocol.m```

```Objective-C
@implementation SampleProtocol

- (void) startSampleProtocol {
    [NSTimer scheduledTimerWithTimeInterval : 3.0 target : self.delegate 
        selector : @selector(processCompleted) userInfo : nil repeat : NO];
}
@end
```


<b>Bước 8</b>: Thêm một UILabel trong ```ViewController.xib```

<p align="center"> 
    <img src= "http://www.tutorialspoint.com/ios/images/delegatelabel.jpg" />
</p>


<b>Bước 9</b>: Tạo một IBOutlet cho label và tên là myLabel và update code trong ```ViewController.h```

```Objective-C
#import <UIKit/UIKit.h>
#import "SampleProtocol.h"

@interface ViewController : UIViewController <SampleProtocolDelegate>
{
    IBOutlet UILabel *myLabel;
}
@end
```


<b>Bước 10</b>: implement phương thức delegate, tạo đối tượng cho SampleProtocol và gọi phương thức startSampleProcess. update file ```ViewController.m```:

```Objective-C
#import "ViewController.h"

@interface ViewController {}
#end

@implementation ViewControlelr

- (void) viewDidLoad {
    
    [super viewDidLoad];
    SampleProtocol *sampleProtocol = [[SampleProtocol alloc] init];
    sampleProtocol.delegate = self;
    [myLabel setText:@"Processing.."];
    [sampleProtocol startSampleProcess];
    // do any additional setup after loading the view, typically from a nib.
}

- (void) didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // dispose of any resources that can be recreated.
}

#pragma mark - Sample protocol delegate
- (void) processCompleted {
    [myLabel setText:@"Process Completed."];
}

@end
```

<b>Bước 11</b>: Chúng ta sẽ thấy màn hình hiên thị như sau:

<p align="center"> 
    <img src= "http://www.tutorialspoint.com/ios/images/delegateresult.jpg" />
</p>












