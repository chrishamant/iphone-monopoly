//
//  UtilityBoardSpace.m
//  Monopoly
//
//

#import "UtilityBoardSpace.h"


@implementation UtilityBoardSpace

-(id)initFromDict:(NSDictionary*) dict{
	if(self = [super initFromDict:dict]){
		spaceType = UTILITY;
	}
	return self;
}

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
