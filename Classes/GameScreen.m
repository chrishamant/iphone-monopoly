//
//  GameScreen.m
//  Monopoly
//
//

#import "GameScreen.h"
@class Player;

@implementation GameScreen

@synthesize game;

-(id)initWithGame:(GameController*)g{
	if (self = [super initWithNibName:@"GameScreen" bundle:nil]) {
        [self setTitle:@"Game"];
		[g retain];
		game = g;
    }
    return self;
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	[self updateDisplay];
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
	[game release];
}

#pragma mark Events and stuff

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	NSLog(@"begin!");
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
	NSLog(@"middle!");
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	NSLog(@"end!");
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
	NSLog(@"begin!");
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event{
	NSLog(@"end!");
}

- (void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event{
	NSLog(@"cancelled!!");
}

#pragma mark Implementation methods

-(void)rollAction:(id)sender{
	[game playerTakeTurn];
	[self updateDisplay];
}

-(void)updateDisplay{
	Player* p = [game currentPlayer];
	[playerName setText:[p title]];
	[currentSpace setText:[[p currentSpace] title]];
	[self.view setNeedsDisplay];
}

@end
