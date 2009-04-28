//
//  GameBoard.m
//  Monopoly
//
//

#import "GameBoard.h"


@implementation GameBoard
@synthesize spaces;

-(GameBoardSpace*) getNewSpace:(GameBoardSpace*)fromSpace rolling:(int)numSpaces{
	NSUInteger currIndex = [spaces indexOfObject: fromSpace];
	NSUInteger newIndex = (currIndex + numSpaces) % 39;
	return [spaces objectAtIndex:newIndex];
}

-(id) init{
	self = [super init];
	
	[self setSpaces:[NSMutableArray arrayWithCapacity:40]];
	//need to get better way of doing this... will need more info later
	//read from plist
	for(int i=0;i<40;i++){
		[spaces insertObject:[[GameBoardSpace alloc] init] atIndex:i];
	}
	
	return self;
}

@end
