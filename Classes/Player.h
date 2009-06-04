/**
 @class Player
 @file Player.h
 @author Chris Hamant
 
 Class to represent a player in a Monopoly game
 */

#import <Foundation/Foundation.h>
#import "GameBoardSpace.h"

@interface Player : NSObject {
	NSString* title;
	GameBoardSpace* currentSpace;
	UIImage* token;
	int cash;
	BOOL getOutofJailFree;
}
@property (copy) NSString* title;
@property int cash;
@property (retain) GameBoardSpace* currentSpace;
@property (retain) UIImage* token;

-(id)initWithTitle:(NSString*)name;

-(void)payToBank:(int)amount;
@end
