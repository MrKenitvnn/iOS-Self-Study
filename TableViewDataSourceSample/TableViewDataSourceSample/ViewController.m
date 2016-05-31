//
//  ViewController.m
//  TableViewDataSourceSample
//
//  Created by myG on 30/05/2016.
//  Copyright © 2016 myG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSMutableArray *items;
}

@property (strong, nonatomic) XXDataSource *dataSource;

- (void)configureCell:(SampleViewCell *)cell andItem:(NSString *)item;

@end


@implementation ViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Create list items
    items = [[NSMutableArray alloc] init];
    for (int i = 0; i < 50; i++) {
        [items addObject:[NSString stringWithFormat:@"Cell %d", i]];
    }
    
    // create datasource
    self.dataSource = [[XXDataSource alloc] initWithItems:items
                                                cellIdentifier:@"MYCELL"
                                                        target:self
                                              cellConfigureSel:@selector(configureCell:andItem:)];
    [self.dataSource setXibFileName:@"SampleCell"];
    
    mTableView.dataSource = self.dataSource;

    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


- (void) configureCell:(SampleViewCell *)cell andItem:(NSString *)item {
    [cell.mLabelTitle setText:item];
}

@end
