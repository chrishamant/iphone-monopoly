#import <Foundation/Foundation.h>
#import "GameBoardSpace.h"
#import "PropertyBoardSpace.h"
#import "ImprovablePropertySpace.h"


/**
 @file GameBoard.h
 @class GameBoard
 
 Represents a Game Board. This is a sequenctial series of Polymorphic GameBoardSpaces that indicate
 'landing' spaces on the board. The board doesn't technically assume any size and is currently
 instantiated using a XML/Plist file.
 */
@interface GameBoard : NSObject{
	///Array of GameBoardSpaces
	NSArray* spaces;
}

@property(nonatomic,retain) NSArray* spaces;

//Note - methods documented in implementation file

-(GameBoardSpace*)getNewSpace:(GameBoardSpace*)fromSpace rolling:(int)numSpaces;
-(void)getSpacesFromStore;

@end
