//
//  Player.m
//  Monopoly
//
//

#import "Player.h"


@implementation Player

@synthesize title;
@synthesize currentSpace;
@synthesize token;

-(id)initWithTitle:(NSString*)name{
	if(self = [super init]){
		[self setTitle:name];
	}
	return self;
}

@end
