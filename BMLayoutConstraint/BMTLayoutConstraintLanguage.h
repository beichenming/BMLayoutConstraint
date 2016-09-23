/**
 * Copyright (c) 2016, Bongmi
 * All rights reserved
 * Author: beichenming
 */

#import <UIKit/UIKit.h>

// layout constraint id ending
#define BM_BASE_STR         @"BM_BASE"
#define BM_EN_US_STR        @"BM_EN_US"
#define BM_ZH_HANS_US_STR   @"BM_ZH_HANS_US"
#define BM_ZH_HANT_US_STR   @"BM_ZH_HANT_US"
#define BM_JA_US_STR        @"BM_JA_US"
#define BM_ZH_HK_STR        @"BM_ZH_HK"
#define BM_ZH_TW_STR        @"BM_ZH_TW"
#define BM_FR_US_STR        @"BM_FR_US"
#define BM_KO_US_STR        @"BM_KO_US"
#define BM_DE_US_STR        @"BM_DE_US"
#define BM_NL_US_STR        @"BM_NL_US"
#define BM_IT_US_STR        @"BM_IT_US"
#define BM_ES_US_STR        @"BM_ES_US"
#define BM_DA_US_STR        @"BM_DA_US"
#define BM_FI_US_STR        @"BM_FI_US"
#define BM_SV_US_STR        @"BM_SV_US"
#define BM_RU_US_STR        @"BM_RU_US"
#define BM_PL_US_STR        @"BM_PL_US"
#define BM_TR_US_STR        @"BM_TR_US"
#define BM_FR_FR_STR        @"BM_FR_FR"
#define BM_HU_US_STR        @"BM_HU_US"
#define BM_CS_US_STR        @"BM_CS_US"
#define BM_UK_US_STR        @"BM_UK_US"
#define BM_TH_US_STR        @"BM_TH_US"
#define BM_EL_US_STR        @"BM_EL_US"

// Localization native development region(CFBundleDevelopmentRegion)
#define BM_CFBDR_EN_CA      @"en_CA"        // Canada
#define BM_CFBDR_FR_CA      @"fr_CA"        // Canada(French)
#define BM_CFBDR_ZH_CN      @"zh_CN"        // China
#define BM_CFBDR_FR_FR      @"fr_FR"        // France
#define BM_CFBDR_DE_DE      @"de_DE"        // Germany
#define BM_CFBDR_IT_IT      @"it_IT"        // Italy
#define BM_CFBDR_JA_JP      @"ja_JP"        // Japan
#define BM_CFBDR_KO_KR      @"ko_KR"        // Korea
#define BM_CFBDR_ZH_TW      @"zh_TW"        // Taiwan
#define BM_CFBDR_EN_GB      @"en_GB"        // United Kingdom
#define BM_CFBDR_EN_US      @"en_US"        // United States


@interface BMTLayoutConstraintLanguage : NSObject

@property (nonatomic, copy, readonly) NSDictionary *preferredLanguagesDict;

@property (nonatomic, copy, readonly) NSDictionary *defaultLanguagesDict;

- (NSString *)getLayoutConstraintDeviceLanguageWithName:(NSString *)languageName;

- (NSString *)getLayoutConstraintDefaultDeviceLanguage;

@end
