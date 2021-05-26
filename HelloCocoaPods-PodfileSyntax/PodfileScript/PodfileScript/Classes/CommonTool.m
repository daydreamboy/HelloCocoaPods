//
//  CommonTool.m
//  PodfileScript
//
//  Created by wesley_chen on 2021/5/22.
//

#import "CommonTool.h"

// >= `10.0`
#ifndef IOS10_OR_LATER
#define IOS10_OR_LATER          ([[[UIDevice currentDevice] systemVersion] compare:@"10.0" options:NSNumericSearch] != NSOrderedAscending)
#endif

@implementation CommonTool

+ (BOOL)openSettings {
    // Note: in app extension, [UIApplication sharedApplication] not available in runtime
    if ([self isAppExtension]) {
        return NO;
    }
    
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wtautological-pointer-compare"
    BOOL canOpenSettings = (&UIApplicationOpenSettingsURLString != NULL);
#pragma GCC diagnostic pop
    
    if (canOpenSettings) {
        NSURL *URL = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        
        if (IOS10_OR_LATER) {
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunguarded-availability"
            [[UIApplication sharedApplication] openURL:URL options:@{} completionHandler:nil];
#pragma GCC diagnostic pop
        }
        else {
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
            [[UIApplication sharedApplication] openURL:URL];
#pragma GCC diagnostic pop
        }
        
        return YES;
    }
    else {
        return NO;
    }
}

#pragma mark - App Extension

+ (BOOL)isAppExtension {
    if ([[[NSBundle mainBundle] bundlePath] hasSuffix:@".appex"]) {
        // this is an app extension
        return YES;
    }
    else {
        return NO;
    }
}

@end
