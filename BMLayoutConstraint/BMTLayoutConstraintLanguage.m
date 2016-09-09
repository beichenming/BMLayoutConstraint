/**
 * Copyright (c) 2016, Bongmi
 * All rights reserved
 * Author: beichenming
 */

#import "BMTLayoutConstraintLanguage.h"

@interface BMTLayoutConstraintLanguage()

@property (nonatomic, copy, readwrite) NSDictionary *preferredLanguagesDict;

@property (nonatomic, copy, readwrite) NSDictionary *defaultLanguagesDict;

@end

@implementation BMTLayoutConstraintLanguage

- (instancetype)init {
  if (self = [super init]) {
  _preferredLanguagesDict = [NSDictionary dictionaryWithObjectsAndKeys:
                               // English
                               BM_EN_US_STR, @"en",
                               BM_EN_US_STR, @"en-US",
                               // Chinese simplified
                               BM_ZH_HANS_US_STR, @"zh-Hans",
                               BM_ZH_HANS_US_STR, @"zh-Hans-US",
                               // Chinese Traditional
                               BM_ZH_HANT_US_STR, @"zh-Hant",
                               BM_ZH_HANT_US_STR, @"zh-Hant-US",
                               // Japanese
                               BM_JA_US_STR, @"ja",
                               BM_JA_US_STR, @"ja-US",
                               // Chinese Traditional(Hong Kong)
                               BM_ZH_HK_STR, @"zh-HK",
                               // Chinese Traditional (TaiWan)
                               BM_ZH_TW_STR, @"zh-Hant",
                               BM_ZH_TW_STR, @"zh-TW",
                               // English (Canada)
                               BM_EN_CA_STR, @"en-CA",
                               // English (US)
                               BM_EN_US_1_STR, @"en-US",
                               // English (Australia)
                               BM_EN_AU_STR, @"en-AU",
                               // English (India)
                               BM_EN_IN_STR, @"en-IN",
                               // English (U.K)
                               BM_EN_GB_STR, @"en-GB",
                               // French
                               BM_FR_US_STR, @"fr",
                               BM_FR_US_STR, @"fr-US",
                               // Korean
                               BM_KO_US_STR, @"ko",
                               BM_KO_US_STR, @"ko-US",
                               // Spanish (Latin America)
                               BM_ES_419_STR, @"es-419",
                               // German
                               BM_DE_US_STR, @"de",
                               BM_DE_US_STR, @"de-US",
                               // German (Germany)
                               BM_DE_DE_STR, @"de",
                               BM_DE_DE_STR, @"de-DE",
                               // French (Canada)
                               BM_FR_CA_STR, @"fr-CA",
                               // Dutch
                               BM_NL_US_STR, @"nl",
                               BM_NL_US_STR, @"nl-US",
                               // Italian
                               BM_IT_US_STR, @"it",
                               BM_IT_US_STR, @"it-US",
                               // Spanish
                               BM_ES_US_STR, @"es",
                               BM_ES_US_STR, @"es-US",
                               // Danish
                               BM_DA_US_STR, @"da",
                               BM_DA_US_STR, @"da-US",
                               // Finnish
                               BM_FI_US_STR, @"fi",
                               BM_FI_US_STR, @"fi-US",
                               // Swedish
                               BM_SV_US_STR, @"sv",
                               BM_SV_US_STR, @"sv-US",
                               // Russian
                               BM_RU_US_STR, @"ru",
                               BM_RU_US_STR, @"ru-US",
                               // Polish
                               BM_PL_US_STR, @"pl",
                               BM_PL_US_STR, @"pl-US",
                               // Turkish
                               BM_TR_US_STR, @"tr",
                               BM_TR_US_STR, @"tr-US",
                               // German (Austria)
                               BM_DE_AT_STR, @"de-AT",
                               // German (Switzerland)
                               BM_DE_CH_STR, @"de-CH",
                               // French (France)
                               BM_FR_FR_STR, @"fr",
                               BM_FR_FR_STR, @"fr-FR",
                               // French (Switzerland)
                               BM_FR_CH_STR, @"fr-CH",
                               // Hungarian
                               BM_HU_US_STR, @"hu",
                               BM_HU_US_STR, @"hu-US",
                               // Czech
                               BM_CS_US_STR, @"cs",
                               BM_CS_US_STR, @"cs-US",
                               // Ukrainian
                               BM_UK_US_STR, @"uk",
                               BM_UK_US_STR, @"uk-US",
                               // Thai
                               BM_TH_US_STR, @"th",
                               BM_TH_US_STR, @"th-US",
                               // Greek
                               BM_EL_US_STR, @"el",
                               BM_EL_US_STR, @"el-US",
                               nil];

    _defaultLanguagesDict = [NSDictionary dictionaryWithObjectsAndKeys:
                               BM_EN_CA_STR, BM_CFBDR_EN_CA,
                               BM_FR_CA_STR, BM_CFBDR_FR_CA,
                               BM_ZH_HANS_US_STR, BM_CFBDR_ZH_CN,
                               BM_FR_FR_STR, BM_CFBDR_FR_FR,
                               BM_DE_DE_STR, BM_CFBDR_DE_DE,
                               BM_IT_US_STR, BM_CFBDR_IT_IT,
                               BM_JA_US_STR, BM_CFBDR_JA_JP,
                               BM_KO_US_STR, BM_CFBDR_KO_KR,
                               BM_ZH_TW_STR, BM_CFBDR_ZH_TW,
                               BM_EN_GB_STR, BM_CFBDR_EN_GB,
                               BM_EN_US_STR, BM_CFBDR_EN_US,
                               nil];

  }
  return self;
}

- (NSString *)getLayoutConstraintDefaultDeviceLanguage {
  return BM_BASE_STR;
}

@end
