//
//  PlayerScreenDetail.m
//  Monopoly
//
//  Created by Chris Hamant on 5/2/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "PlayerScreenDetail.h"
#import "Player.h"
@class GameBoardSpace;

@implementation PlayerScreenDetail
@synthesize player;

 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithPlayer:(Player*)p {
    if (self = [super initWithNibName:@"PlayerScreenDetail" bundle:nil]) {
		[self setPlayer:p];
    }
    return self;
}



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	titleLabel.text = player.title;
	spaceLabel.text = player.currentSpace.title;
}

-(void)viewWillAppear{
	NSLog(@"the view is appearings!");
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
	[player release];
	[titleLabel release];
	[spaceLabel release];
}


@end
