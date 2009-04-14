//
//  PlayerNames.m
//  Monopoly
//
//  Created by Chris Hamant on 4/12/09.
//

#import "PlayerNames.h"


@implementation PlayerNames
@synthesize player1,player2,player3,player4,player5,player6,player7,player8;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil numPlayers:(int)num{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        NSLog(@"number of players %d",num);
		numPlayers = num;
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


@end
