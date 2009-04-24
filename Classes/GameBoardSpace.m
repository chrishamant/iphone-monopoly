//
//  GameBoardSpace.m
//  Monopoly
//
//

#import "GameBoardSpace.h"


@implementation GameBoardSpace

-(id)init{
	if(self = [super init]){
		[self setTitle:@"a space"];
	}
	return self;
}

@synthesize title;

@end
