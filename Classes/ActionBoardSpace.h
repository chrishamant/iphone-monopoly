//
//  ActionBoardSpace.h
//  Monopoly
//
//

#import <Foundation/Foundation.h>
#import "GameBoardSpace.h"
@class Player;
@class GameBoard;

@interface ActionBoardSpace : GameBoardSpace {

}

-(void)performActionWithPlayer:(Player*)p;

@end
