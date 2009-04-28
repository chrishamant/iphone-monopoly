//
//  GameBoardSpace.m
//  Monopoly
//
//

#import "GameBoardSpace.h"


@implementation GameBoardSpace

-(id)initWithTitle:(NSString*)t{
	if(self = [super init]){
		[self setTitle:t];
	}
	return self;
}

-(void)performSpaceActionsWithBoard:(GameBoard*)board AndPlayer:(Player*)player{
	;
	//stubbing for now
}

@synthesize title;

@end
