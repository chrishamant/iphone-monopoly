//
//  MonopolyGame.h
//  Monopoly
//
//  Created by Chris Hamant on 4/20/09.
//

#import <UIKit/UIKit.h>
#import "GameController.h"

@interface MonopolyGame : UITabBarController {
	GameController* game;
	UITabBarItem* gameScreen;
	UITabBarItem* boardScreen;
	UITabBarItem* statsScreen;
}

@property(retain,nonatomic) IBOutlet GameController* game;
@property(retain,nonatomic) IBOutlet UITabBarItem* gameScreen;
@property(retain,nonatomic) IBOutlet UITabBarItem* boardScreen;
@property(retain,nonatomic) IBOutlet UITabBarItem* statsScreen;

- (id)initWithPlayers:(NSMutableArray*)players;

@end
