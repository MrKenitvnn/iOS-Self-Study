//
//  PromoteApp.h
//  UI
//
//  Created by myG on 30/05/2016.
//  Copyright © 2016 ken. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PromoteApp : NSObject

{
    NSString *app_package_name;
    NSString *app_icon;
    NSString *app_name;
    NSString *app_invite_text;
    BOOL *app_show_gift;
    NSString *app_url_download;
}

- (void) constructor : (NSString *) app_package_name
                        app_icon:(NSString *) app_icon
                        app_name:(NSString *) app_name
                        app_invite_text:(NSString *) app_invite_text
                        is_app_show_gift:(BOOL *) is_app_show_gift
                        app_url_download: (NSString *) app_url_download;


- (void) setAppPackagename : (NSString *) appPackageName;
- (void) setAppIcon : (NSString *) appIcon;
- (void) setAppName : (NSString *) appName;
- (void) setAppInviteText : (NSString *) appInviteText;
- (void) setAppShowGift : (BOOL *) isAppShowGift;
- (void) setAppUrlDownload : (NSString *) appUrlDownload;

- (NSString *) getAppName;
- (NSString *) getAppIcon;
- (NSString *) getAppInviteText;

@end
