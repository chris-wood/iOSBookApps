//
//  TimeViewController.m
//  HypnoTime
//
//  Created by Christopher Wood on 12/25/12.
//  Copyright (c) 2012 CAWCODE. All rights reserved.
//

#import "TimeViewController.h"

@implementation TimeViewController

- (IBAction)showCurrentTime:(id)sender
{
	NSDate *now = [NSDate date];
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	[formatter setTimeStyle:NSDateFormatterMediumStyle];
	[timeLabel setText:[formatter stringFromDate:now]];
}

@end
