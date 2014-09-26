//
//  CRViewController.m
//  CanRemind
//
//  Created by Joshua Howland on 6/5/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "CRViewController.h"

@interface CRViewController ()

@property (strong, nonatomic) IBOutlet UIButton *scheduleReminder;
@end

@implementation CRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)scheduleReminder:(id)sender{
    
    NSDate *date = [[NSDate date] dateByAddingTimeInterval:10];
    
    UILocalNotification *notification = [[UILocalNotification alloc] init];
    
    notification.fireDate = date;
    notification.timeZone = [NSTimeZone defaultTimeZone];
    notification.repeatInterval = 0;
    notification.soundName = @"bell_tree.mp3";
    notification.applicationIconBadgeNumber = 1;
    
    notification.alertBody = @"Hey Heres a local notification";
    
    //[[UIApplication sharedApplication] scheduledLocalNotification:LocalNotification];
   //[[UIApplication sharedApplication] scheduledLocalNotification:LocalNotification];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
