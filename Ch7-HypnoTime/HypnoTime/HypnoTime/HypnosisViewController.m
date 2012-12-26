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

- (void)loadView
{
	CGRect frame = [[UIScreen mainScreen] bounds];
	HypnosisView* view = [[HypnosisView alloc] initWithFrame:frame];
	
	// Set this view as the view of this controller!
	[self setView:view];
}

@end
