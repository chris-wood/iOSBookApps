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
	//
	// The instance variables are redundant with the use of properties
	//
//	NSString *item;
//	NSString *serialNumber;
//	int valueInDollars;
//	NSDate *dateCreated;
	
//	BNRItem *contained;
//	__weak BNRItem *container; // container is the child in this relationship, so we tag it as weak to make sure the cyclic references are taken care of
}

// we could add properties here... @property TYPE *NAME; (if object)

// By convention class/static methods come first...
+ (id)randomItem;

//- (void)setContainedItem:(BNRItem*)i;
//- (void)setContainer:(BNRItem*)i;

//- (BNRItem*)container;
@property (nonatomic, strong) BNRItem *container;
//- (BNRItem*)contained;
@property (nonatomic, weak) BNRItem *contained;

//- (void)doSomethingWeird; // exception-causing selector

- (id)initWithItemName:(NSString*)name
		valueInDollars:(int)value
		  serialNumber:(NSString*)number;

//- (void)setItemName:(NSString*)str;
//- (NSString*)itemName;
@property (nonatomic, copy) NSString *itemName; // copy attribute instead of strong

//- (void)setSerialNumber:(NSString*)str;
//- (NSString*)serialNumber;
@property (nonatomic, copy) NSString *serialNumber; // copy attribute instead of strong

//- (void)setItemValue:(int)n;
//- (int)valueInDollars;
@property (nonatomic) int valueInDollars;

//- (NSDate*)dateCreated;
@property (nonatomic, strong, readonly) NSDate *dateCreated;

@end
