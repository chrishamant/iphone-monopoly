/**
 @class RailRoadBoardSpace
 @file RailRoadBoardSpace.m
 @author Chris Hamant
 
 Class used to represent the Railroad spaces on a Monopoly Board
 */

#import "RailRoadBoardSpace.h"


@implementation RailRoadBoardSpace

/**
 Constructor
 @param dict - dictionary used in initializing class
 @return point to self
 */
-(id)initFromDict:(NSDictionary*) dict{
	if(self = [super initFromDict:dict]){
		spaceType = RAILROAD;
	}
	return self;
}

/**
 Method to calculate rent based off number of spaces owned
 @return rent amount
 */
-(int)calcRent{
	int owned = [self getNumOwned];
	//assert valid range
	assert(0 < owned < 5);
	return 25*owned;
}

/**
 Method to calculate the number of spaces owned
 
 ?? Interesting Monopoly question I can't find answer to. The RR cards don't specifically say that the 
 'owner' must be the same person. I've never played like that and I think its valid to make the assumption
 that when tallying the #'owned' its how many that specific owner owns, not just how many are owned in general. Rent cards
 make specific mention that the user 'has to own all in same color-group'. Just thought it was interesting...
 @return int representing how many spaces are owned
 */
-(int)getNumOwned{
	int numOwned = 0;
	if(owner){
		numOwned++;
	}
	for(id space in relatedSpaces){
		if([space owner]){
			numOwned++;
		}
	}
	return numOwned;
}

@end
