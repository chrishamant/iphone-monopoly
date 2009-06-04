/**
 @class GameTurn
 @file GameTurn.m
 @author Chris Hamant
 
 @brief GUI Screen controller
 
 This is a GUI class used to display the information resulting from a 'turn'
 
 */
#import "GameTurn.h"


@implementation GameTurn
@synthesize delegate;


/**
 Constructor
 
 @param t - PlayerGameTurn struct withpointers to needed info
 @return pointer to self
 */
- (id)initWithTurn:(PlayerGameTurn)t; {
    if (self = [super initWithNibName:@"GameTurn" bundle:nil]) {
        turn = t;
    }
    return self;
}

/**
 Method triggered when the screen is displayed to the user
 */
- (void)viewDidLoad {
    [super viewDidLoad];
	[rolled setText:[NSString stringWithFormat:@"You rolled a %d and %d",turn.roll.r1,turn.roll.r2]];
	[landed setText:[[turn.p currentSpace] title]];
	
}

/**
 Method triggered when the device runs out of memory
 */
- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	// Release any cached data, images, etc that aren't in use.
}

/**
 Method triggered when the screen will disappear
 */
- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

/**
 Destructor
 */
- (void)dealloc {
    [super dealloc];
}

#pragma mark Implementation Methods

/**
 Method that triggers the 'turnComplete' method on the delegate
 */
- (IBAction)done {
	[self.delegate turnComplete:self];	
}

@end
