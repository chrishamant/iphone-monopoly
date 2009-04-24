//
//  GameStartupScreen.h
//  Monopoly
//
//

#import "MonopolyAppDelegate.h"
#import <UIKit/UIKit.h>
#import "Player.h"
#import "GameController.h"


@interface GameStartupScreen : UIViewController {
	NSMutableArray* players;
	IBOutlet MonopolyAppDelegate* theapp;
}

@property (nonatomic, retain) NSMutableArray* players;

- (IBAction)playerOptions:(id)sender;
- (IBAction)startMonopolyGame:(id)sender;

@end
