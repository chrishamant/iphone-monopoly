//
//  PropertyBoardSpace.h
//  Monopoly
//
//

#import <Foundation/Foundation.h>
#import "GameBoardSpace.h"

@interface PropertyBoardSpace : GameBoardSpace {
	NSInteger* cost;
	NSArray* relatedSpaces;
}

-(int)calcRent;

@end
