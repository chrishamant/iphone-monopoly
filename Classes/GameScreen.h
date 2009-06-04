/**
 @class GameScreen
 @file GameScreen.h
 @author Chris Hamant
 
 @brief GUI Screen controller
 
 Screen that controls the main game state throughout the lifecycle
 */
#import <UIKit/UIKit.h>
#import "GameController.h"
#import "GameTurn.h"

@interface GameScreen : UIViewController<GameTurnDelegate , GameUIDelegate, UIActionSheetDelegate> {
	GameController* game;
	IBOutlet UILabel* playerName;
	IBOutlet UILabel* currentSpace;
	IBOutlet UILabel* rent;
	IBOutlet UILabel* rolled;
	IBOutlet UILabel* landedSpaced;
	GameTurn *currentTurn;
}

@property(retain) GameController* game;

-(id)initWithGame:(GameController*)g;
-(IBAction)rollAction:(id)sender;
-(void)updateDisplay;
@end
