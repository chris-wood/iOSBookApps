//
//  cawcode_BLAppDelegate.h
//  Hypnotiser
//
//  Created by Christopher Wood on 11/21/12.
//  Copyright (c) 2012 CAWCODE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HypnosisView.h"

@interface cawcode_BLAppDelegate : UIResponder <UIApplicationDelegate, UIScrollViewDelegate> // to respond to zoom messages
{
	HypnosisView *view;
}

@property (strong, nonatomic) UIWindow *window;

@end
