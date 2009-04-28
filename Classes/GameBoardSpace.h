//
//  GameBoardSpace.h
//  Monopoly
//
//

#import <Foundation/Foundation.h>
@class Player;
@class GameBoard; //trust me compiler

@interface GameBoardSpace : NSObject {
	NSString* title;
}

-(void)performSpaceActionsWithBoard:(GameBoard*)board AndPlayer:(Player*)player;
-(id)initWithTitle:(NSString*)t;

@property(copy) NSString* title;

@end
