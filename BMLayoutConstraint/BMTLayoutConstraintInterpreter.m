/**
 * Copyright (c) 2016, BCM
 * All rights reserved
 * Author: beichenming
 */

#import "BMTLayoutConstraintInterpreter.h"

#import "BMTLayoutConstraintBase.h"
#import "BMTLayoutConstraintConstant.h"
#import "BMTLayoutConstraintLanguage.h"

@interface BMTLayoutConstraintInterpreter() {
  dispatch_queue_t _queue;
}

@property (nonatomic, copy, readwrite) NSMutableDictionary *cacheConstraintMapDict;

@property (nonatomic, strong, readwrite) BMTLayoutConstraintLanguage *layoutConstraintLanguage;

@end

@implementation BMTLayoutConstraintInterpreter

+ (instancetype)sharedInstance {
  static BMTLayoutConstraintInterpreter *_sharedManager = nil;
  static dispatch_once_t oncePredicate;
  dispatch_once(&oncePredicate, ^{
    _sharedManager = [[self alloc] init];
  });
  
  return _sharedManager;
}

- (instancetype)init {
  if (self = [super init]) {
    _cacheConstraintMapDict = [[NSMutableDictionary alloc] init];
    _layoutConstraintLanguage = [[BMTLayoutConstraintLanguage alloc] init];
    _queue = dispatch_queue_create("com.bongmi.layoutcontraintqueue", DISPATCH_QUEUE_CONCURRENT);
  }
  return self;
}

#pragma mark - private

- (NSString *)getLayoutConstraintDeviceName {
  if (((WIDTH_SCREEN == kBMTDeviceScreenWidthIphone5 &&
        HEIGHT_SCREEN == kBMTDeviceScreenHeightIphone5) ||
       (WIDTH_SCREEN == kBMTDeviceScreenHeightIphone5 &&
        HEIGHT_SCREEN == kBMTDeviceScreenWidthIphone5)) ||
      ((WIDTH_SCREEN == kBMTDeviceScreenWidthIphone5s &&
       HEIGHT_SCREEN == kBMTDeviceScreenHeightIphone5s) ||
       (WIDTH_SCREEN == kBMTDeviceScreenHeightIphone5s &&
        HEIGHT_SCREEN == kBMTDeviceScreenWidthIphone5s))) {
    return kBMTLayoutConstraintDeviceiPhone5_S_C_SE;
  } else if (((WIDTH_SCREEN == kBMTDeviceScreenWidthIphone6 &&
               HEIGHT_SCREEN == kBMTDeviceScreenHeightIphone6) ||
              (WIDTH_SCREEN == kBMTDeviceScreenHeightIphone6 &&
               HEIGHT_SCREEN == kBMTDeviceScreenWidthIphone6)) ||
             ((WIDTH_SCREEN == kBMTDeviceScreenWidthIphone6s &&
              HEIGHT_SCREEN == kBMTDeviceScreenHeightIphone6s) ||
              (WIDTH_SCREEN == kBMTDeviceScreenHeightIphone6s &&
               HEIGHT_SCREEN == kBMTDeviceScreenWidthIphone6s))) {
    return kBMTLayoutConstraintDeviceiPhone6_S;
  } else if (((WIDTH_SCREEN == kBMTDeviceScreenWidthIphone6p &&
               HEIGHT_SCREEN == kBMTDeviceScreenHeightIphone6p) ||
              (WIDTH_SCREEN == kBMTDeviceScreenHeightIphone6p &&
               HEIGHT_SCREEN == kBMTDeviceScreenWidthIphone6p)) ||
              ((WIDTH_SCREEN == kBMTDeviceScreenWidthIphone6sp &&
               HEIGHT_SCREEN == kBMTDeviceScreenHeightIphone6sp) ||
               (WIDTH_SCREEN == kBMTDeviceScreenHeightIphone6sp &&
                HEIGHT_SCREEN == kBMTDeviceScreenWidthIphone6sp))) {
    return kBMTLayoutConstraintDeviceiPhone6P_S;
  } else if ((WIDTH_SCREEN == kBMTDeviceScreenWidthIpad &&
              HEIGHT_SCREEN == kBMTDeviceScreenHeightIpad) ||
             (WIDTH_SCREEN == kBMTDeviceScreenHeightIpad &&
              HEIGHT_SCREEN == kBMTDeviceScreenWidthIpad)) {
    return kBMTLayoutConstraintDeviceiPad;
  } else {
    return kBMTLayoutConstraintDeviceiPad;
  }
}

- (NSString *)concatenateLayoutConstraintFilePath:(NSString *)fileName {
  NSString *fileType = @"json";
  NSString *constraintDeviceName = [self getLayoutConstraintDeviceName];
  NSString *combinationFileName =
  [NSString stringWithFormat:@"%@_%@", fileName, constraintDeviceName];
  NSString *constraintFilePath =
  [[NSBundle mainBundle] pathForResource:combinationFileName ofType:fileType];
  return constraintFilePath;
}

