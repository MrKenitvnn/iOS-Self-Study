//
//  TableViewController.m
//  UI
//
//  Created by myG on 30/05/2016.
//  Copyright © 2016 ken. All rights reserved.
//

#import "TableViewController.h"
#import "TableCellTableViewCell.h"
#import "PromoteApp.h"

@interface TableViewController ()

@end

@implementation TableViewController
{
    NSArray *mListLanguages;
    NSMutableArray *mListPromoteApps;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    mListLanguages = [NSArray arrayWithObjects:@"Pascal", @"C/C++", @"C#", @"Java", @"Objective-C", @"Swift", @"Haskell", @"PHP", @"JavaScript", @"Ruby, "@"Python", @"Scala", nil];
    
    mListPromoteApps = [[NSMutableArray alloc] init];
    
    PromoteApp *item = [[PromoteApp alloc] init];
    [item setAppName:@"Ngọc Rồng Đại Chiến"];
    [item setAppInviteText:@"Chiến Ngay"];
    [item setAppIcon:@"ngamy.jpg"];
    [mListPromoteApps addObject:item];
    
    //PromoteApp *item2 = [[PromoteApp alloc] init];
    [item setAppName:@"Bá Vương"];
    [item setAppInviteText:@"Chiến Ngay"];
    [item setAppIcon:@"ngamy.jpg"];
    [mListPromoteApps addObject:item];
    
    //PromoteApp *item3 = [[PromoteApp alloc] init];
    [item setAppName:@"Đảo Hải Tặc"];
    [item setAppInviteText:@"Chiến Ngay"];
    [item setAppIcon:@"ngamy.jpg"];
    [mListPromoteApps addObject:item];
    
    //mListPromoteApps = [NSMutableArray arrayWithObjects: item, item2, item3, nil];
    
    NSLog(@"%@", [mListPromoteApps[0] getAppName]);
    NSLog(@"%@", [mListPromoteApps[1] getAppName]);
    NSLog(@"%@", [mListPromoteApps[2] getAppName]);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onButtonBackClick:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    
}


- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [mListPromoteApps count];
}



- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"Simple Table Cell";
    PromoteApp *item = [mListPromoteApps objectAtIndex:indexPath.row];
    
    NSLog(@"index:%d, item: %@", indexPath.row ,[item getAppName]);
    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    TableCellTableViewCell *cell = (TableCellTableViewCell *)
    [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"TableCellTableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    
    cell.mLabelTitle.text = [item valueForKey:@"app_name"];
    cell.mLabelDescription.text = [item getAppInviteText];
    [cell.mImageViewGame setImage: [UIImage imageNamed: [item getAppIcon]]];
    
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    
    return cell;
}


- (void) tableView: (UITableView *) tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    NSLog(@"click at position: %d", (int)indexPath.item);
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:[ mListPromoteApps[indexPath.item] getAppName]
                          message:[ mListPromoteApps[indexPath.item] getAppInviteText]
                          delegate:self cancelButtonTitle:@"Close"
                          otherButtonTitles:nil , nil];
    [alert show];
}

- (CGFloat) tableView: (UITableView *) tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    return 78;
}







@end
