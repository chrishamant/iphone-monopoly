//
//  PlayerScreenDetail.h
//  Monopoly
//
//  Created by Chris Hamant on 5/2/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Player;

@interface PlayerScreenDetail : UIViewController {
	Player* player;
	IBOutlet UILabel* titleLabel;
	IBOutlet UILabel* spaceLabel;
}

- (id)initWithPlayer:(Player*)p;

@property(retain,nonatomic) Player* player;
@end
