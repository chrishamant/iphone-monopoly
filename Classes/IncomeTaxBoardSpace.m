/**
 @class IncomeTaxBoardSpace
 @file IncomeTaxBoardSpace.m
 @author Chris Hamant
 
 Represents the single 'Income Tax' Space on a Monopoly GameBoard
 */

#import "IncomeTaxBoardSpace.h"


@implementation IncomeTaxBoardSpace

/**
 Required method for 'ActionSpaceProtocol'
 @param p - Player that landed on space
 @param board - Gameboard object
 */
-(void)performActionWithPlayer:(Player*)p andBoard:(GameBoard*)board{
	//perform net worth and stuff...
	NSLog(@"Should pay income tax");
}

@end
