//
//  GameController.m
//  Monopoly
//
//

#import "GameController.h"

@implementation GameController
//@synthesize state;

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
	}
	return self;
}

-(void)startGame{
	//start of 'main game loop'
	//NSArray* methods = [[NSArray alloc] initWithObjects:@"roll",@"do something else",nil];
	for(id player in players){
		[player setCurrentSpace:[[board spaces] objectAtIndex:0]];
	}
	//[delegateController setState:self availableActions:methods];
}


-(void)dealloc{
	[super dealloc];
	[players release];
}

-(void) playerTakeTurn:(id)sender{
	
}

@end
