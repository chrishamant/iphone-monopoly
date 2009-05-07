//
//  GameScreen.h
//  Monopoly
//
//

#import <UIKit/UIKit.h>
#import "GameController.h"
#import "GameTurn.h"

@interface GameScreen : UIViewController<GameTurnDelegate> {
	GameController* game;
	IBOutlet UILabel* playerName;
	IBOutlet UILabel* currentSpace;
	IBOutlet UILabel* rent;
	GameTurn *currentTurn;
}

@property(retain) GameController* game;

-(id)initWithGame:(GameController*)g;
-(IBAction)rollAction:(id)sender;
-(void)updateDisplay;
@end
