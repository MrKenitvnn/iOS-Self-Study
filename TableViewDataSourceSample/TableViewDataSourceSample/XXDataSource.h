//
//  XXDataSource.h
//  TableViewDataSourceSample
//
//  Created by myG on 30/05/2016.
//  Copyright © 2016 myG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^TVCellConfigureBlock)(id, id);

@interface XXDataSource : NSObject <UITableViewDataSource>

/* init with block */
- (id)initWithItems:(NSArray *)items
     cellIdentifier:(NSString *)cellIdentifier
 cellConfigureBlock:(TVCellConfigureBlock) configureBlock;

/* init with selector */
- (id)initWithItems:(NSArray *)items
     cellIdentifier:(NSString *)cellIdentifier
             target:(id)target
   cellConfigureSel:(SEL)configureSelector;

/* set Xib filename */
- (void)setXibFileName:(NSString *)xibFileName;

/* set Cell Classname */
- (void)setCellClassName:(NSString *)cellClassName;

@end
