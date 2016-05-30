//
//  TableCellTableViewCell.h
//  UI
//
//  Created by myG on 30/05/2016.
//  Copyright © 2016 ken. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableCellTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *mLabelTitle;
@property (nonatomic, weak) IBOutlet UILabel *mLabelDescription;
@property (nonatomic, weak) IBOutlet UIImageView *mImageViewGame;

@end
