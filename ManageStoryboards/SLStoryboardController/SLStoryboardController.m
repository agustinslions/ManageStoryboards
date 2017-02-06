//
//  SLStoryboardController.m
//  ManageStoryboards
//
//  Created by Agustin De Leon on 18/11/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "SLStoryboardController.h"

@implementation SLStoryboardController

+ (SLStoryboardController *)sharedInstance
{
    static SLStoryboardController * instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [SLStoryboardController new];
    });
    
    return instance;
}

- (UIStoryboard *)getStoryBoardForName:(NSString *)name
{
    return [UIStoryboard storyboardWithName:name bundle:nil];
}

- (UINavigationController *)getNavigationControllerWithName:(NSString *)name withStoryboard:(NSString *)storyboard
{
    return [[self getStoryBoardForName:storyboard] instantiateViewControllerWithIdentifier:name];
}

- (UIViewController *)getViewControllerWithName:(NSString *)name withStoryboard:(NSString *)storyboard
{
    return [[self getStoryBoardForName:storyboard] instantiateViewControllerWithIdentifier:name];
}

@end
