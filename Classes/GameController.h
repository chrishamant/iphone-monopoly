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


#import <Foundation/Foundation.h>
#import "GameBoardSpace.h"
#import "GameBoard.h"
#import "Player.h"
#import "Die.h"


@interface GameController : NSObject {
	NSArray* players;
	GameBoard* board;
}

//@property(nonatomic) GameState state;

-(Roll)rollDice;
-(id)initWithPlayers:(NSArray*)players;
-(IBAction) playerTakeTurn:(id)sender;
-(void)startGame;

@end