//
//  GameZendeskViewController.m
//  Hello Zendesk
//
//  Created by Ozay Demirezen on 23/04/2019.
//  Copyright © 2019 Ozay Demirezen. All rights reserved.
//

#import "GameZendeskViewController.h"

@interface GameZendeskViewController ()

@end

@implementation GameZendeskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
       [self.navigationController setNavigationBarHidden:NO animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)helpCenterPush:(id)sender {
    UIViewController *helpCenter = [ZDKHelpCenterUi buildHelpCenterOverviewUiWithConfigs:@[]];
    [self.navigationController pushViewController:helpCenter animated:YES];
}
- (IBAction)contactUs:(id)sender {
    ZDKCustomField *customFieldOne = [[ZDKCustomField alloc] initWithFieldId:@1234567 andValue:@"some_value"];
    ZDKRequestUiConfiguration * config = [ZDKRequestUiConfiguration new];
    config.subject = @"iOS Ticket";
    config.tags = @[@"ios", @"mobile"];
    config.fields = @[customFieldOne];
    UIViewController *requestController = [ZDKRequestUi buildRequestUiWith:@[config]];
    [self.navigationController pushViewController:requestController animated:YES];
}
- (IBAction)myRequests:(id)sender {
    UIViewController *requestListController = [ZDKRequestUi buildRequestList];
    [self.navigationController pushViewController:requestListController animated:YES];
}

- (IBAction)chatNow:(id)sender {
    [ZDCChat startChatIn:self.navigationController withConfig:^(ZDCConfig *config) {
        config.department = @"Gaming";
        config.preChatDataRequirements.email = ZDCPreChatDataRequired;

    }];
}
    

@end
