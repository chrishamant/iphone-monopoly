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
 @param g - pointer to initialized game with existing players
 @return pointer to self
 */
-(id)initWithGame:(GameController*)g{
	if (self = [super initWithNibName:@"GameScreen" bundle:nil]) {
        [self setTitle:@"Game"];
		[self.tabBarItem setImage: [UIImage imageNamed:@"die.png"]];
		[g retain];
		game = g;
		[game setDelegate:self];
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
 @param sender - pointer to object that triggered this action
 */
-(void)rollAction:(id)sender{
	//PlayerGameTurn turn = [game playerTakeTurn];
	[game playerTakeTurn];
	//currentTurn = [[GameTurn alloc] initWithTurn:turn];
	//currentTurn.delegate = self;
	//currentTurn.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	//[self presentModalViewController:currentTurn animated:YES];
	//[self.view addSubview:currentTurn.view];
	[self updateDisplay];
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
		if([sp isOwned]){
			[rent setText:[NSString stringWithFormat:@"Rent $%d",[sp calcRent]]];
		}else{
			[rent setText:@"unowned"];
		}
	}else{
		[rent setText:@"n/a"];
	}
	[self.view setNeedsDisplay];
}

#pragma mark GameUIDelegate stuff

/**
 @param p - Player in question
 @param prop - Property in questino
 */
-(void)doesPlayer:(Player*)p wantProperty:(PropertyBoardSpace*)prop{
	UIActionSheet *actionSheet = [[UIActionSheet alloc] 
								  initWithTitle:[NSString stringWithFormat:@"%@, do you want to purchase %@?",[p title],[prop title]] 
								  delegate:self 
								  cancelButtonTitle:@"No" 
								  destructiveButtonTitle:@"Yes" 
								  otherButtonTitles:nil];
	[actionSheet showInView:self.tabBarController.view];
	[actionSheet release];
}

#pragma mark GameTurnDelegate Protocol
/**
 Closes the view controller after GameTurn triggered done: method
 @param controller - pointer to GameTurn that called this method
 */
- (void)turnComplete:(GameTurn*)controller{
	[self updateDisplay];
	[controller.view removeFromSuperview];
	//[self dismissModalViewControllerAnimated:YES];
	[currentTurn release];
}

/**
 @param prop - UtilityBoardSpace that needs the roll
 @return Roll struct with dice roll
 */
-(Roll)getRollforOwnedUtility:(UtilityBoardSpace*)prop{
	//should really get this from user... 
	return [game rollDice];
}

/**
 @param prop - Property in question
 @return AuctionWinner struct with info who won
 */
-(AuctionWinner) wellWhoWantsProperty:(PropertyBoardSpace*)prop{
	AuctionWinner winner;
	return winner;
}

-(void)updateRollInfo:(PlayerGameTurn)t{
	[landedSpaced setText:[NSString stringWithFormat:@"Landed on %@",[t.space title]]];
	[rolled setText:[NSString stringWithFormat:@"Rolled a %i and %i",t.roll.r1, t.roll.r2]];
}

#pragma mark UIActionSheetDelegate
/**
 Method to determine users response
 @param actionSheet - the actionsheet in question
 @param buttonIndex - which button was clicked
 */
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
	BOOL result;
	if(buttonIndex == 0){
		result = YES;
	}else{
		result = NO;
	}
	[game responseToPurchaseReq:result];
}

@end
