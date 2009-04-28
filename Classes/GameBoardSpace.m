//
//  GameBoardSpace.m
//  Monopoly
//
//

#import "GameBoardSpace.h"


@implementation GameBoardSpace
@synthesize title;

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



@end
