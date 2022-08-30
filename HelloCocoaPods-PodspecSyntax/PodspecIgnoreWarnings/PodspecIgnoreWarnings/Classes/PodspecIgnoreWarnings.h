//
//  PodspecIgnoreWarnings.h
//  PodspecIgnoreWarnings
//
//  Created by wesley_chen on 2022/8/29.
//

#ifndef PodspecIgnoreWarnings_h
#define PodspecIgnoreWarnings_h

#import <PodspecIgnoreWarnings/SomeManager.h>

// Note: make a warning on purpose
// warning: double-quoted include "AnotherManager.h" in framework header, expected angle-bracketed instead [-Wquoted-include-in-framework-header]
// Build Setting: CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER = NO
// (Use this setting in user project)
#import "AnotherManager.h"

#endif /* PodspecIgnoreWarnings_h */
