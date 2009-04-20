//
//  PlayerNames.h
//  Monopoly
//
//  Created by Chris Hamant on 4/12/09.
//

#import <UIKit/UIKit.h>
#import "GameController.h"

@interface PlayerNames : UIViewController<UITextFieldDelegate> {
	int numPlayers;
	NSMutableArray *playernames;
//	UIScrollView *playerlist;
}


@property (nonatomic, retain) NSMutableArray* playernames;
//@property (nonatomic, retain) IBOutlet UIScrollView* playerlist;

- (id)initWithNumPlayers:(int)num;
- (IBAction)startGame:(id)sender;

@end
