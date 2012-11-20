//
//  cawcode_BLViewController.h
//  Whereami
//
//  Created by Christopher Wood on 11/19/12.
//  Copyright (c) 2012 CAWCODE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

// We can be the delegate for n >= 1 classes, just specify them in a CSL inside the angle brackets
@interface cawcode_BLViewController : UIViewController
	<CLLocationManagerDelegate, MKMapViewDelegate, UITextFieldDelegate>
{
	CLLocationManager *locationManager;
	
	// there are outlets so we can actually access them!
	IBOutlet MKMapView *worldView; // map
	IBOutlet UITextField *textField; // text field for location
	IBOutlet UIActivityIndicatorView *activityIndicator; // spinner
}

// - (void)doSomething; // playing around with exceptions
- (void)findLocation;
- (void)foundLocation:(CLLocation*)location;

@end
