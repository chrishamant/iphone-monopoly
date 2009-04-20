//
//  MonopolyGame.m
//  Monopoly
//
//  Created by Chris Hamant on 4/20/09.
//

#import "MonopolyGame.h"


@implementation MonopolyGame
@synthesize players;

#pragma mark UIViewController Overrides
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

#pragma mark Implementation Methods
- (id)initWithNibNameAndPlayers:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil players:(NSMutableArray*) theplayers{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        [self setPlayers:theplayers];
    }
    return self;
}


@end
