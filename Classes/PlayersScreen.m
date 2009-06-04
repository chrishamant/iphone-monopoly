/**
 @file PlayersScreen.m
 @author Chris Hamant
 @class PlayersScreen
 
 @brief Control class for PlayerScreen.xib
 Class used to control and interact with the PlayerScreen.xib GUI interface.
 
 */

#import "PlayersScreen.h"
#import "Player.h"
#import "PlayerScreenDetail.h"

@implementation PlayersScreen
@synthesize players;

/**
 @param theplayers - NSArray of players
 @return id - pointer to self
*/
- (id)initWithPlayers:(NSArray*) theplayers {
    if (self = [super initWithNibName:@"PlayersScreen" bundle:nil]) {
		[self setPlayers:theplayers];
		[self setTitle:@"Players"];
    }
    return self;
}



/**
 Method triggered when the screen is displayed to the user
 */
- (void)viewDidLoad {
    [super viewDidLoad];
	[nav setTitle:@"Players"];
	self.view = nav.view;
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
	[players release];
    [super dealloc];
}

#pragma mark UITableViewDataSource/UITableViewDelegate Protocol

/**
 Method called by UITableView class to retrieve the number of rows that will be displayed
 @param tableView - UITableView object calling this method
 @param section - Integer representing the 'section' this should apply to
 @return Total number of rows
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
	return [players count];
}

/**
 Method called by UITableView class to retrieve the UITableViewCell needed for the row that will be displayed soon
 @param tableView - UITableView object calling this method
 @param indexPath - NSIndexPath
 @return pointer to UITableViewCell that should be displayed
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
	UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
	[cell autorelease];
	cell.textLabel.text = [[players objectAtIndex:indexPath.row] title];
	return cell;
}

/**
 Method called by UITableView class to indicate that a row was selected by the user
 @param tableView - UITableView object calling this method
 @param indexPath - NSIndexPath
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
	NSLog(@"selected row %d",indexPath.row);
	UIViewController* pdetail = [[PlayerScreenDetail alloc] initWithPlayer:[players objectAtIndex:indexPath.row]];
	[nav pushViewController:pdetail animated:YES];
	[pdetail release];
}


@end
