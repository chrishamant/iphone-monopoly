//
//  GameController.h
//  Monopoly
//
//

#import <Foundation/Foundation.h>
#import "GameBoardSpace.h"
#import "GameBoard.h"
#import "Player.h"
#import "Die.h"

typedef struct{
	int r1;
	int r2;
} Roll;

typedef struct{
	Roll roll;
	Player* p;
} PlayerGameTurn;

@interface GameController : NSObject {
	NSArray* players;
	Player* currentPlayer;
	GameBoard* board;
}


-(Roll)rollDice;
-(id)initWithPlayers:(NSArray*)players;
-(Player*)currentPlayer;
-(PlayerGameTurn)playerTakeTurn;

@property(retain) GameBoard* board;
@property(retain) NSArray* players;
@property(retain,readonly) Player* currentPlayer;

@end