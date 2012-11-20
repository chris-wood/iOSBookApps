//
//  BNRMapPoint.m
//  Whereami
//
//  Created by Christopher Wood on 11/20/12.
//  Copyright (c) 2012 CAWCODE. All rights reserved.
//

#import "BNRMapPoint.h"

@implementation BNRMapPoint

// Instantiate the properties declared in the interface
@synthesize coordinate, title;

// OVERRIDE THE DESIGNATED INITIALIZER HERE
- (id)init
{
	// curry over to the designated constructor...
	return [self initWithCoordinate:CLLocationCoordinate2DMake(43, 43) title:@"Blank"];
}

// THIS IS THE DESIGNATED INITIALIZER
- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t
{
	self = [super init];
	if (self)
	{
		coordinate = c;
		[self setTitle:t];
	}
	return self;
}

@end
