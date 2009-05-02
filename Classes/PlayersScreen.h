//
//  PlayersScreen.h
//  Monopoly
//
//

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
