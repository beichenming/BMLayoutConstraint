/**
 * Copyright (c) 2016, Bongmi
 * All rights reserved
 * Author: beichenming
 */

#import <Foundation/Foundation.h>

#define BM_WIDTH_SCREEN [UIScreen mainScreen].bounds.size.width
#define BM_HEIGHT_SCREEN [UIScreen mainScreen].bounds.size.height

// weakify and strongify
#ifndef weakify
#define weakify( x ) \
autoreleasepool{} __weak typeof(x) __weak_##x##__ = x;
#endif // #ifndef weakify

#ifndef strongify
#define strongify( x ) \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Wshadow\"") \
autoreleasepool{} typeof(x) x = __weak_##x##__; \
_Pragma("clang diagnostic pop")
#endif // #ifndef strongify

typedef NS_ENUM(NSUInteger, BMDeviceScreenWidth) {
    kBMDeviceScreenWidthIphone4 = 320,
    kBMDeviceScreenWidthIphone4s = 320,
    kBMDeviceScreenWidthIphone5 = 320,
    kBMDeviceScreenWidthIphone5s = 320,
    kBMDeviceScreenWidthIphone6 = 375,
    kBMDeviceScreenWidthIphone6p = 414,
    kBMDeviceScreenWidthIphone6s = 375,
    kBMDeviceScreenWidthIphone6sp = 414,
    kBMDeviceScreenWidthIpad = 768
};

typedef NS_ENUM(NSUInteger, BMDeviceScreenHeight) {
    kBMDeviceScreenHeightIphone4 = 480,
    kBMDeviceScreenHeightIphone4s = 480,
    kBMDeviceScreenHeightIphone5 = 568,
    kBMDeviceScreenHeightIphone5s = 568,
    kBMDeviceScreenHeightIphone6 = 667,
    kBMDeviceScreenHeightIphone6p = 736,
    kBMDeviceScreenHeightIphone6s = 667,
    kBMDeviceScreenHeightIphone6sp = 736,
    kBMDeviceScreenHeightIpad = 1024
};

// Device Constraint Name
extern NSString *const kBMLayoutConstraintDeviceiPhone4_S;

extern NSString *const kBMLayoutConstraintDeviceiPhone5_S_C_SE;

extern NSString *const kBMLayoutConstraintDeviceiPhone6_S;

extern NSString *const kBMLayoutConstraintDeviceiPhone6P_S;

extern NSString *const kBMLayoutConstraintDeviceiPad;

