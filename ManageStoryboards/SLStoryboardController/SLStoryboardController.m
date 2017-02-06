//
//  SLStoryboardController.m
//  ManageStoryboards
//
//  Created by Agustin De Leon on 18/11/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "SLStoryboardController.h"

@implementation SLStoryboardController

+ (UIStoryboard *)getStoryBoardForName:(NSString *)name
{
    return [UIStoryboard storyboardWithName:name bundle:nil];
}

+ (UINavigationController *)getNavigationControllerWithName:(NSString *)name withStoryboard:(NSString *)storyboard
{
    return [[SLStoryboardController getStoryBoardForName:storyboard] instantiateViewControllerWithIdentifier:name];
}

+ (UIViewController *)getViewControllerWithName:(NSString *)name withStoryboard:(NSString *)storyboard
{
    return [[SLStoryboardController getStoryBoardForName:storyboard] instantiateViewControllerWithIdentifier:name];
}

@end
