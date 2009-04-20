//
//  MonopolyGame.h
//  Monopoly
//
//  Created by Chris Hamant on 4/20/09.
//

#import <UIKit/UIKit.h>


@interface MonopolyGame : UIViewController {
	NSMutableArray* players;
}

@property(retain,nonatomic) NSMutableArray* players;

- (id)initWithNibNameAndPlayers:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil players:(NSMutableArray*) players;


@end