- (NSString *)getLayoutConstraintDeviceLanguageWithViewConstraintId:(NSString *)viewConstraintId {
    NSArray *languageArray = [NSLocale preferredLanguages];
    for (NSString *language in languageArray) {
        NSString *constraintDeviceLanguage =
            [self.layoutConstraintLanguage.preferredLanguagesDict objectForKey:language];
        NSString *newViewConstraintId =
            [NSString stringWithFormat:@"%@_%@", viewConstraintId, constraintDeviceLanguage];
        if ([self cacheConstraintMapDictObjectForKey:newViewConstraintId]) {
            return newViewConstraintId;
        }
    }
    
    NSString *defaultLanguage =
    [[[NSBundle mainBundle]infoDictionary] objectForKey:@"CFBundleDevelopmentRegion"];
    NSString *constraintDeviceLanguage =
    [self.layoutConstraintLanguage.defaultLanguagesDict objectForKey:defaultLanguage];
    NSString *newViewConstraintId =
    [NSString stringWithFormat:@"%@_%@", viewConstraintId, constraintDeviceLanguage];
    if ([self cacheConstraintMapDictObjectForKey:newViewConstraintId]) {
        return newViewConstraintId;
    } else {
        NSLog(@"%@ not in Localization native development region(CFBundleDevelopmentRegion)", defaultLanguage);
        NSLog(@"use this (Canada, Canada(French), China, France, Germany, Italy, Japan, Korea, Taiwan, United Kingdom, United States)");
        assert(0);
    }

    return nil;
}

- (void)parseTargetLayoutConstraintFile:(NSString *)fileName {
  NSError *error = nil;
  NSString *constraintFilePath = [self concatenateLayoutConstraintFilePath:fileName];
  NSString *jsonContents = [NSString stringWithContentsOfFile:constraintFilePath
                                                     encoding:NSUTF8StringEncoding
                                                        error:&error];
  if (error) {
    NSLog(@"%s read %@ file error %@", object_getClassName([self class]), constraintFilePath, error);
    assert(NO);
  }
  
  NSData *data = [jsonContents dataUsingEncoding:NSUTF8StringEncoding];
  NSDictionary *firstDict =
  [NSJSONSerialization JSONObjectWithData:data
                                  options:kNilOptions
                                    error:&error];
  if (error) {
    NSLog(@"%s convert dictionary error %@", object_getClassName([self class]), error);
    assert(NO);
  }
  for (NSString *keyOne in firstDict) {
    for (NSDictionary *secondDict in firstDict[keyOne]) {
      for (NSString *keyTwo in secondDict) {
        BMTLayoutConstraintModel *model =
         [[BMTLayoutConstraintModel alloc] initWithDictionary:secondDict[keyTwo]];
        if (model) {
          BMTLayoutConstraintBase *base =
          [[BMTLayoutConstraintBase alloc] initWithLayoutConstraintModel:model];
          [self setCacheConstraintMapDictObject:base
                                         forKey:keyTwo];
        }
      }
    }
  }
}

// safe read-write
- (id)cacheConstraintMapDictObjectForKey:(id)viewConstraintId {
  __block id obj;
  dispatch_sync(_queue, ^{
    obj = [_cacheConstraintMapDict objectForKey:viewConstraintId];
  });
  return obj;
}

- (void)setCacheConstraintMapDictObject:(id)obj
                                 forKey:(id)key {
  dispatch_barrier_async(_queue, ^{
    [_cacheConstraintMapDict setObject:obj
                                forKey:key];
  });
}

#pragma mark - public
- (void)parseLayoutConstraintAsyncWithViewId:(NSString *)viewConstraintId
                               containerName:(NSString *)containerName
                       andCompletionCallback:(AsyncLayoutContraintCallback)completeCallback {
  NSString *newViewConstraintId =
    [self getLayoutConstraintDeviceLanguageWithViewConstraintId:viewConstraintId];
    
  if ([self cacheConstraintMapDictObjectForKey:newViewConstraintId]) {
    if (completeCallback) {
      completeCallback([self cacheConstraintMapDictObjectForKey:newViewConstraintId]);
    }
  } else {
    @weakify(self)
    dispatch_async(_queue, ^{
      @strongify(self)
      [self parseTargetLayoutConstraintFile:containerName];
      @weakify(self)
      dispatch_async(dispatch_get_main_queue(), ^{
        @strongify(self)
        if (completeCallback) {
          completeCallback([self cacheConstraintMapDictObjectForKey:viewConstraintId]);
        }
      });
    });
  }
}

- (void)layoutConstraintAsyncWithContainerName:(NSString *)containerName
                         andCompletionCallback:(void (^)(void))completeCallback {
    @weakify(self)
    dispatch_async(_queue, ^{
      @strongify(self)
      [self parseTargetLayoutConstraintFile:containerName];
      if (completeCallback) {
        completeCallback();
      }
    });
}

- (BMTLayoutConstraintBase *)parseLayoutConstraintSyncWithViewId:(NSString *)viewConstraintId
                                                andContainerName:(NSString *)containerName {
  NSString *newViewConstraintId =
    [self getLayoutConstraintDeviceLanguageWithViewConstraintId:viewConstraintId];

  if ([self cacheConstraintMapDictObjectForKey:newViewConstraintId]) {
    return [self cacheConstraintMapDictObjectForKey:newViewConstraintId];
  } else {
    [self parseTargetLayoutConstraintFile:containerName];
    return [self cacheConstraintMapDictObjectForKey:viewConstraintId];
  }
}

@end
