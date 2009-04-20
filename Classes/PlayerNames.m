//
//  PlayerNames.m
//  Monopoly
//
//  Created by Chris Hamant on 4/12/09.
//

#import "PlayerNames.h"

@implementation PlayerNames

@synthesize playernames;
//@synthesize playerlist;

- (id)initWithNumPlayers:(int)num{
    if (self = [super initWithNibName:@"GetPlayerNames" bundle:nil]) {
        numPlayers = num;
		NSLog(@"Creating PlayerNames Controller with %d players",num);
		[self setTitle:@"Player Names"];
		for(int i=0;i<numPlayers;i++){
			NSLog(@"Trying to create subview for player %d",i);
			//PlayerNameController* temp = [[PlayerNameController alloc] initWithNibName:@"PlayerName" bundle:nil];
			[playernames addObject:temp];
			[[self view] addSubview:[temp view]];
			[[temp playername] setPlaceholder:[NSString stringWithFormat:@"Player Number %d",i+1]];
			[temp release];
		}
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
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

- (IBAction)startGame:(id)sender{
	
}

@end
