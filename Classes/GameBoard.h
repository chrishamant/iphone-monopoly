//
//  GameBoard.h
//  Monopoly
//
//

#import <Foundation/Foundation.h>
#import "GameBoardSpace.h"
#import "PropertyBoardSpace.h"
#import "ImprovablePropertySpace.h"

@interface GameBoard : NSObject{
	NSArray* spaces;
}

@property(nonatomic,retain) NSArray* spaces;

-(GameBoardSpace*)getNewSpace:(GameBoardSpace*)fromSpace rolling:(int)numSpaces;
-(void)getSpacesFromStore;
-(id)getPropertySpaceFromDict:(NSDictionary*)dict;
@end
