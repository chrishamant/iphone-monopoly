//
//  Player.h
//  Monopoly
//
//

#import <Foundation/Foundation.h>
#import "GameBoardSpace.h"

@interface Player : NSObject {
	NSString* title;
	GameBoardSpace* currentSpace;
	UIImage* token;
	int cash;
}
@property (copy) NSString* title;
@property int cash;
@property (retain) GameBoardSpace* currentSpace;
@property (retain) UIImage* token;

-(id)initWithTitle:(NSString*)name;

@end
