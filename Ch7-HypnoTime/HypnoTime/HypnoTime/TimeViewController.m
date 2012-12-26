//
//  TimeViewController.m
//  HypnoTime
//
//  Created by Christopher Wood on 12/25/12.
//  Copyright (c) 2012 CAWCODE. All rights reserved.
//

#import "TimeViewController.h"

@implementation TimeViewController

- (void) viewDidLoad
{
	// Always call the parent method so we don't mess anything up on accident
	[super viewDidLoad];
	NSLog(@"TimeViewController view was loaded.");
	
	// Change the background color
	[[self view] setBackgroundColor:[UIColor greenColor]];
}

// not even really needed... since the subviews are weak by default (?)
/*
- (void) viewDidUnload
{
	[super viewDidUnload]; // never called in iOS 6.0
//	NSLog(@"TimeViewController view unloaded... but this is never called in iOS 6.0");
//	timeLabel = nil; // set to nil so it's collected
	NSLog(@"timeLabel = %@", timeLabel);
}
 */

- (void) viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
	NSLog(@"TimeViewController view appeared");
	[self showCurrentTime:nil];
}

- (void)viewDidDisappear:(BOOL)animated
{
	NSLog(@"TimeViewController view disappeared...");
	[super viewDidDisappear:animated];
}

- (IBAction)showCurrentTime:(id)sender
{
	NSDate *now = [NSDate date];
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	[formatter setTimeStyle:NSDateFormatterMediumStyle];
	[timeLabel setText:[formatter stringFromDate:now]];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	// Call the superclass's designated initializer
//	self = [super initWithNibName:nil bundle:nil];
	
	// Get a pointer to the app bundle, and use it to initialize the view controller
	NSBundle *bundle = [NSBundle mainBundle];
	self = [super initWithNibName:@"TimeViewController" bundle:bundle];
	
	if (self)
	{
		// Get the tab bar item
		UITabBarItem *tbi = [self tabBarItem];
		
		// Give it a label
		[tbi setTitle:@"Time"];
		
		// Set the image
		UIImage *i = [UIImage imageNamed:@"Time"];
		[tbi setImage:i];
		
		// NOTE: NEVER SET ANY PROPERTIES OF view IN THIS METHOD, ONLY IN viewDidLoad
	}
	return self;
}

@end
