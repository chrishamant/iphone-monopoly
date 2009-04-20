//
//  Player.h
//  Monopoly
//
//  Created by Chris Hamant on 4/5/09.
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
