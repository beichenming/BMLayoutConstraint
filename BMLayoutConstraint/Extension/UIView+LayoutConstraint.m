/**
 * Copyright (c) 2016, Bongmi
 * All rights reserved
 * Author: beichenming
 */

#import "UIView+LayoutConstraint.h"

#import "BMTLayoutConstraintBase.h"

@implementation UIView (LayoutConstraint)

- (BMTLayoutConstraintBase *)layoutConstraintWithViewId:(NSString *)viewConstraintId
                                        containerObject:(id)containerObject {
  return [[self class] layoutConstraintWithViewId:viewConstraintId
                                  containerObject:containerObject];
}

+ (BMTLayoutConstraintBase *)layoutConstraintWithViewId:(NSString *)viewConstraintId
                                        containerObject:(id)containerObject {
  NSString *containerObjectName =
  [NSString stringWithUTF8String:object_getClassName(containerObject)];
  return [[BMTLayoutConstraintInterpreter sharedInstance] parseLayoutConstraintSyncWithViewId:viewConstraintId
                                                                            andContainerName:containerObjectName];
}

@end
