//
//  BNRItem.m
//  Ch2-RandomPossessions
//
//  Created by Christopher Wood on 11/16/12.
//  Copyright (c) 2012 CAWCODE. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

+ (id)randomItem
{
	// Create an array of three adjectives
	NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@" Fluffy", @" Rusty", @" Shiny", nil]; // nil terminates the array
	
	// Create an array of three nouns
	NSArray *randomNounList = [NSArray arrayWithObjects:@" Bear", @" Spork", @" Mac", nil];
	
	// Get the index of a random adjective/ noun from the lists
	// Note: The % operator, called the modulo operator, gives
	// you the remainder. So adjectiveIndex is a random number
	// from 0 to 2 inclusive.
	
	NSInteger adjectiveIndex = rand() % [randomAdjectiveList count];
	NSInteger nounIndex = rand() % [randomNounList count];
	
	// Note that NSInteger is not an object, but a type definition
	// for "unsigned long"
	NSString *randomName = [NSString stringWithFormat:@"%@ %@",
							[randomAdjectiveList objectAtIndex:adjectiveIndex],
							[randomNounList objectAtIndex:nounIndex]];
	int randomValue = rand() % 100;
	NSString *randomSerialNumber = [NSString stringWithFormat:@"% c% c% c% c% c",
									'0' + rand() % 10,
									'A' + rand() % 26,
									'0' + rand() % 10,
									'A' + rand() % 26,
									'0' + rand() % 10];
	
	BNRItem *newItem = [[self alloc] initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber]; return newItem;
}

- (id)init
{
	return [self initWithItemName:@"Item" valueInDollars:0 serialNumber:@""];
}

- (id)initWithItemName:(NSString*)name
		valueInDollars:(int)value
		  serialNumber:(NSString*)number
{
	self = [super init];
	if (self) // make sure the parent's init method succeeded...
	{
		item = name;
		valueInDollars = value;
		serialNumber = number;
		dateCreated = [[NSDate alloc] init];
	}
	return self;
}

- (NSString*)itemName
{
	return item;
}

- (void)setItemName:(NSString*)newName
{
	item = newName;
}

- (NSString*)serialNumber
{
	return serialNumber;
}

- (void)setSerialNumber:(NSString*)newSerialNumber
{
	serialNumber = newSerialNumber;
}

- (int)valueInDollars
{
	return valueInDollars;
}

- (void)setItemValue:(int)newValue
{
	valueInDollars = newValue;
}

- (NSDate*)dateCreated
{
	return dateCreated;
}

- (NSString*)description
{
	NSString *result = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
					   item,
					   serialNumber,
					   valueInDollars,
					   dateCreated];
	return result;
}

@end
