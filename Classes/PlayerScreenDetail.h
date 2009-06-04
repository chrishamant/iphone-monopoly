/**
 @class PlayerScreenDetail
 @file PlayerScreenDetail.h
 @author Chris Hamant
 
 View that displays more detailed information about users
 */

#import <UIKit/UIKit.h>
@class Player;

@interface PlayerScreenDetail : UIViewController {
	Player* player;
	IBOutlet UILabel* titleLabel;
	IBOutlet UILabel* spaceLabel;
	IBOutlet UILabel* money;
}

- (id)initWithPlayer:(Player*)p;

@property(retain,nonatomic) Player* player;
@end
