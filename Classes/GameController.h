//
//  GameController.h
//  Monopoly
//
//  Created by Chris Hamant on 4/9/09.
//

#import <Foundation/Foundation.h>
#import "GameControllerDelegate.h"
#import "GameBoardSpace.h"
#import "Player.h"
#import "GameBoard.h"
#import "Die.h"

@interface GameController : NSObject {
	id<GameControllerDelegate> delegateController;
	NSArray* players;
	GameBoard* board;
}
-(int)rollDice;
-(id)initWithPlayers:(NSArray*)players andUI:(id<GameControllerDelegate>) theDelgateController;
-(void)startGame;

@end
