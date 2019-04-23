//
//  ViewController.m
//  Hello Zendesk
//
//  Created by Ozay Demirezen on 23/04/2019.
//  Copyright © 2019 Ozay Demirezen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [NSTimer scheduledTimerWithTimeInterval:1.0
                                     target:self
                                   selector:@selector(tickOne)
                                   userInfo:nil
                                    repeats:YES];
}
- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (IBAction)startClicked:(id)sender {
    [self startGame];
}

- (void)startGame
{
    self.pushButton.hidden=NO;
    self.counterLabel.hidden=NO;
    self.remainingTimeLabel.hidden=NO;
    self.startButton.hidden=YES;
    self.gameOverLabel.hidden = YES;
    self.remainingTimeLabel.text = @"Remaining Time: 10 Secs";
    self.counterLabel.text=@"0";
    self.counter = 0;
    self.timerTick = 10;
    self.isGame = YES;
    
}

- (IBAction)pushCounter:(id)sender {
    [self countOne];
}
- (void)countOne
{
    self.counter++;
    self.counterLabel.text = [NSString stringWithFormat:@"%d",self.counter];
    
}

- (void)tickOne
{
    if (!self.isGame)
        return;
    self.timerTick--;
    self.remainingTimeLabel.text =[NSString stringWithFormat: @"Remaining Time: %d Secs", self.timerTick];
    if (self.timerTick <= 0)
        [self finishGame];
}

- (void)finishGame
{
    self.gameOverLabel.hidden = NO;
    self.pushButton.hidden=YES;
    self.counterLabel.hidden=YES;
    self.remainingTimeLabel.hidden=YES;
    self.startButton.hidden = NO;
    self.isGame = NO;
}




@end
