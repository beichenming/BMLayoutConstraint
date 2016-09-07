/**
 * Copyright (c) 2016, BCM
 * All rights reserved
 * Author: beichenming
 */

#import <Foundation/Foundation.h>

#define WIDTH_SCREEN [UIScreen mainScreen].bounds.size.width
#define HEIGHT_SCREEN [UIScreen mainScreen].bounds.size.height

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

typedef NS_ENUM(NSUInteger, BMTDeviceScreenWidth) {
    kBMTDeviceScreenWidthIphone4 = 320,
    kBMTDeviceScreenWidthIphone4s = 320,
    kBMTDeviceScreenWidthIphone5 = 320,
    kBMTDeviceScreenWidthIphone5s = 320,
    kBMTDeviceScreenWidthIphone6 = 375,
    kBMTDeviceScreenWidthIphone6p = 414,
    kBMTDeviceScreenWidthIphone6s = 375,
    kBMTDeviceScreenWidthIphone6sp = 414,
    kBMTDeviceScreenWidthIpad = 768
};

typedef NS_ENUM(NSUInteger, BMTDeviceScreenHeight) {
    kBMTDeviceScreenHeightIphone4 = 480,
    kBMTDeviceScreenHeightIphone4s = 480,
    kBMTDeviceScreenHeightIphone5 = 568,
    kBMTDeviceScreenHeightIphone5s = 568,
    kBMTDeviceScreenHeightIphone6 = 667,
    kBMTDeviceScreenHeightIphone6p = 736,
    kBMTDeviceScreenHeightIphone6s = 667,
    kBMTDeviceScreenHeightIphone6sp = 736,
    kBMTDeviceScreenHeightIpad = 1024
};

// Device Constraint Name
extern NSString *const kBMTLayoutConstraintDeviceiPhone4_S;

extern NSString *const kBMTLayoutConstraintDeviceiPhone5_S_C_SE;

extern NSString *const kBMTLayoutConstraintDeviceiPhone6_S;

extern NSString *const kBMTLayoutConstraintDeviceiPhone6P_S;

extern NSString *const kBMTLayoutConstraintDeviceiPad;

