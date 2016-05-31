//
//  TableViewController.h
//  UI
//
//  Created by myG on 30/05/2016.
//  Copyright © 2016 ken. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

{
    IBOutlet UIButton *mButtonBack;
    
    IBOutlet UITableView *mTableView;
}

- (IBAction)onButtonBackClick:(id)sender;


@end
