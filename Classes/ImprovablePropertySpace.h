//
//  ImprovablePropertySpace.h
//  Monopoly
//
//

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
