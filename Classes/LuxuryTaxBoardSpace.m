//
//  LuxuryTaxBoardSpace.m
//  Monopoly
//
//

#import "LuxuryTaxBoardSpace.h"


@implementation LuxuryTaxBoardSpace

-(void)performActionWithPlayer:(Player*)p andBoard:(GameBoard*)board{
	NSLog(@"Should pay luxury tax");
	[p payToBank:LUXURYTAXAMT];
}

@end
