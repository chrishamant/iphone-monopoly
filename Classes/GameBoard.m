//
//  GameBoard.m
//  Monopoly
//
//  Created by Chris Hamant on 4/5/09.
//

#import "GameBoard.h"


@implementation GameBoard

-(GameBoardSpace*) getNewSpace:(GameBoardSpace*)fromSpace :(int)numSpaces{
	int currIndex = [spaces indexOfObject: fromSpace];
	int newIndex = (currIndex + numSpaces) % 39;
	return [spaces objectAtIndex:newIndex];
}

-(id) init{
	self = [super init];
	spaces = [[NSMutableArray alloc] init];
	
	//need to get better way of doing this... will need more info later
	//core data?
	for(int i=0;i<40;i++){
		[spaces insertObject:[[GameBoardSpace alloc] init] atIndex:i];
	}
	
	return self;
}

@end
