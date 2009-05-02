//
//  GameController.h
//  Monopoly
//
//

typedef struct{
	int r1;
	int r2;
} Roll;


#import <Foundation/Foundation.h>
#import "GameBoardSpace.h"
#import "GameBoard.h"
#import "Player.h"
#import "Die.h"


@interface GameController : NSObject {
	NSArray* players;
	Player* currentPlayer;
	GameBoard* board;
}


-(Roll)rollDice;
-(id)initWithPlayers:(NSArray*)players;
-(Player*)currentPlayer;
-(void)playerTakeTurn;

@property(retain) GameBoard* board;
@property(retain) NSArray* players;
@property(retain,readonly) Player* currentPlayer;

@end