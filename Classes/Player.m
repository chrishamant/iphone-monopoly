//
//  Player.m
//  Monopoly
//
//  Created by Chris Hamant on 4/5/09.
//

#import "Player.h"


@implementation Player

@synthesize title;
@synthesize currentSpace;

-(id)initWithTitle:(NSString*)name{
	if(self = [super init]){
		[self setTitle:name];
	}
	return self;
}

@end
