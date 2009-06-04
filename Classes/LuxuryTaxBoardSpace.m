/**
 @class LuxuryTaxBoardSpace
 @file LuxuryTaxBoardSpace.m
 @author Chris Hamant
 
 Represents the single 'Luxury Tax' Space on a Monopoly GameBoard
 */

#import "LuxuryTaxBoardSpace.h"


@implementation LuxuryTaxBoardSpace

/**
 Required method for 'ActionSpaceProtocol'
 @param p - Player that landed on space
 @param board - Gameboard object
 */
-(void)performActionWithPlayer:(Player*)p andBoard:(GameBoard*)board{
	NSLog(@"Should pay luxury tax");
	[p payToBank:LUXURYTAXAMT];
}

@end
