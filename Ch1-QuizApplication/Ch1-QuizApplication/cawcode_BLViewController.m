//
//  cawcode_BLViewController.m
//  Ch1-QuizApplication
//
//  Created by Christopher Wood on 11/16/12.
//  Copyright (c) 2012 CAWCODE. All rights reserved.
//

#import "cawcode_BLViewController.h"

@interface cawcode_BLViewController ()

@end

@implementation cawcode_BLViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	if (self)
	{
		questions = [[NSMutableArray alloc] init]; // allocate space, then invoke init
		answers = [[NSMutableArray alloc] init];
		
		// Add the questions and answers
		[questions addObject:@" What is 7 + 7?"];
		[answers addObject:@" 14"];
		[questions addObject:@"Does Bob make too much money?"];
		[answers addObject:@"Yes. Of Course."];
	}
	
	return self; // self is an id type (object reference)
}

- (IBAction)showQuestion:(id)sender
{
	questionIndex = (questionIndex + 1) % [questions count];
	NSString *pQuestion = [questions objectAtIndex:questionIndex];
	NSLog(@"displaying question : %@", pQuestion); // that's a weird format string...
	[questionField setText:pQuestion];
	[answerField setText:@"???"];
}

- (IBAction)showAnswer:(id)sender
{
	[answerField setText:[answers objectAtIndex:questionIndex]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
