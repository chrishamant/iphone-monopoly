//
//  PlayersScreen.m
//  Monopoly
//
//

#import "PlayersScreen.h"
#import "Player.h"
#import "PlayerScreenDetail.h"

@implementation PlayersScreen
@synthesize players;

/**
 @param theplayers NSArray of players
 @return pointer to self
*/
- (id)initWithPlayers:(NSArray*) theplayers {
    if (self = [super initWithNibName:@"PlayersScreen" bundle:nil]) {
		[self setPlayers:theplayers];
		[self setTitle:@"Players"];
    }
    return self;
}



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	[nav setTitle:@"Players"];
	self.view = nav.view;
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

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

#pragma mark UITableViewDataSource/UITableViewDelegate Protocol

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
	return [players count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
	UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
	[cell autorelease];
	cell.textLabel.text = [[players objectAtIndex:indexPath.row] title];
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
	NSLog(@"selected row %d",indexPath.row);
	UIViewController* pdetail = [[PlayerScreenDetail alloc] initWithPlayer:[players objectAtIndex:indexPath.row]];
	[nav pushViewController:pdetail animated:YES];
	[pdetail release];
}


@end
