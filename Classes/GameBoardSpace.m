//
//  GameBoardSpace.m
//  Monopoly
//
//  Created by Chris Hamant on 4/5/09.
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
