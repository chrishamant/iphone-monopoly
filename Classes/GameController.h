//
//  GameController.h
//  Monopoly
//
//  Created by Chris Hamant on 4/9/09.
//

typedef struct{
	int r1;
	int r2;
} Roll;

typedef struct{
	id currentPlayer;
} GameState;

#import <Foundation/Foundation.h>
#import "GameBoardSpace.h"
#import "Player.h"
#import "GameBoard.h"
#import "Die.h"
#import "GameControllerDelegate.h"

@interface GameController : NSObject {
	id<GameControllerDelegate> delegateController;
	NSArray* players;
	GameBoard* board;
}

//@property(nonatomic) GameState state;

-(Roll)rollDice;
-(id)initWithPlayers:(NSArray*)players andUI:(id<GameControllerDelegate>) del;
-(void)startGame;

@end