//
//  PropertyBoardSpace.h
//  Monopoly
//
//

#import "GameBoardSpace.h"
@class Player;

@interface PropertyBoardSpace : GameBoardSpace {
	int cost;
	NSArray* relatedSpaces;
	Player* owner;
}

-(int)calcRent;
-(id)initFromDict:(NSDictionary*) dict;

@property int cost;
@property(retain,nonatomic) NSArray* relatedSpaces;
@property(retain,nonatomic) Player* owner;
@end
