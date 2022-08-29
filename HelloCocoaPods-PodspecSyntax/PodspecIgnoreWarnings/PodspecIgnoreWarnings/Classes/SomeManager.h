//
//  SomeManager.h
//  PodspecIgnoreWarnings
//
//  Created by wesley_chen on 2022/8/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SomeManager : NSObject

// Note: make a warning on purpose
// warning: empty paragraph passed to '@param' command [-Wdocumentation]
/**
 @param bizType
 */
+ (instancetype)createSomeManager:(NSString *)bizType;

@end

NS_ASSUME_NONNULL_END
