//
//  SLStoryboardController.h
//  ManageStoryboards
//
//  Created by Agustin De Leon on 18/11/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SLStoryboardController : NSObject

+ (SLStoryboardController *)sharedInstance;

- (UIStoryboard *)getStoryBoardForName:(NSString *)name;

- (UINavigationController *)getNavigationControllerWithName:(NSString *)name withStoryboard:(NSString *)storyboard;

- (UIViewController *)getViewControllerWithName:(NSString *)name withStoryboard:(NSString *)storyboard;

@end
