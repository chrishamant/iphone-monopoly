/**
 @class CommunityChestBoardSpace
 @file CommunityChestBoardSpace.m
 @author Chris Hamant
 
 Represents the group of Community Chest Spaces on a Monopoly GameBoard
 */

#import "CommunityChestBoardSpace.h"


@implementation CommunityChestBoardSpace

/**
 Required method for 'ActionSpaceProtocol'
 @param p - Player that landed on space
 @param board - Gameboard object
 */
-(void)performActionWithPlayer:(Player*)p andBoard:(GameBoard*)board{
	NSLog(@"Should draw comm chest card");
}

@end
