//
//  PlayersScreen.h
//  Monopoly
//
//

#import <UIKit/UIKit.h>


@interface PlayersScreen : UIViewController<UITableViewDelegate> {
	IBOutlet UINavigationController* nav;
	IBOutlet UITableViewController* tableview;
}

@end
