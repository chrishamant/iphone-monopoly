//
//  GameBoardSpace.m
//  Monopoly
//
//

#import "GameBoardSpace.h"


@implementation GameBoardSpace
@synthesize title;
@synthesize spaceType;

-(id)initWithTitle:(NSString*)t{
	if(self = [super init]){
		[self setTitle:t];
		spaceType = REGULAR;
	}
	return self;
}

-(void)performSpaceActionsWithBoard:(GameBoard*)board AndPlayer:(Player*)player{
	//this general space actions should be like income tax or something
}

- (void)dealloc {
    [super dealloc];
	[title release];
}


@end
