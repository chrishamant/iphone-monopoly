//
//  GameTurn.m
//  Monopoly
//
//  Created by Chris Hamant on 5/5/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "GameTurn.h"


@implementation GameTurn
@synthesize delegate;



- (id)initWithTurn:(PlayerGameTurn)t; {
    if (self = [super initWithNibName:@"GameTurn" bundle:nil]) {
        turn = t;
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
	[rolled setText:[NSString stringWithFormat:@"You rolled a %d and %d",turn.roll.r1,turn.roll.r2]];
	[landed setText:[[turn.p currentSpace] title]];
	
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

- (IBAction)done {
	[self.delegate turnComplete:self];	
}

@end
