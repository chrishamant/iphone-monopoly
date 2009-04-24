//
//  MonopolyGame.h
//  Monopoly
//
//  Created by Chris Hamant on 4/20/09.
//

#import <UIKit/UIKit.h>
#import "GameController.h"

@interface MonopolyGame : UIViewController {
	GameController* game;
}

@property(retain,nonatomic) IBOutlet GameController* game;

- (id)initWithPlayers:(NSMutableArray*)players;

@end
