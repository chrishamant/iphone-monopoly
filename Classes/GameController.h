//
//  GameController.h
//  Monopoly
//
//  Created by Chris Hamant on 4/9/09.
//

#import <Foundation/Foundation.h>
#import "GameBoardSpace.h"
#import "Player.h"
#import "GameBoard.h"
#import "Die.h"
#import "GameControllerDelegate.h"

typedef struct{
	int r1;
	int r2;
} Roll;

typedef struct{
	Player* currentPlayer;
} GameState;

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