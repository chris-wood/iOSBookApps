//
//  cawcode_BLViewController.h
//  Whereami
//
//  Created by Christopher Wood on 11/19/12.
//  Copyright (c) 2012 CAWCODE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

// We can be the delegate for n >= 1 classes, just specify them in a CSL inside the angle brackets
@interface cawcode_BLViewController : UIViewController <CLLocationManagerDelegate>
{
	CLLocationManager *locationManager;
}

// - (void)doSomething; // playing around with exceptions

@end
