//
//  BNRContainer.m
//  Ch2-RandomPossessions
//
//  Created by Christopher Wood on 11/16/12.
//  Copyright (c) 2012 CAWCODE. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

#define ITEM_COUNT 10

- (id)init
{
	self = [super init];
	if (self)
	{
		subitems = [[NSMutableArray alloc] init];
		for (int i = 0; i < ITEM_COUNT; i++)
		{
			[subitems addObject:[BNRItem randomItem]];
		}
	}
	return self;
}

- (void)addItem:(BNRItem*)newItem
{
	[subitems addObject:newItem];
}

- (int)valueInDollars
{
	int sum = 0;
	for (BNRItem *item in subitems)
	{
		sum += item.valueInDollars;
	}
	return sum;
}

- (NSString*)description
{
	int sum = self.valueInDollars;
	NSString *result = [[NSString alloc] initWithFormat:@"Container value: %d", sum];
	return result;
}

@end
