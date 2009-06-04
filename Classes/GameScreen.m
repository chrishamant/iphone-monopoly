/**
 @class GameScreen
 @file GameScreen.m
 @author Chris Hamant
 
 @brief GUI Screen controller
 
 Screen that controls the main game state throughout the lifecycle
 */

#import "GameScreen.h"
@class Player;

@implementation GameScreen

@synthesize game;

/**
 Constructor
 @param point to initialized game with existing players
 @return pointer to self
 */
-(id)initWithGame:(GameController*)g{
	if (self = [super initWithNibName:@"GameScreen" bundle:nil]) {
        [self setTitle:@"Game"];
		[g retain];
		game = g;
    }
    return self;
}


/**
 Method triggered when the screen is displayed to the user
 */
- (void)viewDidLoad {
    [super viewDidLoad];
	[self updateDisplay];
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

/**
 Method that is triggered when current player indicates he is rolling for his turn
 @param pointer to object that triggered this action
 */
-(void)rollAction:(id)sender{
	PlayerGameTurn turn = [game playerTakeTurn];
	currentTurn = [[GameTurn alloc] initWithTurn:turn];
	currentTurn.delegate = self;
	//currentTurn.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	//[self presentModalViewController:currentTurn animated:YES];
	[self.view addSubview:currentTurn.view];
}

/**
 Method used to refresh the display
 */
-(void)updateDisplay{
	Player* p = [game currentPlayer];
	[playerName setText:[p title]];
	id sp = [p currentSpace];
	[currentSpace setText:[sp title]];
	if([sp isKindOfClass:[PropertyBoardSpace class]]){
		[rent setText:[NSString stringWithFormat:@"Rent $%d",[sp calcRent]]];
	}else{
		[rent setText:@""];
	}
	[self.view setNeedsDisplay];
}

#pragma mark GameTurnDelegate Protocol
/**
 Closes the view controller after GameTurn triggered done: method
 @param pointer to GameTurn that called this method
 */
- (void)turnComplete:(GameTurn*)controller{
	[self updateDisplay];
	[controller.view removeFromSuperview];
	//[self dismissModalViewControllerAnimated:YES];
	[currentTurn release];
}

/**
 @param UtilityBoardSpace that needs the roll
 @return Roll struct with dice roll
 */
-(Roll)getRollforOwnedUtility:(UtilityBoardSpace*)prop{
	//should really get this from user... 
	return [game rollDice];
}

@end
