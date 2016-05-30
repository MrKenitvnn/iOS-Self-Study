//
//  PromoteApp.m
//  UI
//
//  Created by myG on 30/05/2016.
//  Copyright © 2016 ken. All rights reserved.
//

#import "PromoteApp.h"

@implementation PromoteApp


- (id) init {
    self = [super init];
    if (self) {
        app_package_name = @"";
        app_icon = @"";
        app_name = @"";
        app_invite_text = @"";
        app_show_gift = NO;
        app_url_download = @"";
    }
    
    return self;
}

- (void) setAppPackagename:(NSString *)appPackageName {
    app_package_name = [[NSString alloc] initWithString:appPackageName];
}

- (void) setAppIcon:(NSString *)appIcon {
    app_icon = [[NSString alloc] initWithString:appIcon];
}

- (void) setAppName:(NSString *)appName {
    app_name = [[NSString alloc] initWithString:appName];
}

- (void) setAppInviteText:(NSString *)appInviteText {
    app_invite_text = [[NSString alloc] initWithString:appInviteText];
}

- (void) setAppShowGift:(BOOL *)isAppShowGift {
    app_show_gift = isAppShowGift;
}

- (void) setAppUrlDownload:(NSString *)appUrlDownload {
    app_url_download = [[NSString alloc] initWithString:appUrlDownload];
}


- (NSString *) getAppName {
    return app_name;
}

- (NSString *) getAppIcon {
    return app_icon;
}

- (NSString *) getAppInviteText {
    return app_invite_text;
}




- (void) constructor:(NSString *)appPackageName app_icon:(NSString *)appIcon app_name:(NSString *)appName app_invite_text:(NSString *)appInviteText is_app_show_gift:(BOOL *)isAppShowGift app_url_download:(NSString *)appUrlDownload {
    
    [self setAppIcon:appIcon];
    [self setAppPackagename:appPackageName];
    [self setAppName:appName];
    [self setAppInviteText:appInviteText];
    [self setAppShowGift:isAppShowGift];
    [self setAppUrlDownload:appUrlDownload];
}

@end
