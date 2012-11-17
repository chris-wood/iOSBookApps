//
//  BNRContainer.h
//  Ch2-RandomPossessions
//
//  Created by Christopher Wood on 11/16/12.
//  Copyright (c) 2012 CAWCODE. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
	NSMutableArray *subitems;
}

- (void)addItem:(BNRItem*)newItem;

@end
