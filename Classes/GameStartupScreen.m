/**
 @class GameStartupScreen
 @file GameStartupScreen.m
 @author Chris Hamant
 
 @brief Initial Game Screen
 
 Screen that exists upon inital load
 */

#import "GameStartupScreen.h"

@implementation GameStartupScreen
@synthesize players;

#pragma mark Controller Overrides

/**
 Method triggered when the screen is displayed to the user
 */
- (void)viewDidLoad {
    [super viewDidLoad];
	[self setPlayers:[NSMutableArray arrayWithCapacity:8]];
	//Sample Data
	[players addObject:[[[Player alloc] initWithTitle:@"Player 1"] autorelease]];
	[players addObject:[[[Player alloc] initWithTitle:@"Player 2"] autorelease]];
}

/**
 Destructor
 */
- (void)dealloc {
    [super dealloc];
	[players release];
	//am I retaining the delegate?
}

#pragma mark Implementation methods
/**
 Action triggered with user pushes 'Options' button on nib
 @param sender - pointer to button that triggers action
 */
- (void)playerOptions:(id)sender{
	pregame = [[PreGameSettings alloc] initWithNibName:@"PreGameSettings" bundle:nil];
	pregame.delegate = self;
	pregame.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:pregame animated:YES];
}

/**
 Action triggered with user pushes 'Start Game' button on nib
 @param sender - pointer to button that triggers action
 */
- (void)startMonopolyGame:(id)sender{
	NSLog(@"Trying to start Monopoly Game");
	
	GameController* game = [[[GameController alloc] initWithPlayers:players] autorelease];
	
	[[self view] removeFromSuperview];	
	[theapp startMonopoly:game];
}

#pragma mark Delegate methods
/**
 Method called by PreGameSettings view controller when completed
 @param controller - pointer to PreGameSettings UIViewController
 */
- (void)flipsideViewControllerDidFinish:(PreGameSettings *)controller {
	[self dismissModalViewControllerAnimated:YES];
	[pregame release];
}

@end
