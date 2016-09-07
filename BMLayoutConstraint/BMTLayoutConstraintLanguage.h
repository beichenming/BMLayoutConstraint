/**
 * Copyright (c) 2016, BCM
 * All rights reserved
 * Author: beichenming
 */

#import <UIKit/UIKit.h>

#define BM_SYSTEM_VERSION [[UIDevice currentDevice] systemVersion].floatValue

#define BM_EN_US_8_0        @"en"         // English
#define BM_EN_US_9_0        @"en-US"
#define BM_ZH_HANS_US_8_0   @"zh-Hans"    // Chinese simplified
#define BM_ZH_HANS_US_9_0   @"zh-Hans-US"
#define BM_ZH_HANT_US_8_0   @"zh-Hant"    // Chinese Traditional
#define BM_ZH_HANT_US_9_0   @"zh-Hant-US"
#define BM_JA_US_8_0        @"ja"         // Japanese
#define BM_JA_US_9_0        @"ja-US"
#define BM_ZH_HK_8_0        @"zh-HK"      // Chinese Traditional(Hong Kong)
#define BM_ZH_HK_9_0        @"zh-HK"
#define BM_ZH_TW_8_0        @"zh-Hant"    // Chinese Traditional (TaiWan)
#define BM_ZH_TW_9_0        @"zh-TW"      
#define BM_EN_CA_8_0        @"en-CA"      // English (Canada)
#define BM_EN_CA_9_0        @"en-CA"
#define BM_EN_US_1_8_0      @"en-US"      // English (US)
#define BM_EN_US_1_9_0      @"en-US"
#define BM_EN_AU_8_0        @"en-AU"      // English (Australia)
#define BM_EN_AU_9_0        @"en-AU"
#define BM_EN_IN_8_0        @"en-IN"      // English (India)
#define BM_EN_IN_9_0        @"en-IN"
#define BM_EN_GB_8_0        @"en-GB"      // English (U.K)
#define BM_EN_GB_9_0        @"en-GB"
#define BM_FR_US_8_0        @"fr"         // French
#define BM_FR_US_9_0        @"fr-US"
#define BM_KO_US_8_0        @"ko"         // Korean
#define BM_KO_US_9_0        @"ko-US"
#define BM_ES_419_8_0       @"es-419"     // Spanish (Latin America)
#define BM_ES_419_9_0       @"es-419"
#define BM_DE_US_8_0        @"de"         // German
#define BM_DE_US_9_0        @"de-US"
#define BM_DE_DE_8_0        @"de"         // German (Germany)
#define BM_DE_DE_9_0        @"de-DE"
#define BM_FR_CA_8_0        @"fr-CA"      // French (Canada)
#define BM_FR_CA_9_0        @"fr-CA"
#define BM_NL_US_8_0        @"nl"         // Dutch
#define BM_NL_US_9_0        @"nl-US"
#define BM_IT_US_8_0        @"it"         // Italian
#define BM_IT_US_9_0        @"it-US"
#define BM_ES_US_8_0        @"es"         // Spanish
#define BM_ES_US_9_0        @"es-US"
#define BM_DA_US_8_0        @"da"         // Danish
#define BM_DA_US_9_0        @"da-US"
#define BM_FI_US_8_0        @"fi"         // Finnish
#define BM_FI_US_9_0        @"fi-US"
#define BM_SV_US_8_0        @"sv"         // Swedish
#define BM_SV_US_9_0        @"sv-US"
#define BM_RU_US_8_0        @"ru"         // Russian
#define BM_RU_US_9_0        @"ru-US"
#define BM_PL_US_8_0        @"pl"         // Polish
#define BM_PL_US_9_0        @"pl-US"
#define BM_TR_US_8_0        @"tr"         // Turkish
#define BM_TR_US_9_0        @"tr-US"
#define BM_DE_AT_8_0        @"de-AT"      // German (Austria)
#define BM_DE_AT_9_0        @"de-AT"
#define BM_DE_CH_8_0        @"de-CH"      // German (Switzerland)
#define BM_DE_CH_9_0        @"de-CH"
#define BM_FR_FR_8_0        @"fr"         // French (France)
#define BM_FR_FR_9_0        @"fr-FR"
#define BM_FR_CH_8_0        @"fr-CH"      // French (Switzerland)
#define BM_FR_CH_9_0        @"fr-CH"
#define BM_HU_US_8_0        @"hu"         // Hungarian
#define BM_HU_US_9_0        @"hu-US"
#define BM_CS_US_8_0        @"cs"         // Czech
#define BM_CS_US_9_0        @"cs-US"
#define BM_UK_US_8_0        @"uk"         // Ukrainian
#define BM_UK_US_9_0        @"uk-US"
#define BM_TH_US_8_0        @"th"         // Thai
#define BM_TH_US_9_0        @"th-US"
#define BM_EL_US_8_0        @"el"         // Greek
#define BM_EL_US_9_0        @"el-US"      

// layout constraint id ending
#define BM_BASE_STR         @"BM_BASE"
#define BM_EN_US_STR        @"BM_EN_US"
#define BM_ZH_HANS_US_STR   @"BM_ZH_HANS_US"
#define BM_ZH_HANT_US_STR   @"BM_ZH_HANT_US"
#define BM_JA_US_STR        @"BM_JA_US"
#define BM_ZH_HK_STR        @"BM_ZH_HK"
#define BM_ZH_TW_STR        @"BM_ZH_TW"
#define BM_EN_CA_STR        @"BM_EN_CA"
#define BM_EN_US_1_STR      @"BM_EN_US_1"
#define BM_EN_AU_STR        @"BM_EN_AU"
#define BM_EN_IN_STR        @"BM_EN_IN"
#define BM_EN_GB_STR        @"BM_EN_GB"
#define BM_FR_US_STR        @"BM_FR_US"
#define BM_KO_US_STR        @"BM_KO_US"
#define BM_ES_419_STR       @"BM_ES_419"
#define BM_DE_US_STR        @"BM_DE_US"
#define BM_DE_DE_STR        @"BM_DE_DE"
#define BM_FR_CA_STR        @"BM_FR_CA"
#define BM_NL_US_STR        @"BM_NL_US"
#define BM_IT_US_STR        @"BM_IT_US"
#define BM_ES_US_STR        @"BM_ES_US"
#define BM_DA_US_STR        @"BM_DA_US"
#define BM_FI_US_STR        @"BM_FI_US"
#define BM_SV_US_STR        @"BM_SV_US"
#define BM_RU_US_STR        @"BM_RU_US"
#define BM_PL_US_STR        @"BM_PL_US"
#define BM_TR_US_STR        @"BM_TR_US"
#define BM_DE_AT_STR        @"BM_DE_AT"
#define BM_DE_CH_STR        @"BM_DE_CH"
#define BM_FR_FR_STR        @"BM_FR_FR"
#define BM_FR_CH_STR        @"BM_FR_CH"
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

- (NSString *)getLayoutConstraintDefaultDeviceLanguage;

@end
