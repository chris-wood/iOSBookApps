//
//  HypnosisViewController.m
//  HypnoTime
//
//  Created by Christopher Wood on 12/25/12.
//  Copyright (c) 2012 CAWCODE. All rights reserved.
//

#import "HypnosisView.h"
#import "HypnosisViewController.h"

@implementation HypnosisViewController

- (void) viewDidLoad
{
	// Always call the parent method so we don't mess anything up on accident
	[super viewDidLoad];
	NSLog(@"HypnosisViewController view was loaded.");
}

- (void)loadView
{
	CGRect frame = [[UIScreen mainScreen] bounds];
	HypnosisView* view = [[HypnosisView alloc] initWithFrame:frame];
	
	// Set this view as the view of this controller!
	[self setView:view];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	// Call the superclass's designated initializer
	self = [super initWithNibName:nil bundle:nil];
	
	if (self)
	{
		// Get the tab bar item
		UITabBarItem *tbi = [self tabBarItem];
		
		//Give it a label
		[tbi setTitle:@"Hypnosis"];
		
		// Set the image
		UIImage *i = [UIImage imageNamed:@"Hypno.png"];
		[tbi setImage:i];
	}
	return self;
}

@end
