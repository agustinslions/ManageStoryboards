//
//  SL_HomeViewController.m
//  ManageStoryboards
//
//  Created by Agustin De Leon on 6/2/17.
//  Copyright © 2017 Agustin De Leon. All rights reserved.
//

#import "SL_HomeViewController.h"
#import "SL_AboutViewController.h"
#import "SL_SettingsViewController.h"
#import "SL_ProductListViewController.h"
#import "SL_RestaurantsListViewController.h"

#import "SLStoryboardController+SLExtensionExample.h"

@interface SL_HomeViewController ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topLayoutConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomLayoutConstraint;

@end

@implementation SL_HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self animateLabels];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)animateLabels
{
    [UIView animateWithDuration:0
                     animations:^{
                         self.topLayoutConstraint.constant = -200;
                         self.bottomLayoutConstraint.constant = -50;
                         [self.view layoutIfNeeded];
                     } completion:^(BOOL finished) {
                         [UIView animateWithDuration:2 animations:^{
                             self.topLayoutConstraint.constant = 60;
                             self.bottomLayoutConstraint.constant = 0;
                             [self.view layoutIfNeeded];
                         }];
                     }];
}

- (IBAction)settingsAction:(id)sender
{
    SL_SettingsViewController *settingsViewController = (SL_SettingsViewController *)[SLStoryboardController fromSettingsStoryboardVCWithName:@"SLSettingStoryboardID"];
    [self.navigationController pushViewController:settingsViewController animated:YES];
}

- (IBAction)restaurantAction:(id)sender
{
    SL_RestaurantsListViewController *restListViewController = (SL_RestaurantsListViewController *)[SLStoryboardController fromRestaurantStoryboardVCWithName:@"SLRestaurantListStoryboardID"];
    [self.navigationController pushViewController:restListViewController animated:YES];
}

- (IBAction)productAction:(id)sender
{
    SL_ProductListViewController *productViewController = (SL_ProductListViewController *)[SLStoryboardController fromProductStoryboardVCWithName:@"SLProductListStoryboardID"];
    [self.navigationController pushViewController:productViewController animated:YES];
}

- (IBAction)aboutThisAction:(id)sender
{
    SL_AboutViewController *aboutViewController = (SL_AboutViewController *)[SLStoryboardController fromAboutStoryboardVCWithName:@"SLAboutStoryboardID"];
    [self.navigationController pushViewController:aboutViewController animated:YES];
}

@end
