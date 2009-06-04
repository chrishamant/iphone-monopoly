/**
 @class PropertyBoardSpace
 @file PropertyBoardSpace.h
 @author Chris Hamant
 
 'Abstract' Base class for spaces that could be 'owned'
 */

#import "GameBoardSpace.h"
@class Player;

@interface PropertyBoardSpace : GameBoardSpace {
	int cost;
	NSArray* relatedSpaces;
	Player* owner;
}

-(int)calcRent;
-(id)initFromDict:(NSDictionary*) dict;
-(BOOL)isOwned;

@property int cost;
@property(retain,nonatomic) NSArray* relatedSpaces;
@property(retain,nonatomic) Player* owner;
@end
