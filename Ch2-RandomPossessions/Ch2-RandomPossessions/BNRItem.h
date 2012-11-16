//
//  BNRItem.h
//  Ch2-RandomPossessions
//
//  Created by Christopher Wood on 11/16/12.
//  Copyright (c) 2012 CAWCODE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
	NSString *item;
	NSString *serialNumber;
	int valueInDollars;
	NSDate *dateCreated;
}

// By convention (or is it required?) class/static methods come first...
+ (id)randomItem;

- (id)initWithItemName:(NSString*)name
		valueInDollars:(int)value
		  serialNumber:(NSString*)number;

- (void)setItemName:(NSString*)str;
- (NSString*)itemName;

- (void)setSerialNumber:(NSString*)str;
- (NSString*)serialNumber;

- (void)setItemValue:(int)n;
- (int)valueInDollars;

- (NSDate*)dateCreated;

@end
