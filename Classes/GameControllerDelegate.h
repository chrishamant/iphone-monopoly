//
//  GameControllerProtocol.h
//  Monopoly
//
//  Created by Chris Hamant on 4/9/09.
//

#import "GameBoard.h"
#import "Player.h"

@protocol GameControllerDelegate <NSObject>
//required protocols

//should return index of string from Array. Strings in array represent possible 'methods' user can choose for turn
//TODO find out if there is a way to use NSInvocation objects instead of strings. This way we may know more about actions.
- (int)choosePlayerTurnAction:(NSArray*)strings roll:(int)rollIndex player:(Player*) player;
//expected that UI will display the whole board somehow
-(void)displayBoard:(GameBoard*)board;


@end

/*
Here I'm listing what I'll call 'informal' protocols. In my 'model' controllers these might be called to provide information
 that UI may or may not want to display.
 
-(void)playerRolled(int);

 
 */
