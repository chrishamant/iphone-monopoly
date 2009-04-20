//
//  GameStartupScreen.h
//  Monopoly
//
//  Created by Chris Hamant on 4/20/09.
//

#import <UIKit/UIKit.h>
#import "Player.h"
#import "MonopolyGame.h"

@interface GameStartupScreen : UIViewController {
	NSMutableArray* players;
}

@property (nonatomic, retain) NSMutableArray* players;

- (IBAction)playerOptions:(id)sender;
- (IBAction)startMonopolyGame:(id)sender;

@end
