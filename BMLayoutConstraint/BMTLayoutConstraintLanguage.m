/**
 * Copyright (c) 2016, BCM
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
    if (BM_SYSTEM_VERSION >= 9.0) {
      _preferredLanguagesDict = [NSDictionary dictionaryWithObjectsAndKeys:
                                   BM_EN_US_STR, BM_EN_US_9_0,
                                   BM_ZH_HANS_US_STR, BM_ZH_HANS_US_9_0,
                                   BM_ZH_HANT_US_STR, BM_ZH_HANT_US_9_0,
                                   BM_JA_US_STR, BM_JA_US_9_0,
                                   BM_ZH_HK_STR, BM_ZH_HK_9_0,
                                   BM_ZH_TW_STR, BM_ZH_TW_9_0,
                                   BM_EN_CA_STR, BM_EN_CA_9_0,
                                   BM_EN_US_1_STR, BM_EN_US_1_9_0,
                                   BM_EN_AU_STR, BM_EN_AU_9_0,
                                   BM_EN_IN_STR, BM_EN_IN_9_0,
                                   BM_EN_GB_STR, BM_EN_GB_9_0,
                                   BM_FR_US_STR, BM_FR_US_9_0,
                                   BM_KO_US_STR, BM_KO_US_9_0,
                                   BM_ES_419_STR, BM_ES_419_9_0,
                                   BM_DE_US_STR, BM_DE_US_9_0,
                                   BM_DE_DE_STR, BM_DE_DE_9_0,
                                   BM_FR_CA_STR, BM_FR_CA_9_0,
                                   BM_NL_US_STR, BM_NL_US_9_0,
                                   BM_IT_US_STR, BM_IT_US_9_0,
                                   BM_ES_US_STR, BM_ES_US_9_0,
                                   BM_DA_US_STR, BM_DA_US_9_0,
                                   BM_FI_US_STR, BM_FI_US_9_0,
                                   BM_SV_US_STR, BM_SV_US_9_0,
                                   BM_RU_US_STR, BM_RU_US_9_0,
                                   BM_PL_US_STR, BM_PL_US_9_0,
                                   BM_TR_US_STR, BM_TR_US_9_0,
                                   BM_DE_AT_STR, BM_DE_AT_9_0,
                                   BM_DE_CH_STR, BM_DE_CH_9_0,
                                   BM_FR_FR_STR, BM_FR_FR_9_0,
                                   BM_FR_CH_STR, BM_FR_CH_9_0,
                                   BM_HU_US_STR, BM_HU_US_9_0,
                                   BM_CS_US_STR, BM_CS_US_9_0,
                                   BM_UK_US_STR, BM_UK_US_9_0,
                                   BM_TH_US_STR, BM_TH_US_9_0,
                                   BM_EL_US_STR, BM_EL_US_9_0,
                                   nil];
    } else {
      _preferredLanguagesDict = [NSDictionary dictionaryWithObjectsAndKeys:
                                   BM_EN_US_STR, BM_EN_US_8_0,
                                   BM_ZH_HANS_US_STR, BM_ZH_HANS_US_8_0,
                                   BM_ZH_HANT_US_STR, BM_ZH_HANT_US_8_0,
                                   BM_JA_US_STR, BM_JA_US_8_0,
                                   BM_ZH_HK_STR, BM_ZH_HK_8_0,
                                   BM_ZH_TW_STR, BM_ZH_TW_8_0,
                                   BM_EN_CA_STR, BM_EN_CA_8_0,
                                   BM_EN_US_1_STR, BM_EN_US_1_8_0,
                                   BM_EN_AU_STR, BM_EN_AU_8_0,
                                   BM_EN_IN_STR, BM_EN_IN_8_0,
                                   BM_EN_GB_STR, BM_EN_GB_8_0,
                                   BM_FR_US_STR, BM_FR_US_8_0,
                                   BM_KO_US_STR, BM_KO_US_8_0,
                                   BM_ES_419_STR, BM_ES_419_8_0,
                                   BM_DE_US_STR, BM_DE_US_8_0,
                                   BM_DE_DE_STR, BM_DE_DE_8_0,
                                   BM_FR_CA_STR, BM_FR_CA_8_0,
                                   BM_NL_US_STR, BM_NL_US_8_0,
                                   BM_IT_US_STR, BM_IT_US_8_0,
                                   BM_ES_US_STR, BM_ES_US_8_0,
                                   BM_DA_US_STR, BM_DA_US_8_0,
                                   BM_FI_US_STR, BM_FI_US_8_0,
                                   BM_SV_US_STR, BM_SV_US_8_0,
                                   BM_RU_US_STR, BM_RU_US_8_0,
                                   BM_PL_US_STR, BM_PL_US_8_0,
                                   BM_TR_US_STR, BM_TR_US_8_0,
                                   BM_DE_AT_STR, BM_DE_AT_8_0,
                                   BM_DE_CH_STR, BM_DE_CH_8_0,
                                   BM_FR_FR_STR, BM_FR_FR_8_0,
                                   BM_FR_CH_STR, BM_FR_CH_8_0,
                                   BM_HU_US_STR, BM_HU_US_8_0,
                                   BM_CS_US_STR, BM_CS_US_8_0,
                                   BM_UK_US_STR, BM_UK_US_8_0,
                                   BM_TH_US_STR, BM_TH_US_8_0,
                                   BM_EL_US_STR, BM_EL_US_8_0,
                                   nil];
    }
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

@end
