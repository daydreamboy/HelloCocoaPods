//
//  SomeManager.h
//  PodspecIgnoreWarnings
//
//  Created by wesley_chen on 2022/8/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// Note: make a warning on purpose
// warning: this block declaration is not a prototype [-Wstrict-prototypes]
// Build Setting: CLANG_WARN_STRICT_PROTOTYPES = NO
typedef void (^ActivateBlock)();

@interface SomeManager : NSObject

// Note: make a warning on purpose
// warning: empty paragraph passed to '@param' command [-Wdocumentation]
// Build Setting: CLANG_WARN_DOCUMENTATION_COMMENTS = NO
/**
 @param bizType
 */
+ (instancetype)createSomeManager:(NSString *)bizType;

@end

NS_ASSUME_NONNULL_END
