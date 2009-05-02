//
//  BoardScreen.h
//  Monopoly
//
//  Created by Chris Hamant on 4/24/09.
//

#import <UIKit/UIKit.h>


@interface BoardScreen : UIViewController<UIScrollViewDelegate> {
	IBOutlet UIImageView* board;
	IBOutlet UIScrollView* scrollview;
}

@end
