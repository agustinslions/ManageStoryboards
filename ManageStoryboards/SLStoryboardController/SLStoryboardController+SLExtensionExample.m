//
//  SLStoryboardController+SLExtensionExample.m
//  ManageStoryboards
//
//  Created by Agustin De Leon on 6/2/17.
//  Copyright © 2017 Agustin De Leon. All rights reserved.
//

#import "SLStoryboardController+SLExtensionExample.h"

@implementation SLStoryboardController (SLExtensionExample)

+ (UIViewController *)fromMainStoryboardVCWithName:(NSString *)name
{
    return [SLStoryboardController getViewControllerWithName:name
                                              withStoryboard:kMainStoryboard];
}

+ (UIViewController *)fromProductStoryboardVCWithName:(NSString *)name
{
    return [SLStoryboardController getViewControllerWithName:name
                                              withStoryboard:kProductsScreensStoryboard];
}

+ (UIViewController *)fromSettingsStoryboardVCWithName:(NSString *)name
{
    return [SLStoryboardController getViewControllerWithName:name
                                              withStoryboard:kSettingsScreenStoryboard];
}

+ (UIViewController *)fromOnboardingStoryboardVCWithName:(NSString *)name
{
    return [SLStoryboardController getViewControllerWithName:name
                                              withStoryboard:kOnboardingScreenStoryboard];
}

+ (UIViewController *)fromCreateRestoStoryboardVCWithName:(NSString *)name
{
    return [SLStoryboardController getViewControllerWithName:name
                                              withStoryboard:kCreateRestoStoryboard];
}

+ (UIViewController *)fromRestaurantStoryboardVCWithName:(NSString *)name
{
    return [SLStoryboardController getViewControllerWithName:name
                                              withStoryboard:kRestaurantScreenStoryboard];
}

@end
