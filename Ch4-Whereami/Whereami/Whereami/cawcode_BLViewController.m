//
//  cawcode_BLViewController.m
//  Whereami
//
//  Created by Christopher Wood on 11/19/12.
//  Copyright (c) 2012 CAWCODE. All rights reserved.
//

#import "cawcode_BLViewController.h"

@interface cawcode_BLViewController ()

@end

@implementation cawcode_BLViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	if (self)
	{
		// Create the location manager
		locationManager = [[CLLocationManager alloc] init];
		
		// Set the desired accuracy
		[locationManager setDesiredAccuracy:kCLLocationAccuracyBest]; // probably an enum
		[locationManager setDistanceFilter:50.0]; // only update when we have moved 50.0m from the last record distance
		
		// Set ourselves as the delegate for the location manager
		[locationManager setDelegate:self];
		
		//[self doSomething]; // if we uncomment this, it will cause a breakpoint to be inserted right here - the exception throwing code
		
		// Tell the manager to start looking for the location immediately
		[locationManager startUpdatingLocation];
	}
	
	return self;
};

// The delegate method to handle location updates from the location manager
- (void)locationManager:(CLLocationManager*)manager
	 didUpdateLocations:(NSArray *)locations { // array of (at least one) locations (last entry is the most recent)
	NSLog(@"%@", [locations objectAtIndex:[locations count] - 1]);
}

- (void)dealloc
{
	[locationManager setDelegate:nil];
}

@end
