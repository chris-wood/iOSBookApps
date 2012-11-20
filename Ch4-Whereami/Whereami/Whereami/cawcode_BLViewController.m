//
//  cawcode_BLViewController.m
//  Whereami
//
//  Created by Christopher Wood on 11/19/12.
//  Copyright (c) 2012 CAWCODE. All rights reserved.
//

#import "cawcode_BLViewController.h"
#import "BNRMapPoint.h"

@interface cawcode_BLViewController ()

@end

@implementation cawcode_BLViewController

- (void)viewDidLoad
{
	[worldView setShowsUserLocation:YES];
	// MapKit view knows how to interface with core location to find
	// the current location, so we can avoid managing our own core location manager
}

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
		//[locationManager startUpdatingLocation]; // NOT NECESSARY
	}
	
	return self;
};

// Called when user enters a location to search for...
- (void)findLocation
{
	[locationManager startUpdatingLocation];
	[activityIndicator startAnimating];
	[textField setHidden:YES];
}

// Called from the location manager delegate function!
- (void)foundLocation:(CLLocation*)location
{
	CLLocationCoordinate2D coord = [location coordinate];
	BNRMapPoint *point = [[BNRMapPoint alloc] initWithCoordinate:coord title:[textField text]];
	[worldView addAnnotation:point];
	
	// Zoom to the location
	MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coord, 250, 500);
	[worldView setRegion:region animated:YES];
	
	// Reset the UI
	[textField setText:@"Enter a new location..."];
	[activityIndicator stopAnimating];
	[textField setHidden:NO];
	[locationManager stopUpdatingLocation];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
	[self findLocation];
	[textField resignFirstResponder]; // give up the keyboard (give up first responder status for text field)
	return YES;
}

// we want to zoom on the map when the user location has been updated... so we conform to the delegate protocol
// and implement this method so we can zoom here
- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
	//MKCoordinateRegion region;
	//region.center = [userLocation coordinate];
	//region.span.latitudeDelta = userLocation.coordinate.latitude;
	//region.span.longitudeDelta = userLocation.coordinate.longitude;
	
	CLLocationCoordinate2D coord = [userLocation coordinate];
	MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coord, 250, 500);
	[worldView setRegion:region animated:YES];
}

// The delegate method to handle location updates from the location manager
- (void)locationManager:(CLLocationManager*)manager
	 didUpdateLocations:(NSArray *)locations { // array of (at least one) locations (last entry is the most recent)
	NSLog(@"%@", [locations objectAtIndex:[locations count] - 1]);
	
	CLLocation *newLoc =[locations objectAtIndex:[locations count] - 1];
	NSTimeInterval t = [[newLoc timestamp] timeIntervalSinceNow];
	if (t < -180) {
		return;
	} else {
		[self foundLocation:newLoc];
	}
}

- (void)dealloc
{
	[locationManager setDelegate:nil];
}

@end
