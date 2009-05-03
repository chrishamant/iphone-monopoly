//
//  PropertyBoardSpace.h
//  Monopoly
//
//

#import <Foundation/Foundation.h>
#import "GameBoardSpace.h"

@interface PropertyBoardSpace : GameBoardSpace {
	int cost;
	NSArray* relatedSpaces;
}

-(int)calcRent;
-(id)initFromDict:(NSDictionary*) dict;

@property int cost;
@property(retain,nonatomic) NSArray* relatedSpaces;
@end
