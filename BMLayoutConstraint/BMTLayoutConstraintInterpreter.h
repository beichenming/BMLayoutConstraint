/**
 * Copyright (c) 2016, Bongmi
 * All rights reserved
 * Author: beichenming
 */

#import <UIKit/UIKit.h>

@class BMTLayoutConstraintBase;

typedef void(^AsyncLayoutContraintCallback)(BMTLayoutConstraintBase *layoutConstraintBase);

@interface BMTLayoutConstraintInterpreter : NSObject

+ (instancetype)sharedInstance;

- (void)parseLayoutConstraintAsyncWithViewId:(NSString *)viewConstraintId
                               containerName:(NSString *)containerName
                       andCompletionCallback:(AsyncLayoutContraintCallback)completeCallback;

- (void)layoutConstraintAsyncWithContainerName:(NSString *)containerName
                         andCompletionCallback:(void (^)(void))completeCallback;

- (BMTLayoutConstraintBase *)parseLayoutConstraintSyncWithViewId:(NSString *)viewConstraintId
                                                andContainerName:(NSString *)containerName;

@end
