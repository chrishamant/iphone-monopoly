/**
 @class UtilityBoardSpace
 @file UtilityBoardSpace.m
 @author Chris Hamant
 
 Class used to represent the two Utility spaces on a Monopoly Board
 */
#import "UtilityBoardSpace.h"


@implementation UtilityBoardSpace

/**
 Constructor
 @param dict - dictionary used in initializing class
 @return point to self
 */
-(id)initFromDict:(NSDictionary*) dict{
	if(self = [super initFromDict:dict]){
		spaceType = UTILITY;
	}
	return self;
}

/**
 This is a little slop added cause there is a bug in my design
 @return int - rent
 */
-(int)calcRent{
	return [self calcRentWithRoll:10];
}

/**
 Method to determin rent for Utility based off of provided dice roll
 @param roll - sum of dice roll used to calc rent
 @return int - Sum of Rent
 */
-(int)calcRentWithRoll:(int)roll{
	//making the assumption there is only the one other utility...
	if((owner == [[relatedSpaces objectAtIndex:0] owner])){
		//both owned
		return roll * 10;
	}else if(owner){
		return roll * 4;
	}else{
		//this should never be called without being owned
		//shouldn't happen in a game
		assert(0);
	}
}

@end
