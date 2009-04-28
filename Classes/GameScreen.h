//
//  GameScreen.h
//  Monopoly
//
//

#import <UIKit/UIKit.h>
#import "GameController.h"

@interface GameScreen : UIViewController {
	GameController* game;
	IBOutlet UILabel* playerName;
	IBOutlet UILabel* currentSpace;
	IBOutlet UILabel* actionResult;
}

@property(retain) GameController* game;

-(id)initWithGame:(GameController*)g;
-(IBAction)rollAction:(id)sender;
-(void)updateDisplay;
@end
