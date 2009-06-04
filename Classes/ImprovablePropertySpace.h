/**
 @class ImprovablePropertySpace
 @file ImprovablePropertySpace.h
 @author Chris Hamant
 
 Class used to represent a 'color-group' space on a Monopoly GameBoard
 */

#import "PropertyBoardSpace.h"

@interface ImprovablePropertySpace : PropertyBoardSpace {
	UIColor* color;
	NSArray* rent;
	uint houseCost;
	uint numHouses;
}

-(id)initFromDict:(NSDictionary*) dict;
-(BOOL)isMonopoly;


@property(retain,nonatomic) UIColor* color;
@property(retain,nonatomic) NSArray* rent;

@end
