//
//  MonopolyGame.m
//  Monopoly
//
//  Created by Chris Hamant on 4/20/09.
//

#import "MonopolyGame.h"


@implementation MonopolyGame
@synthesize game;
//@synthesize gameScreen, boardScreen, statsScreen;

#pragma mark UIViewController Overrides
- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	// Release any cached data, images, etc that aren't in use.
}

-(void)viewDidLoad{
	NSLog(@"got to load from nib");
	[self setSelectedIndex:0];
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

#pragma mark Implementation Methods
-(id)initWithPlayers:(NSMutableArray*)p{
    if (self = [super initWithNibName:@"Monopoly" bundle:nil]) {
		//self.players = p;
		game = [[GameController alloc] initWithPlayers:p];
		NSLog(@"I GOT to init%@",game);
    }
    return self;
}


@end
