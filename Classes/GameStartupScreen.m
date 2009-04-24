//
//  GameStartupScreen.m
//  Monopoly
//
//

#import "GameStartupScreen.h"

@implementation GameStartupScreen
@synthesize players;

#pragma mark Controller Overrides

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	//Sample Data
	[players addObject:[[[Player alloc] initWithTitle:@"Player 1"] autorelease]];
	[players addObject:[[[Player alloc] initWithTitle:@"Player 2"] autorelease]];
}

- (void)dealloc {
    [super dealloc];
	[players release];
	//am I retaining the delegate?
}

#pragma mark Implementation methods

- (void)playerOptions:(id)sender{
	NSLog(@"Options! Disabled for now..");
	/*
	 Launch modal View to let players choose#players and other player settings/attrs
	 */
}

- (void)startMonopolyGame:(id)sender{
	NSLog(@"Trying to start Monopoly Game");

	GameController* game = [[GameController alloc] initWithPlayers:players];
	[theapp startMonopoly:game];
	
	//[[game view] setFrame:[[self view] frame]];
	//NSLog(@"start Monopoly %@",game);
	//[[[self view] window] addSubview:[game view]];
	//[game setSelectedIndex:0];
	//[game release];
	
	
	[[self view] removeFromSuperview];	
}


@end
