/**
 @class Player
 @file Player.h
 @author Chris Hamant
 
 Class to represent a player in a Monopoly game
 */

#import "Player.h"


@implementation Player

@synthesize title;
@synthesize currentSpace;
@synthesize token;
@synthesize cash;

/**
 Constructor

 @param name of player
 @return point to self
 */
-(id)initWithTitle:(NSString*)name{
	if(self = [super init]){
		[self setTitle:name];
		getOutofJailFree = NO;
	}
	return self;
}

/**
 Method to pay money to bank. 
 */
-(void)payToBank:(int)amount{
	NSLog(@"paying %x to bank.",amount);
}

/**
 Destructor
 */
- (void)dealloc {
    [super dealloc];
	[title release];
	[currentSpace release];
	[token release];
}

@end
