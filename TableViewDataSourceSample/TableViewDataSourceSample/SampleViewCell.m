//
//  SampleViewCell.m
//  TableViewDataSourceSample
//
//  Created by myG on 30/05/2016.
//  Copyright © 2016 myG. All rights reserved.
//

#import "SampleViewCell.h"

@implementation SampleViewCell


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
