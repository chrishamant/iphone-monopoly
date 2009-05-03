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
	[self setPlayers:[NSMutableArray arrayWithCapacity:8]];
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
	PreGameSettings *controller = [[PreGameSettings alloc] initWithNibName:@"PreGameSettings" bundle:nil];
	controller.delegate = self;
	controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:controller animated:YES];	
}

- (void)startMonopolyGame:(id)sender{
	NSLog(@"Trying to start Monopoly Game");
	
	GameController* game = [[[GameController alloc] initWithPlayers:players] autorelease];
	
	[[self view] removeFromSuperview];	
	[theapp startMonopoly:game];
}

- (void)flipsideViewControllerDidFinish:(PreGameSettings *)controller {
    
	[self dismissModalViewControllerAnimated:YES];
}

@end
