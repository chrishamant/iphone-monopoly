//
//  GameController.m
//  Monopoly
//
//  Created by Chris Hamant on 4/9/09.
//

#import "GameController.h"

@implementation GameController

-(int)rollDice{
	int roll = [Die roll] + [Die roll];
	return roll;
}

-(id)initWithPlayers:(NSArray*)theplayers andUI:(id<GameControllerDelegate>) theDelgateController {
	if(self = [super init]){
		players = theplayers;
		[players retain];
		delegateController =  theDelgateController;
		[delegateController retain];
	}
	return self;
}

-(void)startGame{
	//start of 'main game loop'
	NSArray* temp = [[NSArray alloc] initWithObjects:@"roll",@"do something else",nil];
	while(1){
		for(id player in players){
			int choice = [delegateController choosePlayerTurnAction:temp roll:0 player:player];
			NSLog(@"%d",choice);
		}
	}
}

/*
 int roll = [self rollDice];
 GameBoardSpace* landed = [board getNewSpace:[token currentSpace] :roll];
 [token setCurrentSpace: landed];
 */

-(void)dealloc{
	[super dealloc];
	[players release];
	[delegateController release];
}

@end
