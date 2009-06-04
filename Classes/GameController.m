#import "GameController.h"

/**
 @class GameController
 @file GameController.m
 @author Chris Hamant
 
 @brief Main control class for the game
 
 This is the main controller class for the Game. It interacts with the user through a GameUIDelegate Protocol and
 arbitrates interaction with the base model obects. 
 
 */
@implementation GameController

@synthesize board;
@synthesize currentPlayer;
@synthesize players;
@synthesize delegate;

/**
 Method to trigger a simulated roll of two die
 @return struct containing the two random dice rolls
 */
-(Roll)rollDice{
	Roll roll;
	roll.r1 = [Die roll];
	roll.r2 = [Die roll];
	return roll;
}

/**
 Constructor
 initlizes game and game defaults.
 @param theplayers - array of Players to use in the game
 @return point to self
 */
-(id)initWithPlayers:(NSArray*)theplayers {
	if(self = [super init]){
		players = theplayers;
		[players retain];
		
		//initialize board
		board = [[GameBoard alloc] init];
		
		for(id player in players){
			//everyplayer should start at Go (index0)
			[player setCurrentSpace:[[board spaces] objectAtIndex:0]];
			//everyplayer should have $1500
			[player setCash:1500];
		}
		currentPlayer = [players objectAtIndex:0];
	}
	return self;
}

/**
 Destructor
 */
-(void)dealloc{
	[super dealloc];
	[players release];
	[currentPlayer release];
	[board release];
}

#pragma mark implementation methods

/**
 Method to advance the game state by indicating the 'next' user should take a turn
 @return PlayerGameTurn struct containing pointers to objects used in this turn (assumed to be used by UI somehow)
 */
-(PlayerGameTurn) playerTakeTurn{
	
	//player rolls dice
	Roll r = [self rollDice];
	
	//state for turn I want to pass around
	PlayerGameTurn turn;
	turn.roll = r;
	turn.p = currentPlayer;
	
	//saving starting space
	id startSpace = currentPlayer.currentSpace;
	
	//hold on to roll sum
	int rollsum = r.r1 + r.r2;
	NSLog(@"%@ Rolled %i",[currentPlayer title],rollsum);
	//set new space
	turn.space = currentPlayer.currentSpace = [board getNewSpace:currentPlayer.currentSpace rolling:rollsum];
	NSLog(@"%@ was on %@ and landed on %@",[currentPlayer title],[startSpace title],[turn.space title]);
	//testing to see if GO was passed 1st...
	[self didPlayer:currentPlayer passGoFrom:startSpace rolling:rollsum];
	[delegate updateRollInfo:turn];
	//advance current player first as they might be headed to jail
	if(r.r1 != r.r2){
		//did not roll doubles
		NSUInteger pindex = [players indexOfObject:currentPlayer];
		pindex++;
		if([players count] == pindex){
			//first player
			currentPlayer = [players objectAtIndex:0];
		}else {
			//next player
			currentPlayer = [players objectAtIndex:pindex];
		}
	}else{
		NSLog(@"Player rolled doubles");
	}
	
	
	switch ([turn.space spaceType]) {
		//purposeful fallthrough...
		case RAILROAD:
		case UTILITY:
		case IMPROVABLE:
			//isowned?
			NSLog(@"Landed on an Property Space");
			if([turn.space isOwned]){
				NSLog(@"Landed on a space that was owned.");
				[self payRent:turn];
			}else{
				//can + want to buy?
				int cashonhand = [turn.p cash];
				if(cashonhand > [turn.space cost]){
					//can afford
					[delegate doesPlayer:turn.p wantProperty:turn.space];
				}else{
					//can't buy/afford
					NSLog(@"Can't Afford property");
				}
			}
			break;
		case ACTION:
			NSLog(@"Landed on an 'Action' space");
			[turn.space performActionWithPlayer:turn.p andBoard:board];
			break;
		default:
			//do nothing
			NSLog(@"Landed on Neutral Space");
			break;
	}
	
	NSLog(@"It is now %@'s turn.",[currentPlayer title]);
	return turn;
}

-(void)responseToPurchaseReq:(BOOL)res{
	if(res){
		//wants to buy
		NSLog(@"Wants to buy");
	}else {
		//doesn't want to buy
		NSLog(@"Doesn't want to buy");
		//auction
	}
}

/**
 Method to handle the game action of paying rent
 @param t - struct of turn state
 */
-(void)payRent:(PlayerGameTurn)t{
	
	//Calcuate Rent
	int rent;
	if([t.space spaceType] == UTILITY){
		//in the UIdelegate this needs to be a blocking action
		//that returns value
		Roll r = [delegate getRollforOwnedUtility:t.space];
		int roll = r.r1 + r.r2;
		rent = [t.space calcRentWithRoll:roll];
	}else{
		rent = [t.space calcRent];
	}	
	
	id player = t.p;
	int coh = [player cash]; //cash on hand
	if( coh >= rent){
		[player setCash:(coh - rent)];
		int otherCoh = [[t.space owner] cash];
		[[t.space owner] setCash:(otherCoh + rent)];
	} else{
		//go into some kind of sell/buy/morgage state
		//TODO!!
		NSLog(@"SOME UNIMPLEMENTED STUFF");
	}
}

/**
 Method to handle the logic testing if a user passes go (and pays $)
 @param p - Player in question
 @param space - pointer to GameBoardSpace that was starting point
 @param r - sum of roll
 */
-(void)didPlayer:(Player*)p passGoFrom:(id)space rolling:(int)r{
	//did pass go?
	id boardspaces = [board spaces];
	int boardsize = [boardspaces count];
	int startIndex = [boardspaces indexOfObject:space];
	if((startIndex + r) > boardsize){
		NSLog(@"passed Go, collect $200");
		[p setCash:([p cash] + 200)];
	}
}

@end
