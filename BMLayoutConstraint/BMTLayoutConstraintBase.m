/**
 * Copyright (c) 2016, Bongmi
 * All rights reserved
 * Author: beichenming
 */


#import "BMTLayoutConstraintBase.h"

#import <objc/runtime.h>

@implementation BMTLayoutConstraintModel

- (instancetype)initWithDictionary:(NSDictionary *)dict {
  if (!dict) {
    NSLog(@"%s parse dictionary is nil", object_getClassName([self class]));
    assert(NO);
    return nil;
  }
  
  if (![dict isKindOfClass:[NSDictionary class]]) {
    NSLog(@"%s the dictionary parameter was not an 'NSDictionary", object_getClassName([self class]));
    assert(NO);
    return nil;
  }
  
  self = [self init];
  if (!self) {
    NSLog(@"%s super init didn't succeed", object_getClassName([self class]));
    assert(NO);
    return nil;
  }
  
  NSArray *propertyKeys = [self allPropertyKeys];
  for (NSString *key in propertyKeys) {
    if (dict[key]) {
      [self setValue:dict[key] forKey:key];
    } else {
      [self setValue:nil forKey:key];
    }
  }
  return self;
}

- (NSArray *)allPropertyKeys {
  unsigned int outCount;
  objc_property_t *properties = class_copyPropertyList([self class], &outCount);
  NSMutableArray *keys = [[NSMutableArray alloc] initWithCapacity:outCount];
  for (NSInteger index = 0; index < outCount; index++) {
    objc_property_t property = properties[index];
    NSString *propertyName = [[NSString alloc] initWithCString:property_getName(property) encoding:NSUTF8StringEncoding];
    [keys addObject:propertyName];
  }
  free(properties);
  return keys;
}

@end

@interface BMTLayoutConstraintBase ()

// Standard Attributes
@property (nonatomic, assign, readwrite) CGFloat marginLeft;

@property (nonatomic, assign, readwrite) CGFloat marginRight;

@property (nonatomic, assign, readwrite) CGFloat marginTop;

@property (nonatomic, assign, readwrite) CGFloat marginBottom;

@property (nonatomic, assign, readwrite) CGFloat width;

@property (nonatomic, assign, readwrite) CGFloat height;

// Special Attributes
@property (nonatomic, assign, readwrite) CGFloat fontSize;

@property (nonatomic, assign, readwrite) CGFloat cornerRadius;

@property (nonatomic, copy, readwrite) NSString *imageName;

@property (nonatomic, assign, readwrite) CGFloat remarkParameterOne;

@property (nonatomic, assign, readwrite) CGFloat remarkParameterTwo;

@end

@implementation BMTLayoutConstraintBase

- (instancetype)initWithLayoutConstraintModel:(BMTLayoutConstraintModel *)model {
  if (self = [super init]) {
    _marginLeft = [model.marginLeft doubleValue];
    _marginRight = [model.marginRight doubleValue];
    _marginTop = [model.marginTop doubleValue];
    _marginBottom = [model.marginBottom doubleValue];
    _width = [model.width doubleValue];
    _height = [model.height doubleValue];
    
    _fontSize = [model.fontSize doubleValue];
    _cornerRadius = [model.cornerRadius doubleValue];
    _imageName = [model.imageName mutableCopy];
    _remarkParameterOne = [model.remarkParameterOne doubleValue];
    _remarkParameterTwo = [model.remarkParameterTwo doubleValue];
  }
  return self;
}

@end
