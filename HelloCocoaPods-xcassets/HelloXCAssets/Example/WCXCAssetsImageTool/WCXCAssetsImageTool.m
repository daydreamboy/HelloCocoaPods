//
//  WCXCAssetsImageTool.m
//  HelloXCAssets_Example
//
//  Created by wesley_chen on 23/11/2017.
//  Copyright © 2017 daydreamboy. All rights reserved.
//

#import "WCXCAssetsImageTool.h"

@implementation WCXCAssetsImageTool

+ (nullable UIImage *)xcassetsImageNamed:(NSString *)name resourceBundleName:(NSString *)resourceBundleName podName:(NSString *)podName {
    if (![name isKindOfClass:[NSString class]] || ![resourceBundleName isKindOfClass:[NSString class]] || ![podName isKindOfClass:[NSString class]]) {
        return nil;
    }
    
#if DEBUG
    if ([resourceBundleName isEqualToString:podName]) {
        NSLog(@"<WCXCAssetsImageTool> [Warning] resource bundle name is same as Pod name: %@", podName);
    }
#endif
    UIImage *image = nil;
    if (podName) {
        // Note: [NSBundle mainBundle] sharedFrameworksPath] -- /../HelloXCAssets_Example.app/SharedFrameworks
        // Note: [NSBundle mainBundle] privateFrameworksPath] -- /../HelloXCAssets_Example.app/Frameworks
        
        // first check pod as framework
        NSString *frameworkPath = [[[NSBundle mainBundle] privateFrameworksPath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.framework", podName]];
        NSBundle *frameworkBundle = [NSBundle bundleWithPath:frameworkPath];
        if (frameworkBundle) {
            // pod is framework
            image = [self xcassetsImageInPodWithName:name resourceBundleName:resourceBundleName podBundle:frameworkBundle];
        }
        else {
            // pod is static library so look up image in main bundle
            image = [self xcassetsImageInMainBundleWithName:name resourceBundleName:resourceBundleName];
        }
    }
    else if ([podName isEqualToString:@""]) {
        // treat main bundle as pod
        image = [self xcassetsImageInMainBundleWithName:name resourceBundleName:resourceBundleName];
    }
    else {
        // get current pod which this code resides in
        // for case, this method resides in Pod
        NSBundle *podBundle = [NSBundle bundleForClass:self];
        image = [self xcassetsImageInPodWithName:name resourceBundleName:resourceBundleName podBundle:podBundle];
    }
    
    return image;
}

+ (UIImage *)xcassetsImageInMainBundleWithName:(NSString *)name resourceBundleName:(NSString *)resourceBundleName {
    UIImage *image = nil;
    if (resourceBundleName.length) {
        // resource bundle in main bundle
        NSString *resourceBundlePath = [[NSBundle mainBundle] pathForResource:resourceBundleName ofType:@"bundle"];
        NSBundle *resourceBundle = [NSBundle bundleWithPath:resourceBundlePath];
        
        image = [UIImage imageNamed:name inBundle:resourceBundle compatibleWithTraitCollection:nil];
    }
    else {
        // main bundle
        image = [UIImage imageNamed:name];
    }
    
    return image;
}

+ (UIImage *)xcassetsImageInPodWithName:(NSString *)name resourceBundleName:(NSString *)resourceBundleName podBundle:(NSBundle *)podBundle {
    UIImage *image = nil;
    if (resourceBundleName) {
        // resource bundle in pod bundle (static library or framework)
        NSString *resourceBundlePath = [podBundle pathForResource:resourceBundleName ofType:@"bundle"];
        NSBundle *resourceBundle = [NSBundle bundleWithPath:resourceBundlePath];
        
        image = [UIImage imageNamed:name inBundle:resourceBundle compatibleWithTraitCollection:nil];
    }
    else {
        // pod bundle (static library or framework)
        image = [UIImage imageNamed:name inBundle:podBundle compatibleWithTraitCollection:nil];
    }
    
    return image;
}

@end
