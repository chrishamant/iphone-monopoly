/**
 @class GameStartupScreen
 @file GameStartupScreen.h
 @author Chris Hamant
 
 @brief Initial Game Screen
 
 Screen that exists upon inital load
 */

#import "MonopolyAppDelegate.h"
#import <UIKit/UIKit.h>
#import "Player.h"
#import "GameController.h"
#import "PreGameSettings.h"

@interface GameStartupScreen : UIViewController<PreGameDelegate> {
	NSMutableArray* players;
	IBOutlet MonopolyAppDelegate* theapp;
	PreGameSettings *pregame;
}

@property (nonatomic, retain) NSMutableArray* players;

- (IBAction)playerOptions:(id)sender;
- (IBAction)startMonopolyGame:(id)sender;

@end
