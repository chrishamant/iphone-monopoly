//
//  GameBoard.h
//  Monopoly
//
//  Created by Chris Hamant on 4/5/09.
//

#import <Foundation/Foundation.h>
#import "GameBoardSpace.h"

@interface GameBoard : NSObject{
	NSMutableArray* spaces;
}

@property(nonatomic,retain) NSMutableArray* spaces;

-(GameBoardSpace*)getNewSpace:(GameBoardSpace*)fromSpace rolling:(int)numSpaces;

@end
