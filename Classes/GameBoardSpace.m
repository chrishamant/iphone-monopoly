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

-(void)performSpaceActionsWith:(GameBoard*)board:AndPlayer:(Player*)player{
	;
	//stubbing for now
}

@synthesize title;

@end
