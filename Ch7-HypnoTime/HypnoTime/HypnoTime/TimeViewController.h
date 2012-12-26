//
//  TimeViewController.h
//  HypnoTime
//
//  Created by Christopher Wood on 12/25/12.
//  Copyright (c) 2012 CAWCODE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimeViewController : UIViewController
{
	__weak IBOutlet UILabel *timeLabel;
}
// the method that is invoked when the button is pressed
-(IBAction)showCurrentTime:(id)sender; // this must be of type IBAction or else we can't make the connection in the xib

@end
