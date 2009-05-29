//
//  UtilityBoardSpace.h
//  Monopoly
//
//

#import "PropertyBoardSpace.h"

@interface UtilityBoardSpace : PropertyBoardSpace{
	
}

-(id)initFromDict:(NSDictionary*) dict;
-(int)calcRentWithRoll:(int)roll;

@end
