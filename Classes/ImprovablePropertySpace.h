//
//  ImprovablePropertySpace.h
//  Monopoly
//
//

#import <Foundation/Foundation.h>
#import "PropertyBoardSpace.h"

@interface ImprovablePropertySpace : PropertyBoardSpace {
	UIColor* color;
	NSArray* rent;
	
}

-(id)initFromDict:(NSDictionary*) dict;

@property(retain,nonatomic) UIColor* color;
@end
