/**
 @class GoToJailSpace
 @file GoToJailSpace.h
 @author Chris Hamant
 
 Represents the single 'Go To Jail' Space on a Monopoly GameBoard
 */


#import "GoToJailSpace.h"


@implementation GoToJailSpace

/**
 Required method for 'ActionSpaceProtocol'
 @param p - Player that landed on space
 @param board - Gameboard object
 */
-(void)performActionWithPlayer:(Player*)p andBoard:(GameBoard*)board{
	NSLog(@"Should go to Jail");
}

@end
