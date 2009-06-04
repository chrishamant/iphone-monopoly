/**
 @class GameBoardSpace
 @file GameBoardSpace.m
 @author Chris Hamant
 
 Base class for all types of spaces on the board.
 */

#import "GameBoardSpace.h"


@implementation GameBoardSpace
@synthesize title;
@synthesize spaceType;

/**
 Constructor
 
 @param t - title/name of space
 @return pointer to self
 */
-(id)initWithTitle:(NSString*)t{
	if(self = [super init]){
		[self setTitle:t];
		spaceType = REGULAR;
	}
	return self;
}

/**
 Required method for 'ActionSpaceProtocol'
 @param p - Player that landed on space
 @param board - Gameboard object
 */
-(void)performSpaceActionsWithBoard:(GameBoard*)board AndPlayer:(Player*)player{
	//this general space actions should be like income tax or something
}

/**
 Destructor
 */
- (void)dealloc {
    [super dealloc];
	[title release];
}


@end
