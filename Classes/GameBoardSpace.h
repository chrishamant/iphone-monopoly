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

-(void)performSpaceActionsWith:(GameBoard*)board:AndPlayer:(Player*)player;

@property (copy) NSString* title;

@end
