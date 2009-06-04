/**
 @class GameBoardSpace
 @file GameBoardSpace.h
 @author Chris Hamant
 
 Base class for all types of spaces on the board.
 */

#import <Foundation/Foundation.h>

/**
 Enum type to give class
 */
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
@property BoardSpaceType spaceType;
@end

@protocol ActionBoardSpace
-(void)performActionWithPlayer:(Player*)p andBoard:(GameBoard*)board;
@end