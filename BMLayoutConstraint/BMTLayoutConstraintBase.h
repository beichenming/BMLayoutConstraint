/**
 * Copyright (c) 2016, Bongmi
 * All rights reserved
 * Author: beichenming
 */

#import <UIKit/UIKit.h>

@interface BMTLayoutConstraintModel : NSObject

// Standard Attributes
@property (nonatomic, strong, readwrite) NSNumber *marginLeft;

@property (nonatomic, strong, readwrite) NSNumber *marginRight;

@property (nonatomic, strong, readwrite) NSNumber *marginTop;

@property (nonatomic, strong, readwrite) NSNumber *marginBottom;

@property (nonatomic, strong, readwrite) NSNumber *width;

@property (nonatomic, strong, readwrite) NSNumber *height;

// Special Attributes
@property (nonatomic, strong, readwrite) NSNumber *fontSize;

@property (nonatomic, strong, readwrite) NSNumber *cornerRadius;

@property (nonatomic, strong, readwrite) NSString *imageName;

@property (nonatomic, strong, readwrite) NSNumber *remarkParameterOne;

@property (nonatomic, strong, readwrite) NSNumber *remarkParameterTwo;

- (instancetype)initWithDictionary:(NSDictionary *)dict;

@end

@interface BMTLayoutConstraintBase : NSObject

// Standard Attributes
@property (nonatomic, assign, readonly) CGFloat marginLeft;

@property (nonatomic, assign, readonly) CGFloat marginRight;

@property (nonatomic, assign, readonly) CGFloat marginTop;

@property (nonatomic, assign, readonly) CGFloat marginBottom;

@property (nonatomic, assign, readonly) CGFloat width;

@property (nonatomic, assign, readonly) CGFloat height;

// Special Attributes
@property (nonatomic, assign, readonly) CGFloat fontSize;

@property (nonatomic, assign, readonly) CGFloat cornerRadius;

@property (nonatomic, copy, readonly) NSString *imageName;

@property (nonatomic, assign, readonly) CGFloat remarkParameterOne;

@property (nonatomic, assign, readonly) CGFloat remarkParameterTwo;

- (instancetype)initWithLayoutConstraintModel:(BMTLayoutConstraintModel *)model;

@end
