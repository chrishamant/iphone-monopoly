/**
 @class GameTurn
 @file GameTurn.h
 @author Chris Hamant
 
 @brief GUI Screen controller
 
 This is a GUI class used to display the information resulting from a 'turn'

 */
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

/**
 Method that triggers the 'turnComplete' method on the delegate
 */
- (IBAction)done;

/**
 Constructor
 
 @param t - PlayerGameTurn struct withpointers to needed info
 @return pointer to self
 */
- (id)initWithTurn:(PlayerGameTurn)t;
@end

/**
 @protocol GameTurnDelegate
 
 Delegate used to complete the turn.
 */
@protocol GameTurnDelegate
- (void)turnComplete:(GameTurn*)controller;
@end