//
//  TableCellTableViewCell.m
//  UI
//
//  Created by myG on 30/05/2016.
//  Copyright © 2016 ken. All rights reserved.
//

#import "TableCellTableViewCell.h"

@implementation TableCellTableViewCell


@synthesize mLabelTitle = _mLabelTitle;
@synthesize mLabelDescription = _mLabelDescription;
@synthesize mImageViewGame = _mImageViewGame;


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
