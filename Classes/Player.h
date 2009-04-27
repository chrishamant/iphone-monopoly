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
}
@property (copy) NSString* title;
@property (retain) GameBoardSpace* currentSpace;
@property (retain) UIImage* token;

-(id)initWithTitle:(NSString*)name;

@end
