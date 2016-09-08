/**
 * Copyright (c) 2016, Bongmi
 * All rights reserved
 * Author: beichenming
 */

#import <UIKit/UIKit.h>

#import "BMTLayoutConstraintInterpreter.h"

@class BMTLayoutConstraintBase;

@interface UIView (LayoutConstraint)

- (BMTLayoutConstraintBase *)layoutConstraintWithViewId:(NSString *)viewConstraintId
                                        containerObject:(id)containerObject;

+ (BMTLayoutConstraintBase *)layoutConstraintWithViewId:(NSString *)viewConstraintId
                                        containerObject:(id)containerObject;

@end
