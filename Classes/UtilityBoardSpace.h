/**
 @class UtilityBoardSpace
 @file UtilityBoardSpace.h
 @author Chris Hamant
 
 Class used to represent the two Utility spaces on a Monopoly Board
 */

#import "PropertyBoardSpace.h"

@interface UtilityBoardSpace : PropertyBoardSpace{
	
}

-(id)initFromDict:(NSDictionary*) dict;
-(int)calcRentWithRoll:(int)roll;

@end
