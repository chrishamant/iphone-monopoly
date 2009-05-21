//
//  GameBoardSpace.h
//  Monopoly
//
//

#import <Foundation/Foundation.h>

typedef enum{
	REGULAR,
	RAILROAD,
	UTILITY,
	IMPROVABLE,
	ACTION
} BoardSpaceType;

@class Player;
@class GameBoard; //trust me compiler

@interface GameBoardSpace : NSObject {
	NSString* title;
	BoardSpaceType spaceType;
}

-(void)performSpaceActionsWithBoard:(GameBoard*)board AndPlayer:(Player*)player;
-(id)initWithTitle:(NSString*)t;

@property(copy) NSString* title;

@end

@protocol ActionBoardSpace
-(void)performActionWithPlayer:(Player*)p andBoard:(GameBoard*)board;
@end