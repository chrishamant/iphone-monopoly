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
	id space;
} PlayerGameTurn;

typedef struct{
	Player* p;
	int sale;
} AuctionWinner;

@protocol GameUIDelegate;

@interface GameController : NSObject {
	NSArray* players;
	Player* currentPlayer;
	GameBoard* board;
	id<GameUIDelegate> delegate;
}


-(Roll)rollDice;
-(id)initWithPlayers:(NSArray*)players;
-(Player*)currentPlayer;
-(PlayerGameTurn)playerTakeTurn;

@property(retain) GameBoard* board;
@property(retain) NSArray* players;
@property(retain,readonly) Player* currentPlayer;
@property(assign) id<GameUIDelegate> delegate;

@end

@protocol GameUIDelegate
-(BOOL)doesPlayer:(Player*)p wantProperty:(ImprovablePropertySpace*)prop;
//assert return sale is  > 0 and p exists
-(AuctionWinner) wellWhoWantsProperty:(ImprovablePropertySpace*)prop;
@end

