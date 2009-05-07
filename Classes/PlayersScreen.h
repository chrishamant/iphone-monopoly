/**
 @file PlayersScreen.h
 @author Chris Hamant
 @class PlayersScreen

 @brief Control class for PlayerScreen.xib
 Class used to control and interact with the PlayerScreen.xib GUI interface.

*/

#import <UIKit/UIKit.h>
@class Player;
@class PlayerScreenDetail;

@interface PlayersScreen : UIViewController<UITableViewDelegate,UITableViewDataSource> {
	IBOutlet UINavigationController* nav;
	IBOutlet UITableViewController* tableview;
	NSArray* players;
}

@property(retain,nonatomic) NSArray* players;

@end
