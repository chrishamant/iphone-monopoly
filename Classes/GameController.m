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
 @param array of Players to use in the game
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
	
	//set new space
	turn.space = currentPlayer.currentSpace = [board getNewSpace:currentPlayer.currentSpace rolling:rollsum];
	
	//testing to see if GO was passed 1st...
	[self didPlayer:currentPlayer passGoFrom:startSpace rolling:rollsum];
	
	//advance current player
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
	}//else player stays the same
	
	switch ([turn.space spaceType]) {
		//purposeful fallthrough...
		case RAILROAD:
		case UTILITY:
		case IMPROVABLE:
			//isowned?
			if([turn.space isOwned]){
				[self payRent:turn];
			}else{
				//can + want to buy?
				//buy
				//auction
			}
			break;
		case ACTION:
			[turn.space performActionWithPlayer:turn.p andBoard:board];
			break;
		default:
			//do nothing
			break;
	}
	
	return turn;
}

/**
 Method to handle the game action of paying rent
 @param struct of turn state
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
		//passed GO
		//collect $200
		[p setCash:([p cash] + 200)];
	}
}

@end
