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
}
@property (copy) NSString* title;
@property (retain) GameBoardSpace* currentSpace;

-(id)initWithTitle:(NSString*)name;

@end
