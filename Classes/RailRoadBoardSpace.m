//
//  RailRoadBoardSpace.m
//  Monopoly
//
//

#import "RailRoadBoardSpace.h"


@implementation RailRoadBoardSpace

-(id)initFromDict:(NSDictionary*) dict{
	if(self = [super initFromDict:dict]){
		spaceType = RAILROAD;
	}
	return self;
}

-(int)calcRent{
	int owned = [self getNumOwned];
	//assert valid range
	assert(0 < owned < 5);
	return 25*owned;
}

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
