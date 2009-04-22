//
//  GameControllerDelegate.h
//  Monopoly
//
//

@class GameController;

@protocol GameControllerDelegate<NSObject>

//required protocols
//should return index of string from Array. Strings in array represent possible 'methods' user can choose for turn
//TODO find out if there is a way to use NSInvocation objects instead of strings. This way we may know more about actions.
- (int)choosePlayerTurnAction:(NSArray*)actions roll:(int)rollIndex player:(Player*) player;

//expected that UI will display the whole board somehow
-(void)displayBoard;

//should show game stats
-(void)displayGameStats;

-(void)setState:(GameController*)board availableActions:(NSArray*)actions;

@end

