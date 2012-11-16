//
//  cawcode_BLViewController.h
//  Ch1-QuizApplication
//
//  Created by Christopher Wood on 11/16/12.
//  Copyright (c) 2012 CAWCODE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface cawcode_BLViewController : UIViewController
{ // fields inside this block are instance variables for the controller
	int questionIndex;
	
	// The model objects
	NSMutableArray *questions;
	NSMutableArray *answers;
	
	// The view objects
	IBOutlet UILabel *questionField;
	IBOutlet UILabel *answerField;
}

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender; // colon separates parameters...

@end
