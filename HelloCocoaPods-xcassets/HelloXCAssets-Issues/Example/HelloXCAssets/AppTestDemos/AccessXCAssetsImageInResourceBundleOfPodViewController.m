//
//  AccessXCAssetsImageInResourceBundleOfPodViewController.m
//  HelloXCAssets_Example
//
//  Created by wesley_chen on 23/11/2017.
//  Copyright © 2017 daydreamboy. All rights reserved.
//

#import "AccessXCAssetsImageInResourceBundleOfPodViewController.h"
#import "WCXCAssetsImageTool.h"
#import "Manager.h"

@interface AccessXCAssetsImageInResourceBundleOfPodViewController ()

@end

@implementation AccessXCAssetsImageInResourceBundleOfPodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self test_access_xcassets_image_in_resource_bundle_of_pod];
}

- (void)test_access_xcassets_image_in_resource_bundle_of_pod {
    // Warning: resource_bunlde name is same as framework name
    UIImage *image1 = [WCXCAssetsImageTool xcassetsImageNamed:@"myredpocket" resourceBundleName:@"HelloXCAssets" podName:@"HelloXCAssets"];
    NSLog(@"image1: %@", image1);
    [self addImage:image1];
    
    // Warning: resource_bunlde name is same as framework name
    UIImage *image2 = [WCXCAssetsImageTool xcassetsImageNamed:@"favorites" resourceBundleName:@"HelloXCAssets" podName:@"HelloXCAssets"];
    NSLog(@"image2: %@", image2);
    
    [self addImage:image2];
}

@end
