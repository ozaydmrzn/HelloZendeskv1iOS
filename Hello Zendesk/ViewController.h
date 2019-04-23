//
//  ViewController.h
//  Hello Zendesk
//
//  Created by Ozay Demirezen on 23/04/2019.
//  Copyright © 2019 Ozay Demirezen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *startButton;

@property (weak, nonatomic) IBOutlet UIButton *pushButton;

@property (weak, nonatomic) IBOutlet UILabel *remainingTimeLabel;

@property (weak, nonatomic) IBOutlet UILabel *counterLabel;

@property (weak, nonatomic) IBOutlet UILabel *gameOverLabel;


@property int counter;
@property int timerTick;
@property BOOL isGame;


@end

