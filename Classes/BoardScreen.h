/**
 @file BoardScreen.h
 @author Chris Hamant
 @class PlayersScreen
 
 @brief Control class for BoardScreen.xib
 Class used to control and interact with the BoardScreen.xib GUI interface.
 
 */
#import <UIKit/UIKit.h>


@interface BoardScreen : UIViewController<UIScrollViewDelegate> {
	IBOutlet UIImageView* board;
	IBOutlet UIScrollView* scrollview;
}

@end
