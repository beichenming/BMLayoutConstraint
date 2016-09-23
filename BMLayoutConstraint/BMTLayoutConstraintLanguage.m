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
                               // Chinese simplified
                               BM_ZH_HANS_US_STR, @"zh-Hans",
                               // Chinese Traditional
                               BM_ZH_HANT_US_STR, @"zh-Hant",
                               // Japanese
                               BM_JA_US_STR, @"ja",
                               // Chinese Traditional(Hong Kong)
                               BM_ZH_HK_STR, @"zh-HK",
                               // Chinese Traditional (TaiWan)
                               BM_ZH_TW_STR, @"zh-Hant",
                               BM_ZH_TW_STR, @"zh-TW",
                               // French
                               BM_FR_US_STR, @"fr",
                               // Korean
                               BM_KO_US_STR, @"ko",
                               // German
                               BM_DE_US_STR, @"de",
                               // Dutch
                               BM_NL_US_STR, @"nl",
                               // Italian
                               BM_IT_US_STR, @"it",
                               // Spanish
                               BM_ES_US_STR, @"es",
                               // Danish
                               BM_DA_US_STR, @"da",
                               // Finnish
                               BM_FI_US_STR, @"fi",
                               // Swedish
                               BM_SV_US_STR, @"sv",
                               // Russian
                               BM_RU_US_STR, @"ru",
                               // Polish
                               BM_PL_US_STR, @"pl",
                               // Turkish
                               BM_TR_US_STR, @"tr",
                               // French (France)
                               BM_FR_FR_STR, @"fr",
                               // Hungarian
                               BM_HU_US_STR, @"hu",
                               // Czech
                               BM_CS_US_STR, @"cs",
                               // Ukrainian
                               BM_UK_US_STR, @"uk",
                               // Thai
                               BM_TH_US_STR, @"th",
                               // Greek
                               BM_EL_US_STR, @"el",
                               nil];

    _defaultLanguagesDict = [NSDictionary dictionaryWithObjectsAndKeys:
                               BM_EN_US_STR, BM_CFBDR_EN_CA,
                               BM_FR_US_STR, BM_CFBDR_FR_CA,
                               BM_ZH_HANS_US_STR, BM_CFBDR_ZH_CN,
                               BM_FR_FR_STR, BM_CFBDR_FR_FR,
                               BM_DE_US_STR, BM_CFBDR_DE_DE,
                               BM_IT_US_STR, BM_CFBDR_IT_IT,
                               BM_JA_US_STR, BM_CFBDR_JA_JP,
                               BM_KO_US_STR, BM_CFBDR_KO_KR,
                               BM_ZH_TW_STR, BM_CFBDR_ZH_TW,
                               BM_EN_US_STR, BM_CFBDR_EN_GB,
                               BM_EN_US_STR, BM_CFBDR_EN_US,
                               nil];

  }
  return self;
}

- (NSString *)getLayoutConstraintDeviceLanguageWithName:(NSString *)languageName {
    for (NSString *key in self.preferredLanguagesDict) {
        if ([languageName containsString:key]) {
            return [self.preferredLanguagesDict objectForKey:key];
        }
    }
    return [self getLayoutConstraintDefaultDeviceLanguage];
}

- (NSString *)getLayoutConstraintDefaultDeviceLanguage {
  return BM_BASE_STR;
}

@end
