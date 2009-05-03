//
//  ImprovablePropertySpace.h
//  Monopoly
//
//

#import <Foundation/Foundation.h>
#import "PropertyBoardSpace.h"

@interface ImprovablePropertySpace : PropertyBoardSpace {
	NSString* color; //until I can figure out wtf is wrong with NSColor
}

-(id)initFromDict:(NSDictionary*) dict;

@property(retain,nonatomic) NSString* color;
@end
