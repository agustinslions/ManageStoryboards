//
//  SLStoryboardController+SLExtensionExample.h
//  ManageStoryboards
//
//  Created by Agustin De Leon on 6/2/17.
//  Copyright © 2017 Agustin De Leon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SLStoryboardController.h"

#define kMainStoryboard                 @"Main"
#define kProductsScreensStoryboard      @"Products_Screens"
#define kSettingsScreenStoryboard       @"Settings_Screen"
#define kOnboardingScreenStoryboard     @"Onboarding_Screens"
#define kCreateRestoStoryboard          @"CreateRestaurants_Screens"
#define kRestaurantScreenStoryboard     @"Restaurants_Screen"

@interface SLStoryboardController (SLExtensionExample)

+ (UIViewController *)fromMainStoryboardVCWithName:(NSString *)name;

+ (UIViewController *)fromProductStoryboardVCWithName:(NSString *)name;

+ (UIViewController *)fromSettingsStoryboardVCWithName:(NSString *)name;

+ (UIViewController *)fromOnboardingStoryboardVCWithName:(NSString *)name;

+ (UIViewController *)fromCreateRestoStoryboardVCWithName:(NSString *)name;

+ (UIViewController *)fromRestaurantStoryboardVCWithName:(NSString *)name;

@end
