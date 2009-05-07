//
//  GameTurn.h
//  Monopoly
//
//

#import <UIKit/UIKit.h>
#import "GameController.h"
@protocol GameTurnDelegate;


@interface GameTurn : UIViewController {
	id <GameTurnDelegate> delegate;
	PlayerGameTurn turn;
	IBOutlet UILabel* rolled;
	IBOutlet UILabel* landed;
}

@property (nonatomic, assign) id <GameTurnDelegate> delegate;

- (IBAction)done;
- (id)initWithTurn:(PlayerGameTurn)t;
@end

@protocol GameTurnDelegate
- (void)turnComplete:(GameTurn*)controller;
@end