//
//  HypnosisView.m
//  Hypnotiser
//
//  Created by Christopher Wood on 11/21/12.
//  Copyright (c) 2012 CAWCODE. All rights reserved.
//

#import "HypnosisView.h"

@implementation HypnosisView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]]; // so we don't draw the frame backgrounds!
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
	CGContextRef ctx = UIGraphicsGetCurrentContext();
	CGRect bounds = [self bounds];
	
	CGPoint center;
	center.x = bounds.origin.x + bounds.size.width / 2;
	center.y = bounds.origin.y + bounds.size.height / 2;
	float maxRad = hypot(bounds.size.width, bounds.size.height) / 2.0;
	
	// the tickness of the line should be 10pts wide
//	CGContextSetLineWidth(ctx, 10.0);
	
	// The color of the line should be gray (red/ green/ blue = 0.6, alpha = 1.0);
	//CGContextSetRGBStrokeColor(ctx, 0.6, 0.6, 0.6, 1.0);
	[[UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1] setStroke]; // UIColor has a number of predefined colors that you can play around with!
	
	for (float currentRad = maxRad; currentRad > 0; currentRad -= 20)
	{
		// Add a path to the context
		CGContextAddArc(ctx, center.x, center.y, currentRad, 0.0, M_PI * 2.0, YES); // 0.0 - 2pi for drawing a 360degree arc
		CGContextStrokePath(ctx);
	}
	
	// Add a string to the view for display...
	NSString *str = @"You are getting sleepy...";
	UIFont *font = [UIFont boldSystemFontOfSize:28];
	CGRect textBox;
	textBox.size = [str sizeWithFont:font];
	
	// Put the string in the center of the view
	textBox.origin.x = center.x - textBox.size.width / 2.0;
	textBox.origin.y = center.y - textBox.size.height / 2.0;
	
	// Set the color of the string
	[[UIColor blackColor] setFill];
	
	// Add a shadow to the text...
	CGSize offset = CGSizeMake(4, 3);
	CGColorRef color = [[UIColor darkGrayColor] CGColor]; // what?
	CGContextSetShadowWithColor(ctx, offset, 2.0, color);
	
	// Add the text to the view
	[str drawInRect:textBox withFont:font];
	
	// Add a shape to the context
	CGContextAddArc(ctx, center.x, center.y, maxRad, 0.0, M_PI * 2.0, YES);
	
	// Perform a drawing instruction (we build up new shapes in the context and then tell to draw them...)
	CGContextStrokePath(ctx);
}

@end
