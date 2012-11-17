//
//  main.m
//  Ch2-RandomPossessions
//
//  Created by Christopher Wood on 11/16/12.
//  Copyright (c) 2012 CAWCODE. All rights reserved.
//

#import <Foundation/Foundation.h>

// We need to include the class header to use it...
#include "BNRItem.h"
#include "BNRContainer.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    
	    // insert code here...
	    //NSLog(@"Hello, World!");
		
		// Create a container for the possession array
		NSMutableArray *items = [[NSMutableArray alloc] init];
		
		BNRItem* backpack = [[BNRItem alloc] init];
		[backpack setItemName:@"Backpack"];
		[items addObject:backpack];
		
		BNRItem* calculator = [[BNRItem alloc] init];
		[calculator setItemName:@"Calculator"];
		[items addObject:calculator];
		
		// Set the circular link
		[backpack setContained:calculator]; // backpack contains calculator, calculator's contains is the backpack
		
		/*int itemCount = 10;
		// Add some items...
		for (int i = 0; i < itemCount; i++)
		{
			[items addObject:[BNRItem randomItem]];
		}*/
		// Display those items...
		/*for (int i = 0; i < itemCount; i++)
		{
			//[[items objectAtIndex:i] doSomethingWeird]; // this was just an example of code that would throw an exception
			NSLog(@"%@", [items objectAtIndex:i]);
		}
		for (BNRItem *item in items)
		{
			NSLog(@"%@", item);
		}*/
		
		// Now playing around with containers
		/*
		NSLog(@"Here's the container stuff");
		BNRContainer *container = [[BNRContainer alloc] init];
		NSLog(@"%@", container);
		[container addItem:[[BNRContainer alloc] init]];
		NSLog(@"%@", container);
		 */
		
		// Add some objects to the array
		/*
		[items addObject:@"One"]; // @ creates an instance of NSString (as opposed to a character array)
		[items addObject:@"Two"];
		[items addObject:@"Three"];
		
		// Now try the insert method
		[items insertObject:@"Zero(inserted)" atIndex:0];
	    
		for (int i = 0; i < [items count]; i++)
		{
			NSLog(@"Item at index %d = %@", i, [items objectAtIndex:i]);
		}
		
		// Destroy the collection (let it be collected)
		items = nil;
		
		// Now create an instance of our own class and change its properties...
		 BNRItem *pItem = [[BNRItem alloc] init];
		[pItem setItemName:@"Item1"];
		[pItem setSerialNumber:@"1234"];
		[pItem setItemValue:100];
		 */
		
		// Display the contents for this beast...
		/*NSLog(@"%@ %@ %d %@", [pItem itemName], [pItem serialNumber], [pItem valueInDollars], [pItem dateCreated]); // dateCreated should be null because I never set it...
		*/
		/*
		BNRItem *pItem = [[BNRItem alloc] init];
		NSLog(@"%@", pItem);
		pItem = nil;
		
		// Try out our new initializer/constructor
		pItem = [[BNRItem alloc] initWithItemName:@"Red Sofa" valueInDollars:100 serialNumber:@"1337"];
		NSLog(@"%@", pItem);
		pItem = nil;
		 */
	}
    return 0;
}
