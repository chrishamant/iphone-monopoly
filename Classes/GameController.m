//
//  GameController.m
//  Monopoly
//
//

#import "GameController.h"

@implementation GameController

@synthesize board;
@synthesize currentPlayer;
@synthesize players;

-(Roll)rollDice{
	Roll roll;
	roll.r1 = [Die roll];
	roll.r2 = [Die roll];
	return roll;
}

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


-(void)dealloc{
	[super dealloc];
	[players release];
	[currentPlayer release];
	[board release];
}

-(PlayerGameTurn) playerTakeTurn{
	Roll r = [self rollDice];
	
	PlayerGameTurn turn;
	turn.roll = r;
	turn.p = currentPlayer;
	
	currentPlayer.currentSpace = [board getNewSpace:currentPlayer.currentSpace rolling:(r.r1+r.r2)];
	
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
	
	return turn;
}

@end
