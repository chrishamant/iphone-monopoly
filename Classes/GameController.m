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
		
		//everyplayer should start at Go (index0)
		for(id player in players){
			[player setCurrentSpace:[[board spaces] objectAtIndex:0]];
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

-(void) playerTakeTurn{
	Roll r = [self rollDice];
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
	//send notifications
}

@end
