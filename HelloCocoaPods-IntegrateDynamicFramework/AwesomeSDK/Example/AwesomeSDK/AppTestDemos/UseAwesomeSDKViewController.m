//
//  ViewController.m
//  AppTest
//
//  Created by wesley chen on 16/4/13.
//
//

#import "UseAwesomeSDKViewController.h"
#import <AwesomeSDK/AwesomeSDK.h>

@interface UseAwesomeSDKViewController ()

@end

@implementation UseAwesomeSDKViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [AwesomeSDKManager doSomething];
}

@end
