/**
 @class ChanceBoardSpace
 @file ChanceBoardSpace.m
 @author Chris Hamant
 
 Represents the group of Chance Spaces on a Monopoly GameBoard
 */

#import "ChanceBoardSpace.h"


@implementation ChanceBoardSpace

/**
 Required method for 'ActionSpaceProtocol'
 @param p - Player that landed on space
 @param board - Gameboard object
 */
-(void)performActionWithPlayer:(Player*)p andBoard:(GameBoard*)board{
	NSLog(@"Should draw chance card");
}

@end
