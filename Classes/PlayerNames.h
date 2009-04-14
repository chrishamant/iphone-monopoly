//
//  PlayerNames.h
//  Monopoly
//
//  Created by Chris Hamant on 4/12/09.
//

#import <UIKit/UIKit.h>


@interface PlayerNames : UIViewController {
	UITextField* player1;
	UITextField* player2;
	UITextField* player3;
	UITextField* player4;
	UITextField* player5;
	UITextField* player6;
	UITextField* player7;
	UITextField* player8;
	int numPlayers;
}
@property (nonatomic, retain) IBOutlet UITextField* player1;
@property (nonatomic, retain) IBOutlet UITextField* player2;
@property (nonatomic, retain) IBOutlet UITextField* player3;
@property (nonatomic, retain) IBOutlet UITextField* player4;
@property (nonatomic, retain) IBOutlet UITextField* player5;
@property (nonatomic, retain) IBOutlet UITextField* player6;
@property (nonatomic, retain) IBOutlet UITextField* player7;
@property (nonatomic, retain) IBOutlet UITextField* player8;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil numPlayers:(int)num;
@end
