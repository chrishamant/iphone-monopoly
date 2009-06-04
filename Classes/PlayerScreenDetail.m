/**
 @class PlayerScreenDetail
 @file PlayerScreenDetail.m
 @author Chris Hamant
 
 View that displays more detailed information about users
 */

#import "PlayerScreenDetail.h"
#import "Player.h"
@class GameBoardSpace;

@implementation PlayerScreenDetail
@synthesize player;

/**
 Constructor
 @param p - pointer to Player this view should use as data source
 @return pointer to self
 */
- (id)initWithPlayer:(Player*)p {
    if (self = [super initWithNibName:@"PlayerScreenDetail" bundle:nil]) {
		[self setPlayer:p];
    }
    return self;
}

/**
 Method triggered when the screen is displayed to the user
 */
- (void)viewDidLoad {
    [super viewDidLoad];
	titleLabel.text = player.title;
	spaceLabel.text = player.currentSpace.title;
	money.text = [NSString stringWithFormat:@"$%d dollars",[player cash]];
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
	[player release];
	[titleLabel release];
	[spaceLabel release];
}


@end
